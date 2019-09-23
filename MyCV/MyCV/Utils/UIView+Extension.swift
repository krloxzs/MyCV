//
//  UIView+Extension.swift
//  MyCV
//
//  Created by Carlos Rodriguez on 9/23/19.
//  Copyright © 2019 Carlos Rodriguez. All rights reserved.
//

import Foundation
import UIKit

extension UIView {

    func setCornerRadius(_ amount: CGFloat) {
        self.layer.cornerRadius = amount
        self.layer.masksToBounds = true
    }
    
    func setCircular() {
        self.layer.cornerRadius = self.frame.size.width / 2
        self.layer.masksToBounds = false
        self.clipsToBounds = true
    }
    
    func setExternalBorder(color: UIColor = .white, borderWidth: CGFloat = 1) {
        self.layer.borderWidth = borderWidth
        self.layer.borderColor = color.cgColor
    }
    
    func setGradientBackground(topColor: UIColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), bottomColor: UIColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)) {
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [ topColor.cgColor, bottomColor.cgColor]
        gradientLayer.locations = [ 0.0, 1.0]
        gradientLayer.frame = self.bounds
        
        self.layer.insertSublayer(gradientLayer, at: 0)
    }
}
