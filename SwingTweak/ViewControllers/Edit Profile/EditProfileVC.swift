//
//  EditProfileVC.swift
//  SwingTweak
//
//  Created by apple on 17/12/21.
//

import UIKit

class EditProfileVC: UIViewController {
    
    //vwBottom
    @IBOutlet weak var vwProfile: UIView!
    @IBOutlet weak var vwCreatSwing: UIView!
    @IBOutlet weak var vwSwings: UIView!
    @IBOutlet weak var vwTweaks: UIView!
    @IBOutlet weak var vwIndex: UIView!
    @IBOutlet weak var vwEmail: UIView!
    @IBOutlet weak var vwRating: UIView!

    @IBOutlet weak var vwFlotRating: FloatRatingView!
    @IBOutlet weak var nsLayoutHtForm: NSLayoutConstraint!
    @IBOutlet weak var nsLayoutLeadStack: NSLayoutConstraint!
    @IBOutlet weak var nsLayoutTrailStack: NSLayoutConstraint!
    @IBOutlet weak var lblBtmTweak: UILabel!
    
    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtIndex: UITextField!
    @IBOutlet weak var txtCourse: UITextField!
    @IBOutlet weak var txtLocation: UITextField!
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var nsLayoutHtScroll: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if UserDefaults.standard.bool(forKey: "signup"){
            //pro
            self.vwCreatSwing.isHidden = true
            self.vwEmail.isHidden = false
            self.vwIndex.isHidden = true
            // lblSwing.text = "Swings needing tweaks"
            lblBtmTweak.text = "Your Tweaks"
            nsLayoutLeadStack.constant = 36
            nsLayoutTrailStack.constant = 36
            nsLayoutHtForm.constant = 484
            self.vwRating.isHidden = false
            nsLayoutHtScroll.constant = 850

        }else{
            //Golfer
            self.vwEmail.isHidden = true
            self.vwIndex.isHidden = false
            self.vwRating.isHidden = true
            nsLayoutHtForm.constant = 384
            nsLayoutHtScroll.constant = 700
         }
    }
    
    @IBAction func actionSubmit(_ sender: Any) {
        let valid = validate()
        if valid.isSuccess{
            self.navigationController?.popViewController(animated: false)

        }else{
            self.view.makeToast(valid.message)

        }
    }
    
    //    @IBAction func actionLogout(_ sender: Any) {
    //        for controller in self.navigationController!.viewControllers as Array {
    //            if controller.isKind(of: LoginVC.self) {
    //                self.navigationController!.popToViewController(controller, animated: false)
    //                break
    //            }
    //        }
    //    }
    
    //MARK: - @IBAction
    @IBAction func actionProfile(_ sender: Any) {
        for controller in self.navigationController!.viewControllers as Array {
            if controller.isKind(of: MyProfileVC.self) {
                self.navigationController!.popToViewController(controller, animated: false)
                break
            }
        }
    }
    
    @IBAction func actionCreatSwing(_ sender: Any) {
        
        var blFlag = false
        for controller in self.navigationController!.viewControllers as Array {
            if controller.isKind(of: CreatSwingVC.self) {
                blFlag = true
                self.navigationController!.popToViewController(controller, animated: false)
                break
            }
            
            if blFlag == false{
                let vc = MainClass.HomeStoryboard.instantiateViewController(withIdentifier: "CreatSwingVC") as! CreatSwingVC
                vc.blFlagDraft = false
                self.navigationController?.pushViewController(vc, animated: false)
            }
        }
    }
    
    @IBAction func actionSwing(_ sender: Any) {
        var blFlag = false
        
        for controller in self.navigationController!.viewControllers as Array {
            if controller.isKind(of: DraftSwingVC.self) {
                blFlag = true
                self.navigationController!.popToViewController(controller, animated: true)
                break
            }
        }
        
        if blFlag == false{
            let vc = MainClass.HomeStoryboard.instantiateViewController(withIdentifier: "DraftSwingVC") as! DraftSwingVC
            self.navigationController?.pushViewController(vc, animated: false)
        }
    }
    
    @IBAction func actionTweaks(_ sender: Any) {
        var blFlag = false
        
        for controller in self.navigationController!.viewControllers as Array {
            if controller.isKind(of: TweaksVC.self) {
                blFlag = true
                self.navigationController!.popToViewController(controller, animated: true)
                break
            }
            
            if blFlag == false{
                let vc = MainClass.HomeStoryboard.instantiateViewController(withIdentifier: "TweaksVC") as! TweaksVC
                self.navigationController?.pushViewController(vc, animated: false)
            }
         }
    }
    
    func validate() -> (message:String,isSuccess:Bool){
        var msg = ""
        var success = true
        if UserDefaults.standard.bool(forKey: "signup"){
            //pro
            if txtName.isEmpty(){
                msg = valid.name
                success = false
            } else if self.txtLocation.isEmpty(){
                msg = valid.validLocation
                success = false
            }else if self.txtCourse.isEmpty(){
                msg = valid.golfCourse
                success = false
            }else if self.txtEmail.isEmpty(){
                msg = valid.enterEmail
                success = false
            }else if !self.txtEmail.isValidEmail(){
                msg = valid.validEmail
                success = false
            }else if vwFlotRating.rating == 0{
                msg = valid.validRating
                success = false
            }
            return (msg,success)
        }else{
            //Golfer
            if txtName.isEmpty(){
                msg = valid.name
                success = false
            }else if self.txtIndex.isEmpty(){
                msg = valid.validIndex
                success = false
            }else if self.txtLocation.isEmpty(){
                msg = valid.validLocation
                success = false
            }else if self.txtCourse.isEmpty(){
                msg = valid.golfCourse
                success = false
            }
            return (msg,success)
        }
     }
}
