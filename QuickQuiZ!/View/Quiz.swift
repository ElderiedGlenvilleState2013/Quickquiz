//
//  Quiz.swift
//  QuickQuiZ!
//
//  Created by McKinney family  on 5/26/18.
//  Copyright © 2018 FasTek Technologies. All rights reserved.
//

import UIKit
import Foundation

@IBDesignable
class GradientView: UIView {
    
    @IBInspectable var topColer: UIColor = UIColor.blue {
        didSet {
            self.setNeedsLayout()
            
        }
    }
    
    @IBInspectable var bottomColer: UIColor = UIColor.orange {
        didSet {
            self.setNeedsLayout()
            
        }
    }
    
    override func layoutSubviews() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [topColer.cgColor, bottomColer.cgColor]
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 1, y: 1)
        gradientLayer.frame = self.bounds
        self.layer.insertSublayer(gradientLayer, at: 0)
        
    }
    
}
