//
//  User.swift
//  Carhabti_iOS
//
//  Created by Apple Esprit on 15/4/2022.
//

import Foundation
struct User {
    internal init(_id: String? = nil, username: String? = nil, email: String? = nil,  password: String? = nil, isVerified: Bool? = nil) {
        self._id = _id
        self.username = username
        self.email = email
        self.password = password
        self.isVerified = isVerified
        
    }
    
    
    var _id : String?
    var username : String?
    var email : String?
    var password : String?
    var isVerified : Bool?
   
}
