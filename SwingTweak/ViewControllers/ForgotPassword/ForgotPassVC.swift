//
//  ForgotPassVC.swift
//  SwingTweak
//
//  Created by apple on 10/12/21.
//

import UIKit

class ForgotPassVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func actionBack(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func actionSuccess(_ sender: Any) {
        let vcPasswordResetSuccessVC = self.storyboard?.instantiateViewController(withIdentifier: "PasswordResetSuccessVC") as! PasswordResetSuccessVC
        self.navigationController?.pushViewController(vcPasswordResetSuccessVC, animated: true)    }
}
