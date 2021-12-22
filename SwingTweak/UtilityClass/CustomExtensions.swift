//
//  CustomExtensions.swift
//  Speed Shopper
//
//  Created by mac on 10/04/18.
//  Copyright © 2018 mac. All rights reserved.
//

import Foundation
import UIKit

//extension UIView{
//    @IBInspectable var shadow: Bool {
//        get {
//            return layer.shadowOpacity > 0.0
//        }
//        set {
//            if newValue == true {
//                self.addShadow()
//            }
//        }
//    }
    
//    @IBInspectable var cornerRadius : CGFloat{
//        get{
//            return layer.cornerRadius
//        }set{
//            layer.cornerRadius = newValue
////            self.layer.masksToBounds = true
//        }
//    }
    
//    func addShadow(shadowColor: CGColor = UIColor.black.cgColor,
//                   shadowOffset: CGSize = CGSize(width: 1.0, height: 2.0),
//                   shadowOpacity: Float = 0.4,
//                   shadowRadius: CGFloat = 3.0) {
//        layer.shadowColor = shadowColor
//        layer.shadowOffset = shadowOffset
//        layer.shadowOpacity = shadowOpacity
//        layer.shadowRadius = shadowRadius
//    }
//}
//
//extension BaseViewController{
//    func setAttributedString(btn: UIButton){
//        let yourAttributes : [NSAttributedString.Key: Any] = [
//            NSAttributedString.Key.font : btn.titleLabel!.font!,
//            NSAttributedString.Key.foregroundColor : btn.titleLabel!.textColor,
//            NSAttributedString.Key.underlineStyle : NSUnderlineStyle.single.rawValue]
//
//        let attributeString = NSMutableAttributedString(string: (btn.titleLabel?.text)!,
//                                                        attributes: yourAttributes)
//        btn.setAttributedTitle(attributeString, for: .normal)
//    }
//}

class UnderlinedLabel: UILabel {
    override var text: String? {
        didSet {
            guard let text = text else { return }
            let textRange = NSMakeRange(0, text.count)
            let attributedText = NSMutableAttributedString(string: text)
            attributedText.addAttribute(NSAttributedString.Key.underlineStyle , value: NSUnderlineStyle.single.rawValue, range: textRange)
            // Add other attributes if needed
            self.attributedText = attributedText
        }
    }
}

//class UnderlinedButton: UIButton {
//    
//    override var currentTitle: String?{
//        didSet {
//            guard let text = text else { return }
//            let textRange = NSMakeRange(0, text.count)
//            let attributedText = NSMutableAttributedString(string: text)
//            attributedText.addAttribute(NSAttributedString.Key.underlineStyle , value: NSUnderlineStyle.single.rawValue, range: textRange)
//            // Add other attributes if needed
//            self.setAttributedTitle(attributedText, for: .normal)
//        }
//    }
//}


extension UITextField{
    func isEmpty() -> Bool{
        if (self.text?.isEmpty)!{
            return true
        }
        return false
    }
    
    func isValidEmail() -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,20}"
        let emailTest  = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: self.text)
    }
    
    func isValidPassword() -> Bool {
        let passwordRegex = "^(?=.*\\d)(?=.*[a-z])(?=.*[A-Z])[0-9a-zA-Z!@#$%^&*()\\-_=+{}|?>.<,:;~`’]{6,15}$"
        return NSPredicate(format: "SELF MATCHES %@", passwordRegex).evaluate(with: self.text)
    }
    
    func isValidCotactNumber() -> Bool{
        if (self.text?.count)! < 12 || (self.text?.count)! > 14 {
            return false
        }
        return true
    }
    
    @IBInspectable var placeHolderColor: UIColor? {
        get {
            return self.placeHolderColor
        }
        set {
            self.attributedPlaceholder = NSAttributedString(string:self.placeholder != nil ? self.placeholder! : "", attributes:[NSAttributedString.Key.foregroundColor: newValue!])
        }
    }
}

class UITextFieldWithDoneButton: UITextField {
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.addDoneButtonOnKeyboard()
    }

    fileprivate func addDoneButtonOnKeyboard() {
        let doneToolbar: UIToolbar = UIToolbar(frame: CGRect.init(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 35))
        doneToolbar.barStyle = .default
        let flexSpace = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        let done: UIBarButtonItem = UIBarButtonItem(title: "Done", style: .done, target: self, action: #selector(self.doneButtonAction))
        let items = [flexSpace, done]
        doneToolbar.items = items
        doneToolbar.sizeToFit()
        self.inputAccessoryView = doneToolbar
    }

    @objc fileprivate func doneButtonAction() {
        self.resignFirstResponder()
    }
    
    let padding = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 10)
    
    override open func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
    
    override open func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
    
    override open func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
    
    @IBInspectable var cornerRadiuss: CGFloat = 0.0  {
        didSet {
            layer.cornerRadius = cornerRadiuss
        }
    }
    @IBInspectable var shadowColor:UIColor = .clear
        {
        didSet{
            self.layer.masksToBounds = false
            self.layer.shadowColor = shadowColor.cgColor
            self.layer.shadowOpacity = 0.5
            self.layer.shadowOffset = CGSize(width: 0, height: 5)
            self.layer.shadowRadius = 1
        }
    }
    @IBInspectable var borderColor: UIColor? {
        didSet {
            layer.borderColor = borderColor?.cgColor
        }
    }
    @IBInspectable var borderWidth: CGFloat = 0 {
        didSet {
            layer.borderWidth = borderWidth
        }
    }
}

class UITextViewWithDoneButton: UITextView, NSTextStorageDelegate {
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.addDoneButtonOnKeyboard()
    }

    fileprivate func addDoneButtonOnKeyboard() {
        let doneToolbar: UIToolbar = UIToolbar(frame: CGRect.init(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 35))
        doneToolbar.barStyle = .default
        let flexSpace = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        let done: UIBarButtonItem = UIBarButtonItem(title: "Done", style: .done, target: self, action: #selector(self.doneButtonAction))
        let items = [flexSpace, done]
        doneToolbar.items = items
        doneToolbar.sizeToFit()
        self.inputAccessoryView = doneToolbar
    }

    @objc fileprivate func doneButtonAction() {
        self.resignFirstResponder()
    }
    
    let padding = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 10)
    
 
    @IBInspectable var cornerRadiuss: CGFloat = 0.0  {
        didSet {
            layer.cornerRadius = cornerRadiuss
        }
    }
    private class PlaceholderLabel: UILabel { }

    private var placeholderLabel: PlaceholderLabel {
        if let label = subviews.compactMap( { $0 as? PlaceholderLabel }).first {
            return label
        } else {
            let label = PlaceholderLabel(frame: .zero)
            label.font = font
            addSubview(label)
            return label
        }
    }

    @IBInspectable
    var placeholder: String {
        get {
            return subviews.compactMap( { $0 as? PlaceholderLabel }).first?.text ?? ""
        }
        set {
            let placeholderLabel = self.placeholderLabel
            placeholderLabel.text = newValue
            placeholderLabel.numberOfLines = 0
            let width = frame.width - textContainer.lineFragmentPadding * 2
            let size = placeholderLabel.sizeThatFits(CGSize(width: width, height: .greatestFiniteMagnitude))
            placeholderLabel.frame.size.height = size.height
            placeholderLabel.frame.size.width = width
            placeholderLabel.frame.origin = CGPoint(x: textContainer.lineFragmentPadding, y: textContainerInset.top)

            textStorage.delegate = self
        }
    }
    
}

 extension UITextView{
    func isEmpty() -> Bool{
        if (self.text?.isEmpty)!{
            return true
        }
        return false
    }
    
}

extension UIColor{
    class func hexStringToUIColor (_ hex:String) -> UIColor {
        var cString:String = hex.trimmingCharacters(in: (NSCharacterSet.whitespacesAndNewlines as NSCharacterSet) as CharacterSet).uppercased()
        
        if (cString.hasPrefix("#")) {
            cString = String(cString.removeFirst())
//            cString = cString.substring(from: cString.index(cString.startIndex, offsetBy: 1))
//            cString = String(cString[cString.index(cString.startIndex, offsetBy: 1)..])
        }
        if ((cString.count) != 6) {
            return UIColor.gray
        }
        
        var rgbValue:UInt32 = 0
        Scanner(string: cString).scanHexInt32(&rgbValue)
        
        return UIColor(
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0)
        )
    }
}

extension Formatter {
    static let withSeparator: NumberFormatter = {
        let formatter = NumberFormatter()
        formatter.groupingSeparator = " "
        formatter.numberStyle = .decimal
        return formatter
    }()
}

extension BinaryInteger {
    var formattedWithSeparator: String {
        return Formatter.withSeparator.string(for: self) ?? ""
    }
}


   

