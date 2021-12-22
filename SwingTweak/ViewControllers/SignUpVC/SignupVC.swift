//
//  SignupVC.swift
//  SwingTweak
//
//  Created by apple on 10/12/21.
//

import UIKit

class SignupVC: UIViewController {
    
    @IBOutlet weak var lblGolferSignUp: UILabel!
    @IBOutlet weak var lblSignUpPro: UILabel!
    @IBOutlet weak var lblUserNm: UILabel!
    @IBOutlet weak var imgHeader: UIImageView!
    @IBOutlet weak var nsLayoutHtForm: NSLayoutConstraint!
    @IBOutlet weak var nsLayoutHtSignup: NSLayoutConstraint!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var txtUserName: UITextField!
    @IBOutlet weak var  txtemail: UITextField!
    @IBOutlet weak var txtGolfCourse: UITextField!
    @IBOutlet weak var txtConfirmpass: UITextField!
    @IBOutlet weak var vwGolf: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configurUI()
    }
    
    func configurUI(){
        vwGolf.isHidden = true
        self.nsLayoutHtForm.constant = 411
        self.nsLayoutHtSignup.constant = 810
        self.navigationController?.navigationBar.isHidden = true
        let rectShape = CAShapeLayer()
        rectShape.bounds = self.lblGolferSignUp.frame
        rectShape.position = self.lblGolferSignUp.center
        rectShape.path = UIBezierPath(roundedRect: self.lblGolferSignUp.bounds, byRoundingCorners: [.bottomLeft, .topLeft], cornerRadii: CGSize(width: 5, height: 5)).cgPath
        UserDefaults.standard.set(false, forKey: "signup")
        
        self.lblGolferSignUp.layer.backgroundColor = UIColor.green.cgColor
        //Here I'm masking the textView's layer with rectShape layer
        self.lblGolferSignUp.layer.mask = rectShape
        
        let rectShape1 = CAShapeLayer()
        rectShape1.bounds = self.lblSignUpPro.frame
        rectShape1.position = self.lblSignUpPro.center
        rectShape1.path = UIBezierPath(roundedRect: self.lblSignUpPro.bounds, byRoundingCorners: [.topRight , .bottomRight], cornerRadii: CGSize(width: 5, height: 5)).cgPath
        
        self.lblSignUpPro.layer.backgroundColor = UIColor.green.cgColor
        //Here I'm masking the textView's layer with rectShape layer
        self.lblSignUpPro.layer.mask = rectShape1
        // Do any additional setup after loading the view.
        
        lblSignUpPro.textColor = UIColor.black
        lblSignUpPro.backgroundColor = UIColor.white
        lblGolferSignUp.textColor = Constant.AppColor.redColor
        lblGolferSignUp.backgroundColor = Constant.AppColor.graytxtBgColor
    }
    
    @IBAction func actionBack(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func actionGolferSignUP(_ sender: Any) {
        vwGolf.isHidden = true
        lblUserNm.text = "Username"
        imgHeader.image = #imageLiteral(resourceName: "Splash")
        self.nsLayoutHtForm.constant = 411
        self.nsLayoutHtSignup.constant = 810
        
        lblSignUpPro.textColor = UIColor.black
        lblSignUpPro.backgroundColor = UIColor.white
        lblGolferSignUp.textColor = Constant.AppColor.redColor
        lblGolferSignUp.backgroundColor = Constant.AppColor.graytxtBgColor
        UserDefaults.standard.set(false, forKey: "signup")
    }
    
    @IBAction func actionSubmit(_ sender: Any) {
        let valid = validate()
        self.view.endEditing(true)
        if valid.isSuccess{
            let vc = MainClass.HomeStoryboard.instantiateViewController(withIdentifier: "MyProfileVC") as! MyProfileVC
            self.navigationController?.pushViewController(vc, animated: true)
        }else{
            self.view.makeToast(valid.message)
        }
    }
    
    @IBAction func actionProSignUp(_ sender: Any) {
        vwGolf.isHidden = false
        UserDefaults.standard.set(true, forKey: "signup")
        lblUserNm.text = "Name"
        imgHeader.image = #imageLiteral(resourceName: "splash2")
        self.nsLayoutHtForm.constant = 516
        self.nsLayoutHtSignup.constant = 910
        lblSignUpPro.textColor = Constant.AppColor.redColor
        lblSignUpPro.backgroundColor = Constant.AppColor.graytxtBgColor
        lblGolferSignUp.textColor = UIColor.black
        lblGolferSignUp.backgroundColor = UIColor.white
    }
    
    func validate() -> (message:String,isSuccess:Bool){
        var msg = ""
        if vwGolf.isHidden == false{
            var success = true
            if txtemail.isEmpty(){
                msg = valid.enterEmail
                success = false
            }else if !self.txtemail.isValidEmail(){
                msg = valid.validEmail
                success = false
            }else if txtUserName.isEmpty(){
                msg = valid.name
                success = false
            }else if self.txtPassword.isEmpty(){
                msg = valid.loginPassword
                success = false
            }else if !self.txtPassword.isValidPassword(){
                msg = valid.validpassword
                success = false
            }else if self.txtConfirmpass.isEmpty(){
                msg = valid.confirmPassword
                success = false
            }else if !self.txtConfirmpass.isValidPassword(){
                msg = valid.validpassword
                success = false
            }else if self.txtPassword.text != self.txtConfirmpass.text{
                msg = valid.passwordNotMatch
                success = false
            }else if self.txtGolfCourse.isEmpty(){
                msg = valid.golfCourse
                success = false
            }
            return (msg,success)
        }else{
            var success = true
            if txtemail.isEmpty(){
                msg = valid.enterEmail
                success = false
            }else if !self.txtemail.isValidEmail(){
                msg = valid.validEmail
                success = false
            }else if txtUserName.isEmpty(){
                msg = valid.username
                success = false
            }else if self.txtPassword.isEmpty(){
                msg = valid.loginPassword
                success = false
            }else if !self.txtPassword.isValidPassword(){
                msg = valid.validpassword
                success = false
            }else if self.txtConfirmpass.isEmpty(){
                msg = valid.confirmPassword
                success = false
            }else if !self.txtConfirmpass.isValidPassword(){
                msg = valid.validpassword
                success = false
            }else if self.txtPassword.text != self.txtConfirmpass.text{
                msg = valid.passwordNotMatch
                success = false
            }
            return (msg,success)
        }
    }
}
