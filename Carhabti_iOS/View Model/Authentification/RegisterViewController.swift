//
//  RegisterViewController.swift
//  Carhabti_iOS
//
//  Created by Apple Esprit on 12/4/2022.
//

import UIKit

class RegisterViewController: UIViewController {

    
    @IBOutlet weak var registerField: UITextField!
    
    @IBOutlet weak var emailField: UITextField!
    
    @IBOutlet weak var passwordField: UITextField!
    
 @IBAction func registerTapped(_ sender: Any) {
     EasyAppRequest.register(email: emailField.text!, password: passwordField.text!, name: registerField.text!){(response) in
         
     }
    }
    

}
