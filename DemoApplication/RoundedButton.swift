//
//  RoundedButton.swift
//  DemoApplication
//
//  Created by iWizards XI on 14/02/19.
//  Copyright © 2019 iWizards XI. All rights reserved.
//

import UIKit

@IBDesignable class MyButton: UIButton
    {
        override func layoutSubviews() {
            super.layoutSubviews()
            
            updateCornerRadius()
        }
        
        @IBInspectable var rounded: Bool = false {
            didSet {
                updateCornerRadius()
            }
        }
        
        func updateCornerRadius() {
            layer.cornerRadius = rounded ? frame.size.height / 2 : 0
            layer.borderWidth =  1
            layer.borderColor = UIColor.white.cgColor
        }
}
