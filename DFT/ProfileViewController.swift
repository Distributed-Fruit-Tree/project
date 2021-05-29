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
    
    //var profile: PFObject!
    
    func loadProfile(){
        //print(PFUser.current()?.username)
        let user = PFUser.current()
        print(user)
        let profile = user?["profile"] as? PFObject
        print(profile)
        if(profile != nil){
            
            if ((profile?["bio"]) != nil){
                self.bioLabel.text = profile?["bio"] as? String
            }
            
            if profile?["username"] != nil{
                self.nameLabel.text = profile?["username"] as? String
            }
            
            if profile?["address"] != nil{
                self.addressLabel.text = profile?["address"] as? String
            }

            
            if profile?["fruits"] != nil{
                self.fruitLabel.text = profile?["fruits"] as? String
            }

            // TODO: need to add something to keep track of rating
            self.ratingLabel.text = "5 stars"
            /*
            if profile?["image"] != nil{
                let imageFile = profile?["image"] as! PFFileObject
                let urlString = imageFile.url!
                let url = URL(string: urlString)!
                self.profileImageView.af_setImage(withURL: url)
            }
             */
        }
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        loadProfile()
    }
 
 
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        loadProfile()
    }

}
      


