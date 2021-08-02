//
//  mapViewController.swift
//  DFT
//
//  Created by Brian Ozawa Burns on 5/22/21.
//

import UIKit
import MapKit
import CoreLocation

class mapViewController: UIViewController {
    
    @IBOutlet weak var goButtonView: UIView!
    @IBOutlet weak var addressView: UIView!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var mapView: MKMapView!
    
    let locationManager = CLLocationManager()
    let regionInMeters: Double = 4400
    var previousLocation: CLLocation?
    
    let geoCoder = CLGeocoder()
    var directionsArray: [MKDirections] = []
    var tapLocation = CGPoint.init()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //addressLabel.text = "updating address..."
        setupLayoutView()
        // check to make sure user allows location use
        checkLocationServices()
    }
    
    // location permission stuff
    func setupLocationManager() {
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
    }
    // zoom map view onto where user is located
    func centerViewOnUserLocation() {
        if let location = locationManager.location?.coordinate {
            let region = MKCoordinateRegion.init(center: location, latitudinalMeters: regionInMeters, longitudinalMeters: regionInMeters)
            mapView.setRegion(region, animated: true)
        }
    }
    // check to make sure user allows location use
    func checkLocationServices() {
        if CLLocationManager.locationServicesEnabled() {
            // setup our location manager
            setupLocationManager()
            checkLocationAuthorization()
        } else {
            // show alert letting user know they need to turn this on
        }
    }
    // what to do with certain user location permission
    func checkLocationAuthorization() {
        switch CLLocationManager.authorizationStatus() {
        case .authorizedWhenInUse:
            // do map stuff
            // show little blue icon of where user is located on the map
            startTrackingUserLocation()
        case .denied:
            // show alert instructing user how to turn on permissions
            break
        case .notDetermined:
            // ask permission
            locationManager.requestWhenInUseAuthorization()
            break
        case .restricted:
            // show alert letting user know it's restricted
            break
        case .authorizedAlways:
            break
        @unknown default:
            break
        }
    }
    
    func startTrackingUserLocation() {
        mapView.showsUserLocation = true
        centerViewOnUserLocation()
        locationManager.startUpdatingLocation()
        previousLocation = getCenterLocation(for: mapView)
    }
    
    func getCenterLocation(for mapView: MKMapView) -> CLLocation {
        let latitude = mapView.centerCoordinate.latitude
        let longitude = mapView.centerCoordinate.longitude
        
        return CLLocation(latitude: latitude, longitude: longitude)
    }
    
    func getDirections() {
        guard let location = locationManager.location?.coordinate else {
            return
        }
        
        let request = createDirectionsRequest(from: location)
        let directions = MKDirections(request: request)
        resetMapView(withNew: directions)
        
        directions.calculate { [unowned self] (response, error) in
            
            // to do: handle error
            
            guard let response = response else { return }
            
            for route in response.routes {
                let steps = route.steps
                self.mapView.addOverlay(route.polyline)
                let bound = route.polyline.boundingMapRect
                
                let padding = UIEdgeInsets.init(top: 80, left: 60, bottom: 120, right: 60)
                
                self.mapView.setVisibleMapRect(bound, edgePadding: padding, animated: true)
            }
        }
    }
    
    func createDirectionsRequest(from coordinate: CLLocationCoordinate2D) -> MKDirections.Request {
        // let destinationCoordinate = getCenterLocation(for: mapView).coordinate
        
        let CLLocCoord2D: CLLocationCoordinate2D = self.mapView.convert(self.tapLocation, toCoordinateFrom: nil)
        
        let destinationCoordinate = CLLocCoord2D
        let startingLocation = MKPlacemark(coordinate: coordinate)
        let destination = MKPlacemark(coordinate: destinationCoordinate)
        
        let request = MKDirections.Request()
        request.source = MKMapItem(placemark: startingLocation)
        request.destination = MKMapItem(placemark: destination)
        // request.transportType = .automobile
        request.transportType = .walking
        request.requestsAlternateRoutes = true
        
        return request
    }
    
    func resetMapView(withNew directions: MKDirections) {
        mapView.removeOverlays(mapView.overlays)
        let _ = directionsArray.map { $0.cancel() }
        directionsArray.append(directions)
        
        // directionsArray.removeAll()
    }
    
    @IBAction func goButtonTapped(_ sender: UIButton) {
        getDirections()
    }
    
    func setupLayoutView() {
        addressView.layer.cornerRadius = 10
        addressView.layer.shadowColor = UIColor.black.cgColor
        addressView.layer.shadowOpacity = 0.7
        addressView.layer.shadowOffset = CGSize(width: 0, height: 10)
        addressView.layer.shadowRadius = 10
        
        goButtonView.layer.cornerRadius = goButtonView.frame.size.height/2
        goButtonView.layer.shadowColor = UIColor.black.cgColor
        goButtonView.layer.shadowOpacity = 0.6
        goButtonView.layer.shadowOffset = CGSize(width: 0, height: 4)
        goButtonView.layer.shadowRadius = 4
    }
    
    
    @IBAction func didTapAddIcon(_ sender: UITapGestureRecognizer) {
        
        
        print("...\n...\n...\n...\n...\n...\n...\n")
        self.tapLocation = sender.location(in: self.mapView)
        let CLLocCoord2D: CLLocationCoordinate2D = self.mapView.convert(self.tapLocation, toCoordinateFrom: nil)
        
        let geoCoder = CLGeocoder()
        
        let latitude: Double = CLLocCoord2D.latitude
        let longitude: Double = CLLocCoord2D.longitude
        
        let CLLoc = CLLocation(latitude: latitude, longitude: longitude)
        
        var address = ""
        
        geoCoder.reverseGeocodeLocation(CLLoc, completionHandler: { (placemarks, error) -> Void in
            
            // Place details
            var placeMark: CLPlacemark!
            placeMark = placemarks?[0]
            
            // Location name
            if let locationName = placeMark.location {
                print(locationName)
            }
            
            // Street address
            if let street = placeMark.thoroughfare {
                address += "\(street)"
                print(street)
            }
            
            // City
            if let city = placeMark.locality {
                if address == "" {
                    address += "\(city)"
                } else {
                    address += ", \(city)"
                }
                print(city)
            }
            
            // State
            if let state = placeMark.administrativeArea {
                if address == "" {
                    address += "\(state)"
                } else {
                    address += ", \(state)"
                }
                print(state)
            }
            
            // Zip code
            if let zipCode = placeMark.postalCode {
                print(zipCode)
            }
            
            // Country
            if let country = placeMark.country {
                print(country)
            }
            
            self.addressLabel.text = address
        })
        
        
        
        
        let locCoord = self.mapView.convert(tapLocation, toCoordinateFrom: self.mapView)
        let annotation = MKPointAnnotation()
        annotation.coordinate = locCoord
        annotation.title = "\(address)"
        annotation.subtitle = "\(address)"
        print(address)
        
        self.mapView.removeAnnotations(mapView.annotations)
        self.mapView.addAnnotation(annotation)
    }
}

extension mapViewController: CLLocationManagerDelegate {
    
    /*
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let location = locations.last else { return }
        let center = CLLocationCoordinate2D(latitude: location.coordinate.latitude, longitude: location.coordinate.longitude)
        let region = MKCoordinateRegion.init(center: center, latitudinalMeters: regionInMeters, longitudinalMeters: regionInMeters)
        mapView.setRegion(region, animated: true)
    }
    */
    
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        checkLocationAuthorization()
    }
}

extension mapViewController: MKMapViewDelegate {/*
    func mapView(_ mapView: MKMapView, regionDidChangeAnimated animated: Bool) {
        print("...\n...\n...\n...\n...\n...\n...\n")
        let center = getCenterLocation(for: mapView)
        
        guard let previousLocation = self.previousLocation else { return }
        
        guard center.distance(from: previousLocation) > 50 else { return }
        self.previousLocation = center
        
        geoCoder.cancelGeocode()
        
        geoCoder.reverseGeocodeLocation(center) { [weak self] (placemarks, error) in
            guard let self = self else { return }
            
            if let _ = error {
                // to do: show alert informing the user
                return
            }
            guard let placemark = placemarks?.first else {
                // to do: show alert informing the user
                return
            }
            
            let streetNumber = placemark.subThoroughfare ?? ""
            let streetName = placemark.thoroughfare ?? ""
            let cityName = placemark.locality ?? ""
            
            DispatchQueue.main.async {
                self.addressLabel.text = "\(streetNumber) \(streetName), \(cityName)"
            }
        }
    }*/
    
    func mapView(_ mapView: MKMapView, rendererFor overlay: MKOverlay) -> MKOverlayRenderer {
        mapView.delegate = self
        if overlay.isKind(of: MKPolyline.self) {
            let polyline = overlay
            let renderer = MKPolylineRenderer(polyline: polyline as! MKPolyline)
            renderer.strokeColor = UIColor.blue
            renderer.lineWidth = 4.0
            return renderer
        }
        return MKOverlayRenderer()
    }
}
