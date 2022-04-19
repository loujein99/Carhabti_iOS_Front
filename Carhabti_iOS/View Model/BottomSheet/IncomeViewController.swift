//
//  IncomeViewController.swift
//  Carhabti_iOS
//
//  Created by iMac on 18/4/2022.
//

import UIKit

var date : String?
var time : String?
var odometer : String?
var value : String?
var typeincome : String?
var notes : String?

var incomeViewModel = IncomeViewModel()
var income = Income()

class IncomeViewController: UIViewController {

   
    @IBOutlet weak var incomeDate: UITextField!
    
    @IBOutlet weak var incomeTime: UITextField!
    
    @IBOutlet weak var incomeOdometer: UITextField!
    
    @IBOutlet weak var incomeValue: UITextField!
  
    
    @IBOutlet weak var incomeType: UITextField!
    
    
    @IBOutlet weak var incomeNotes: UITextField!
  
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

      
    }
    
    func makeAlert1(titre: String?, message: String?) {
        let alert = UIAlertController(title: titre, message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(action)
        self.present(alert, animated: true)
    }
    
   
    @IBAction func incomeAdd(_ sender: Any) {
        if (incomeDate.text == "") {
            makeAlert1(titre: "Warning", message: "Please type your username")
            return
        }
        
        if (incomeTime.text == "") {
            makeAlert1(titre: "Warning", message: "Please type your email")
            return
        }
        
        if (incomeOdometer.text == "") {
            makeAlert1(titre: "Warning", message: "Please type your phone")
            return
        }
            
            if (incomeValue.text == "") {
                makeAlert1(titre: "Warning", message: "Please type your phone")
                return
            }
            if (incomeType.text == "") {
                makeAlert1(titre: "Warning", message: "Please type your phone")
                return
            }
            if (incomeNotes.text == "") {
                makeAlert1(titre: "Warning", message: "Please type your phone")
                return
            }
        
        
            income.date = incomeDate.text
            income.time = incomeTime.text
            income.odometer = incomeOdometer.text
            income.value = incomeValue.text
            income.typeincome = incomeType.text
            income.notes = incomeNotes.text
      
        
      
        
      
}
    }
    

