//
//  UIView+Extension.swift
//  Carhabti_iOS
//
//  Created by Apple Esprit on 6/4/2022.
//

import UIKit

extension UIView {
    @IBInspectable var cornerRadius: CGFloat {
        get { return cornerRadius }
        set {
            self.layer.cornerRadius = newValue
        }
    }
}
