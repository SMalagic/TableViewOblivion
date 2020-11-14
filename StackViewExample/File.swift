//
//  File.swift
//  StackViewExample
//
//  Created by Serkan Malagiç on 13.11.2020.
//

import Foundation
import UIKit

class MyCustomTextField : UITextField {
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        self.layer.cornerRadius = 5.0
        self.layer.borderColor = UIColor.black.cgColor
        self.layer.borderWidth = 1.5
        self.backgroundColor = UIColor.white
        self.tintColor = UIColor.white
        self.font = UIFont(name: "Avenir-Next-Medium", size: 18)
    }
    
    func setPlaceHolder(title : String){
        self.placeholder = title
    }
    
    let padding = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 5)

        override open func textRect(forBounds bounds: CGRect) -> CGRect {
            return bounds.inset(by: padding)
        }

        override open func placeholderRect(forBounds bounds: CGRect) -> CGRect {
            return bounds.inset(by: padding)
        }

        override open func editingRect(forBounds bounds: CGRect) -> CGRect {
            return bounds.inset(by: padding)
        }
    
    
}


class MyCustomView : UIView{
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)

        self.layer.backgroundColor = UIColor.white.cgColor
        self.layer.borderColor = UIColor.black.cgColor
        self.layer.borderWidth = 0.5
        self.layer.cornerRadius = 7
    }
    
}
