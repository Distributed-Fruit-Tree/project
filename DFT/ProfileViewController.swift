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
        /*
        var query = PFQuery(className:"Profile")
        
        query.getObjectInBackgroundWithId(profileID){
          (profile: PFObject?, error: NSError?) -> Void in
            if error != nil{
                print(error)
            }else if let player = player{
                profile["username"] = editUsernameTextField.text
                profile["author"] = PFUser.current()!
                
                //added below
                profile["bio"] = editBioTextField.text
                profile["address"] = editAddressTextField.text
                profile["fruits"] = editFruitOfferedTextField.text
                
                let imageData = editProfilePictureImageView.image!.pngData()
                let file = PFFileObject(name: "image.png", data: imageData!)
                
                profile["image"] = file
                
                profile.saveInBackground { (success, error) in
                    if success {
                        self.dismiss(animated: true, completion: nil)
                        print("saved!")
                    } else {
                        print("error!")
                    }
                }
            }
 */
        
        var profID = "KDdjf7ebPK"
        var query = PFQuery(className:"Profile")
        query.getObjectInBackgroundWithId(profID){
            (profile: PFObject?, error: NSError?) -> Void in
            if error == nil && profile != nil {
              print(profile)
            } else {
              print(error)
            }
          }
        
        //THE LINES BELOW ARE WHERE THE ISSUE OCCURS
        //Specifically, it says that there is a key error because "bio" does not exist
        //Each user is supposed to have a pointer to a profile object. It looks like this is 
        //working because when I print out the "profile" i can see the object ID and this 
        //corresponds to what I see on the on the back4app page. Additionally, it looks like the
        //profile is set up correctly in the back4app because it has a column for "bio" and
        //the other keys. I feel like there is some issue with how we are using the pointers to different objects
        
        //Also, I don't think the issues are related, but I'm not sure if I have things set up correctly to "link"
        //the user and the profile (have them point to each other) since you have to save each object first 
        //before it lets you use a pointer to it. This issue would be here:
        // https://github.com/Distributed-Fruit-Tree/project/blob/c5e74d556259b3da830aa71d20f765e64d552481/DFT/LoginViewController.swift#L31
        /*
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
 */
        
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
      


