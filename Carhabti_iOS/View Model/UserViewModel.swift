//
//  UserViewModel.swift
//  Carhabti_iOS
//
//  Created by Apple Esprit on 15/4/2022.
//

import SwiftyJSON
import Alamofire
import UIKit.UIImage
public class UserViewModel: ObservableObject{
    
    static let sharedInstance = UserViewModel()
    
    
    func inscription(user: User, completed: @escaping (Bool) -> Void) {
        AF.request(HOST_URL + "/register",
                   method: .post,
                   parameters: [
                    "username": user.username!,
                    "email": user.email!,
                    "password": user.password!,
                  
                
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
    
    func connexion(email: String, password: String, completed: @escaping (Bool, Any?) -> Void) {
        AF.request(HOST_URL + "/login",
                   method: .post,
                   parameters: ["email": email, "password": password])
            .validate(statusCode: 200..<300)
            .validate(contentType: ["application/json"])
            .responseData { response in
                switch response.result {
                case .success:
                    let jsonData = JSON(response.data!)
                    let user = self.makeItem(jsonItem: jsonData["use"])
                    UserDefaults.standard.setValue(jsonData["token"].stringValue, forKey: "tokenConnexion")
                    UserDefaults.standard.setValue(user._id, forKey: "idUser")
                    print(user)
                    
                    completed(true, user)
                case let .failure(error):
                    debugPrint(error)
                    completed(false, nil)
                }
            }
    }
    func reEnvoyerConfirmationEmail(email: String, completed: @escaping (Bool) -> Void) {
        AF.request(HOST_URL + "/reEnvoyerConfirmationEmail",
                   method: .post,
                   parameters: ["email": email])
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
    
    
    
    func makeItem(jsonItem: JSON) -> User {
        
        return User(
            _id: jsonItem["_id"].stringValue,
            username: jsonItem["username"].stringValue,
            email: jsonItem["email"].stringValue,
            password: jsonItem["password"].stringValue,
            isVerified: jsonItem["isVerified"].boolValue
            
        )
    }
    
}
