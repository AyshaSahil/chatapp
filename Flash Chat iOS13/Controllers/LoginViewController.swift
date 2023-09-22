//
//  LoginViewController.swift
//

import UIKit
import Firebase

class LoginViewController: UIViewController {

    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    

    @IBAction func loginPressed(_ sender: UIButton) {
        if let email = emailTextfield.text ,let password = passwordTextfield.text {
            Auth.auth().signIn(withEmail: email, password: password) { [weak self] authResult, error in
                guard let strongSelf = self else { return }
                if error != nil {
                    print(error?.localizedDescription ?? "")
                    return
                }
                self?.performSegue(withIdentifier: "SegueToChatView", sender: self)
                print(email)
            }
        }
    }
    
}
