//
//  RegisterViewController.swift
//  Flash Chat iOS13
//
//  Created by Biswamohan on 28/07/2022.
//  Copyright © 2022 Biswamohan. All rights reserved.
//

import UIKit
import FirebaseCore
import FirebaseAuth
class RegisterViewController: UIViewController {

    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    @IBOutlet weak var registerErrorLabel: UILabel!

    
    @IBAction func registerPressed(_ sender: UIButton) {
        
        if let email = emailTextfield.text, let password = passwordTextfield.text {
            Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
                if let e = error {
                    self.registerErrorLabel.text = e.localizedDescription
                } else {
                    self.performSegue(withIdentifier: K.registerSegue, sender: self)
                }
            }
        }
    }
    
}
