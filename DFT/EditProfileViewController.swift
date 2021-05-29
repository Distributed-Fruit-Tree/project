//
//  EditProfileViewController.swift
//  DFT
//
//  Created by Christopher LaBorde on 5/24/21.
//

import UIKit
import Parse
import AlamofireImage

class EditProfileViewController: UIViewController {

    
    
    @IBOutlet weak var editProfilePictureImageView: UIImageView!
    @IBOutlet weak var editUsernameTextField: UITextField!
    @IBOutlet weak var editBioTextField: UITextField!
    @IBOutlet weak var editAddressTextField: UITextField!
    @IBOutlet weak var editFruitOfferedTextField: UITextField!
 
    @IBAction func onSaveButton(_ sender: Any) {
        //let profile = PFObject(className: "Profile")
        let profile = PFUser.current()!["profile"] as! PFObject
        
        profile["username"] = self.editUsernameTextField.text
        profile["author"] = PFUser.current()!
        
        //added below
        profile["bio"] = self.editBioTextField.text
        profile["address"] = self.editAddressTextField.text
        profile["fruits"] = self.editFruitOfferedTextField.text
        
        let imageData = self.editProfilePictureImageView.image!.pngData()
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
        
        /*
        let profileID = PFUser.current()!["profileID"] as! String
        let query = PFQuery(className:"Profile")
        query.getObjectInBackground(withId: profileID) { (profile, error) in
            if error == nil {
                profile?["username"] = self.editUsernameTextField.text
                profile?["author"] = PFUser.current()!
                
                //added below
                profile?["bio"] = self.editBioTextField.text
                profile?["address"] = self.editAddressTextField.text
                profile?["fruits"] = self.editFruitOfferedTextField.text
                
                let imageData = self.editProfilePictureImageView.image!.pngData()
                let file = PFFileObject(name: "image.png", data: imageData!)
                
                profile?["image"] = file
                
                profile?.saveInBackground { (success, error) in
                    if success {
                        self.dismiss(animated: true, completion: nil)
                        print("saved!")
                    } else {
                        print("error!")
                    }
                }
            } else {
                print(error)
            }
        }
 */
    }

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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
}


    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

