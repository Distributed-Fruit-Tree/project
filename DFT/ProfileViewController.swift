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

    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
  
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

}
