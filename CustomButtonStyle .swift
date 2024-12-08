//
//  CustomButtonStyle .swift
//  SwiftRev
//
//  Created by sayed mansour on 08/12/2024.
//

import UIKit

// MARK: -

class StyleButton: UIButton {
    
    @IBInspectable var setTitle: String = "" {
        
        didSet {
            setTitle(setTitle, for: .normal)
        }
    }
    
    @IBInspectable var borderWidth: CGFloat = 0 {
        
        didSet {
            self.layer.borderWidth = borderWidth
            
        }
    }
    
    @IBInspectable var cornerRadius: CGFloat = 0 {
        
        didSet {
            self.layer.cornerRadius = cornerRadius
            
        }
    }
    
    @IBInspectable var backGroundColor: UIColor = UIColor.clear {
        
        didSet {
            self.layer.backgroundColor = backGroundColor.cgColor
            
        }
    }
    
}




