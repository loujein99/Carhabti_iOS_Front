//
//  LoginViewController.swift
//  Carhabti_iOS
//
//  Created by Apple Esprit on 12/4/2022.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet var backgroundGradientView: UIView!
    
    @IBOutlet weak var usernameField: UITextField!
    
    @IBOutlet weak var passwordField: UITextField!
    
    @IBAction func loginTapped(_ sender: Any) {
        EasyAppRequest.login(email: usernameField.text!, password: passwordField.text!){(response) in
            DispatchQueue.main.async {
                if response != nil && response!["error"] == nil  {
                    let alert = UIAlertController(title:"Welcome",message:"Hi\(String(describing: response!["name"]))",preferredStyle: .alert)
                    alert.addAction(UIAlertAction(title:"thank u",style: .default,handler: nil))
                    self.present(alert,animated: true,completion:nil)
                }else{
                    let alert = UIAlertController(title:"error",message:"wrong password or email",preferredStyle: .alert)
                    alert.addAction(UIAlertAction(title:"try again",style: .default,handler: nil))
                    self.present(alert,animated: true,completion:nil)
                }
            }
            
        }
    }
    /**override func viewDidLoad() {
            super.viewDidLoad()
            
            // Create a gradient layer.
            let gradientLayer = CAGradientLayer()
            // Set the size of the layer to be equal to size of the display.
            gradientLayer.frame = view.bounds
            // Set an array of Core Graphics colors (.cgColor) to create the gradient.
            // This example uses a Color Literal and a UIColor from RGB values.
            gradientLayer.colors = [#colorLiteral(red: 0, green: 0.5725490196, blue: 0.2705882353, alpha: 1).cgColor, UIColor(red: 252/255, green: 238/255, blue: 33/255, alpha: 1).cgColor]
            // Rasterize this static layer to improve app performance.
            gradientLayer.shouldRasterize = true
            // Apply the gradient to the backgroundGradientView.
            backgroundGradientView.layer.addSublayer(gradientLayer)
        }

        override var shouldAutorotate: Bool {
            return false
    
    

    

        }**/
     
     }
