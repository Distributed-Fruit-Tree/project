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
        let profile = PFUser.current()!["profile"] as! PFObject
        
        if profile["bio"] != nil{
            self.bioLabel.text = profile["bio"] as! String
        }
        else{
            self.bioLabel.text = "this user has not updated their bio"
        }
        
        if profile["username"] != nil{
            self.nameLabel.text = profile["username"] as! String
        }
        else{
            self.nameLabel.text = "this user has not updated their username"
        }
        
        if profile["address"] != nil{
            self.addressLabel.text = profile["address"] as! String
        }
        else{
            self.addressLabel.text = "this user has not updated their address"
        }
        
        if profile["fruit"] != nil{
            self.fruitLabel.text = profile["fruit"] as! String
        }
        else{
            self.fruitLabel.text = "this user has not listed any fruits"
        }
        // TODO: need to add something to keep track of rating
        self.ratingLabel.text = "5 stars"
        
        if profile["image"] != nil{
            let imageFile = profile["image"] as! PFFileObject
            let urlString = imageFile.url!
            let url = URL(string: urlString)!
            self.profileImageView.af_setImage(withURL: url)
        }
      
        //let profileID = PFUser.current()!["profileID"]  as! String

        /*
        let query = PFQuery(className:"Profile")
        query.getObjectInBackground(withId: profileID) { (profile, error) in
          if error != nil && profile == nil {
            print(error)
          }
          else{
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
        
        
        
        // Do any additional setup after loading the view.
  
    /*
    func messageInputBar(_ inputBar: MessageInputBar, didPressSendButtonWith text: String) {
            //create the comment
            let profile = PFObject(className: "profile")
            profile["bio"] = bio
            profile["address"] = address
            profile["name"] = name
            profile["author"] = PFUser.current()!

        
        
            selectedPost.add(profile, forKey: "profile")
            selectedPost.saveInBackground{(success,error) in
                if success{
                    print("comment saved!")
                }
                else{
                    print("error saving comment")
                }
            }
            tableView.reloadData()

            //clear and dismiss the input bar
            commentBar.inputTextView.text = nil
            showsCommentBar = false
            becomeFirstResponder()
            commentBar.inputTextView.resignFirstResponder()
        }

 */
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


