//
//  IncomeViewModel.swift
//  Carhabti_iOS
//
//  Created by iMac on 19/4/2022.
//

import SwiftyJSON
import Alamofire
import UIKit.UIImage
public class IncomeViewModel: ObservableObject{
    
    static let sharedInstance = IncomeViewModel()
    
    
    func inscription(income: Income, completed: @escaping (Bool) -> Void) {
        AF.request(HOST_URL + "/inc",
                   method: .post,
                   parameters: [
                    "date": income.date!,
                    "time": income.time!,
                    "odometer": income.odometer!,
                    "value": income.value!,
                    "typeincome": income.typeincome!,
                    "notes": income.notes!,
                    
                 
                  
                
                   ] ,encoding: JSONEncoding.default)
            .validate(statusCode: 200..<300)
            .validate(contentType: ["application/json"])
            .responseData { response in
                switch response.result {
                case .success:
                    print("Validation Successful")
                    completed(true)
                case let .failure(error):
                    print(error)
                    completed(false)
                }
            }
    }
    }
    
    
    
    
    

