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
      


