//
//  LoginViewController.swift
//  DFT
//
//  Created by Olivia Gillam on 5/15/21.
//

import UIKit
import Parse

class LoginViewController: UIViewController {

    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBAction func onSignIn(_ sender: Any) {
        let username = usernameTextField.text!
        let password = passwordTextField.text!
        PFUser.logInWithUsername(inBackground: username, password: password) { (user, error) in
            if user != nil{
                self.performSegue(withIdentifier: "loginSegue", sender: nil)
            }
            else{
                print("\(error) could not find user")
            }
            
        }
    }
    
    
    @IBAction func onSignUp(_ sender: Any) {
        var user = PFUser()
        print(usernameTextField.text)
        print(passwordTextField.text)
        user.username = usernameTextField.text
        user.password = passwordTextField.text
        
        //user.email = "email@example.com"
        // other fields can be set just like with PFObject
        //user["phone"] = "415-392-0202"
        user.signUpInBackground { (success, error) in
            if success{
                
                //ADDED THIS BC PROFILE SHOULD EXIST WHEN YOU MAKE ACCOUNT AND SHOULD NOT BE CREATED EVERY TIME YOU EDIT PROFILE
                user.saveInBackground()
                let profile = PFObject(className: "Profile")
                profile["user"] = user
                profile["bio"] = "this user has not updated their bio"
                profile["username"] = "this user has not updated their username"
                profile["address"] = "this user has not updated their address"
                profile["fruits"] = "this user has not listed any fruits"
                //profile["image"] = 
                
                
                profile.saveInBackground { (success, error) in
                    if success {
                        self.dismiss(animated: true, completion: nil)
                        print("saved!")
                    } else {
                        print("error!")
                    }
                }
                user["profile"] = profile
                user.saveInBackground()
                
                self.performSegue(withIdentifier: "loginSegue", sender: nil)
            }
            else{
                print("\(error?.localizedDescription ?? "default value") was not able tos create account")
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
