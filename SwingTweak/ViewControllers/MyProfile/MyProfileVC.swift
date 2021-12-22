//
//  MyProfileVC.swift
//  SwingTweak
//
//  Created by apple on 13/12/21.
//

import UIKit
//import FloatRatingView

class MyProfileVC: UIViewController, FloatRatingViewDelegate{
    
    @IBOutlet weak var btnEditSave: UIButton!
    @IBOutlet weak var lblBtmTweak: UILabel!
    
    @IBOutlet weak var nsLayoutTopLogout: NSLayoutConstraint!
    @IBOutlet weak var lblEdit: UILabel!
    @IBOutlet var floatRatingView: FloatRatingView!
    @IBOutlet weak var vwRating: UIView!
    @IBOutlet weak var nsLayoutLeadStack: NSLayoutConstraint!
    @IBOutlet weak var nsLayoutTrailStack: NSLayoutConstraint!
    
    @IBOutlet weak var lblEmail: UILabel!
    @IBOutlet weak var lblCourse: UILabel!
    @IBOutlet weak var lblLocation: UILabel!
    @IBOutlet weak var lblIndex: UILabel!
    @IBOutlet weak var lblName: UILabel!

    //vwBottom
    @IBOutlet weak var vwProfile: UIView!
    @IBOutlet weak var vwCreatSwing: UIView!
    @IBOutlet weak var vwSwings: UIView!
    @IBOutlet weak var vwTweaks: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblEdit.attributedText = NSAttributedString(string: "edit", attributes:
                                                        [.underlineStyle: NSUnderlineStyle.single.rawValue])
        floatRatingView.backgroundColor = UIColor.clear
        
        /** Note: With the exception of contentMode, type and delegate,
         all properties can be set directly in Interface Builder **/
        floatRatingView.delegate = self
        floatRatingView.contentMode = UIView.ContentMode.scaleAspectFit
        floatRatingView.type = .halfRatings
        
        if UserDefaults.standard.bool(forKey: "signup"){
            lblBtmTweak.text = "Your Tweaks"
            self.vwCreatSwing.isHidden = true
            self.vwRating.isHidden = false
            lblEmail.isHidden = false
            lblIndex.isHidden = true
            nsLayoutLeadStack.constant = 36
            nsLayoutTrailStack.constant = 36
            nsLayoutTopLogout.constant = 100
        }else{
            self.vwRating.isHidden = true
            lblEmail.isHidden = true
            lblIndex.isHidden = false
            self.vwCreatSwing.isHidden = false
            nsLayoutTopLogout.constant = 15
        }
        
        // Segmented control init
        //  ratingSegmentedControl.selectedSegmentIndex = 1
        
        // Labels init
        // liveLabel.text = String(format: "%.2f", self.floatRatingView.rating)
        // updatedLabel.text = String(format: "%.2f", self.floatRatingView.rating)
        
    }
    
    @IBAction func acitonEditSave(_ sender: Any) {
        //  EditProfileVC
        let vc = MainClass.HomeStoryboard.instantiateViewController(withIdentifier: "EditProfileVC") as! EditProfileVC
        self.navigationController?.pushViewController(vc, animated: false)
        
        //        if btnEditSave.isSelected{
        //            lblEdit.attributedText = NSAttributedString(string: "edit", attributes:
        //                                                            [.underlineStyle: NSUnderlineStyle.single.rawValue])
        //            btnEditSave.isSelected = false
        //        }else{
        //            btnEditSave.isSelected = true
        //            lblEdit.attributedText = NSAttributedString(string: "save", attributes:
        //                                                            [.underlineStyle: NSUnderlineStyle.single.rawValue])
        //        }
        
    }
    
    @IBAction func actionLogout(_ sender: Any) {
        for controller in self.navigationController!.viewControllers as Array {
            if controller.isKind(of: LoginVC.self) {
                self.navigationController!.popToViewController(controller, animated: false)
                break
            }
        }
        
        //        let vc = MainClass.HomeStoryboard.instantiateViewController(withIdentifier: "EditProfileVC") as! EditProfileVC
        //        self.navigationController?.pushViewController(vc, animated: false)
    }
    @IBAction func actionProfile(_ sender: Any) {
        
        //         FaceOnTypeVC
        //         let vc = MainClass.HomeStoryboard.instantiateViewController(withIdentifier: "MyProfileVC") as! MyProfileVC
        //         self.navigationController?.pushViewController(vc, animated: false)
    }
    
    @IBAction func actionCreatSwing(_ sender: Any) {
        let vc = MainClass.HomeStoryboard.instantiateViewController(withIdentifier: "CreatSwingVC") as! CreatSwingVC
        self.navigationController?.pushViewController(vc, animated: false)
    }
    
    @IBAction func actionSwing(_ sender: Any) {
        let vc = MainClass.HomeStoryboard.instantiateViewController(withIdentifier: "DraftSwingVC") as! DraftSwingVC
        self.navigationController?.pushViewController(vc, animated: false)
    }
    
    @IBAction func actionTweaks(_ sender: Any) {
        let vc = MainClass.HomeStoryboard.instantiateViewController(withIdentifier: "TweaksVC") as! TweaksVC
        self.navigationController?.pushViewController(vc, animated: false)
    }
    
    func floatRatingView(_ ratingView: FloatRatingView, isUpdating rating: Double) {
        //  liveLabel.text = String(format: "%.2f", self.floatRatingView.rating)
    }
    
    func floatRatingView(_ ratingView: FloatRatingView, didUpdate rating: Double) {
        //   updatedLabel.text = String(format: "%.2f", self.floatRatingView.rating)
    }
}



