//
//  LoginViewController.swift
//  Flash Chat iOS13
//
//  Created by Biswamohan on 28/07/2022.
//  Copyright © 2022 Biswamohan. All rights reserved.
//

import UIKit
import FirebaseCore
import FirebaseAuth
class LoginViewController: UIViewController {
    
    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    @IBOutlet weak var loginErrorLabel: UILabel!
    
    
    @IBAction func loginPressed(_ sender: UIButton) {
        if let email = emailTextfield.text, let password = passwordTextfield.text {
            Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
                if let e = error {
                    self.loginErrorLabel.text = e.localizedDescription
                } else {
                    self.performSegue(withIdentifier: K.loginSegue, sender: self)
                }
            }
        }
    }
    
}
