//
//  Income.swift
//  Carhabti_iOS
//
//  Created by iMac on 19/4/2022.
//

import Foundation
struct Income {
    internal init(date: String? = nil,time: String? = nil, odometer: String? = nil,  value: String? = nil, typeincome: String? = nil ,notes: String? = nil  ) {
        self.date = date
        self.time = time
        self.odometer = odometer
        self.value = value
        self.typeincome = typeincome
        self.notes = notes
        
    }
    
    
    var date : String?
    var time : String?
    var odometer : String?
    var value : String?
    var typeincome : String?
    var notes : String?
   
   
}
