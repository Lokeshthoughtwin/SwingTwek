//
//  LoginVC.swift
//  SwingTweak
//
//  Created by apple on 09/12/21.
//

import UIKit

class LoginVC: UIViewController {
    
    @IBOutlet weak var txtEmail: UITextField!
     @IBOutlet weak var txtPass: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
         self.navigationController?.navigationBar.isHidden = true
     }
    
    override func viewWillAppear(_ animated: Bool) {
        txtPass.text = ""
        txtEmail.text = ""
    }
    
    @IBAction func actionForgot(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "ForgotPassVC") as! ForgotPassVC
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func actionLogin(_ sender: Any) {
        let valid = validate()
        self.view.endEditing(true)
        if valid.isSuccess{
            UserDefaults.standard.set(false, forKey: "signup")
            let vc = MainClass.HomeStoryboard.instantiateViewController(withIdentifier: "MyProfileVC") as! MyProfileVC
            self.navigationController?.pushViewController(vc, animated: true)
        }else{
            self.view.makeToast(valid.message)
        }
    }
    
    @IBAction func actionSignup(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "SignupVC") as! SignupVC
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    func validate() -> (message:String,isSuccess:Bool){
        var msg = ""
        var success = true
        if txtEmail.isEmpty(){
            msg = valid.enterEmail
            success = false
        }else if !self.txtEmail.isValidEmail(){
            msg = valid.validEmail
            success = false
        }else if self.txtPass.isEmpty(){
            msg = valid.loginPassword
            success = false
        }else if !self.txtPass.isValidPassword(){
            msg = valid.validpassword
            success = false
        }
        return (msg,success)
    }
}
