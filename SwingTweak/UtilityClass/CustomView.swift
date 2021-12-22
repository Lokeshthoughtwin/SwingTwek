//
//  CustomView.swift
//  Yomuzoku
//
//  Created by Prashant Shinde on 5/30/17.
//  Copyright © 2017 Prashant Shinde. All rights reserved.
//

import UIKit
    
@IBDesignable
open class KGHighLightedField: UITextField {
    
    @IBInspectable
     public var borderColor: UIColor = UIColor.clear {
        didSet {
            layer.borderColor = borderColor.cgColor
        }
    }
    
    @IBInspectable
     public var borderWidth: CGFloat = 0 {
        didSet {
            layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable
     public var cornerRadius: CGFloat = 0 {
        didSet {
            layer.cornerRadius = cornerRadius
        }
    }
    
    
//    @IBInspectable var placeHolderColor : UIColor = UIColor.lightGray{
//        didSet {
//            setValue(placeHolderColor, forKeyPath: "_placeholderLabel.textColor")
//        }
    //}
}

@IBDesignable
open class KGHighLightedTextView: UITextView {
    
    @IBInspectable
     public var borderColor: UIColor = UIColor.clear {
        didSet {
            layer.borderColor = borderColor.cgColor
        }
    }
    
    @IBInspectable
     public var borderWidth: CGFloat = 0 {
        didSet {
            layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable
     public var cornerRadius: CGFloat = 0 {
        didSet {
            layer.cornerRadius = cornerRadius
        }
    }
    
    
    @IBInspectable var placeHolderColor : UIColor = UIColor.lightGray{
        didSet {
            setValue(placeHolderColor, forKeyPath: "_placeholderLabel.textColor")
        }
    }
}

@IBDesignable
open class KGHighLightedButton: UIButton {
    
    @IBInspectable
    public var cornerRadius: CGFloat = 0 {
        didSet {
            layer.cornerRadius = cornerRadius
        }
    }
}

@IBDesignable
open class KGHighLightedLabel: UILabel {
    
    @IBInspectable
    public var cornerRadius: CGFloat = 0 {
        didSet {
            layer.cornerRadius = cornerRadius
        }
    }
}

@IBDesignable
open class KGHighLightedImage: UIImageView {
    
    @IBInspectable
    public var cornerRadius: CGFloat = 0 {
        didSet {
            layer.cornerRadius = cornerRadius
        }
    }
}
 
@IBDesignable
open class CustomUIView: UIView {
    
    var cornerRadiusValue : CGFloat = 10
    var corners : UIRectCorner = []
    
    @IBInspectable
    public var borderColor: UIColor = UIColor.clear {
        didSet {
            layer.borderColor = borderColor.cgColor
        }
    }
    
    @IBInspectable public var topLeft : Bool {
        get {
            return corners.contains(.topLeft)
        }
        set {
            if newValue {
                corners.insert(.topLeft)
                updateCorners()
            } else {
                if corners.contains(.topLeft) {
                    corners.remove(.topLeft)
                    updateCorners()
                }
            }
        }
    }
    
    @IBInspectable public var topRight : Bool {
        get {
            return corners.contains(.topRight)
        }
        set {
            if newValue {
                corners.insert(.topRight)
                updateCorners()
            } else {
                if corners.contains(.topRight) {
                    corners.remove(.topRight)
                    updateCorners()
                }
            }
            
        }
    }
    
    @IBInspectable public var bottomLeft : Bool {
        get {
            return corners.contains(.bottomLeft)
        }
        set {
            if newValue {
                corners.insert(.bottomLeft)
                updateCorners()
            } else {
                if corners.contains(.bottomLeft) {
                    corners.remove(.bottomLeft)
                    updateCorners()
                }
            }
            
        }
    }
    
    @IBInspectable public var bottomRight : Bool {
        get {
            return corners.contains(.bottomRight)
        }
        set {
            if newValue {
                corners.insert(.bottomRight)
                updateCorners()
            } else {
                if corners.contains(.bottomRight) {
                    corners.remove(.bottomRight)
                    updateCorners()
                }
            }
            
        }
    }

    
    @IBInspectable
    public var borderWidth: CGFloat = 0 {
        didSet {
            layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable
    public var cornerRadius: CGFloat = 0 {
        didSet {
            layer.cornerRadius = cornerRadius
        }
    }
    
    func updateCorners() {
        let path = UIBezierPath(roundedRect: self.bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: cornerRadiusValue, height: cornerRadiusValue))
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        self.layer.mask = mask
    }
}
