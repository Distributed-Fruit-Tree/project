//
//  ProfileViewController.swift
//  DFT
//
//  Created by Olivia Gillam on 5/15/21.
//

import UIKit
import Parse
import AlamofireImage
import MessageInputBar



class ProfileViewController: UIViewController {
    
    @IBOutlet weak var bioLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var fruitLabel: UILabel!
    @IBOutlet weak var ratingLabel: UILabel!
    
    @IBOutlet weak var profileImageView: UIImageView!
    
    var profile: PFObject!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        profileImageView.layer.cornerRadius = profileImageView.frame.height / 2
        /*
        let query = PFQuery(className: "Profile")
        query.getObjectInBackground(withId: "") { (profile, error) -> Void in
            
            if profile != nil && error == nil {
                // profile retrieved successfully
                print(profile!["bio"] as! String)
            } else {
                // some error occurred
                print(error)
            }
        }
        */
        let profile = PFUser.current()!
        print(profile)
        let query = PFQuery(className: "Profile")
        query.whereKey("author", equalTo: profile)
        query.findObjectsInBackground { (objects, error) in
            if error != nil {
                print(error)
            } else {
                if let users = objects {
                    for user in users {
                        print(user)
                        self.bioLabel.text = user["bio"] as? String
                        self.nameLabel.text = user["username"] as? String
                        self.addressLabel.text = user["address"] as? String
                        self.fruitLabel.text = user["fruits"] as? String
                        self.ratingLabel.text = user["rating"] as? String
                        // self.profileImageView.image = user["image"] as? UIImage
                        let file = user["image"] as! PFFileObject
                        file.getDataInBackground(block: { (data, error) -> Void in
                            
                            if error == nil {
                                if let imagedata = data {
                                    // successfully retrieved the data
                                    let image = UIImage(data: imagedata)
                                    
                                    self.profileImageView.image = image
                                }
                            }
                            
                        })
                    }
                }
            }
        }

        
        
        /*
        let profile = PFUser.current()!["profile"] as? PFObject
        if(profile != nil){
            if profile?["bio"] != nil{
                self.bioLabel.text = profile?["bio"] as! String
            }
            else{
                self.bioLabel.text = "this user has not updated their bio"
            }
            
            if profile?["username"] != nil{
                self.nameLabel.text = profile?["username"] as! String
            }
            else{
                self.nameLabel.text = "this user has not updated their username"
            }
            
            if profile?["address"] != nil{
                self.addressLabel.text = profile?["address"] as! String
            }
            else{
                self.addressLabel.text = "this user has not updated their address"
            }
            
            if profile?["fruit"] != nil{
                self.fruitLabel.text = profile?["fruit"] as! String
            }
            else{
                self.fruitLabel.text = "this user has not listed any fruits"
            }
            // TODO: need to add something to keep track of rating
            self.ratingLabel.text = "5 stars"
            
            if profile?["image"] != nil{
                let imageFile = profile?["image"] as! PFFileObject
                let urlString = imageFile.url!
                let url = URL(string: urlString)!
                self.profileImageView.af_setImage(withURL: url)
            }
        }
 */
    }
}
      


