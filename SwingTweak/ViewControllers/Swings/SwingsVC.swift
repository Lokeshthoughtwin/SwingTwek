//
//  SwingsVC.swift
//  SwingTweak
//
//  Created by apple on 14/12/21.
//

import UIKit

class SwingsVC: UIViewController {
    
    //vwBottom
    @IBOutlet weak var vwProfile: UIView!
    @IBOutlet weak var vwCreatSwing: UIView!
    @IBOutlet weak var vwSwings: UIView!
    @IBOutlet weak var vwTweaks: UIView!
     
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if UserDefaults.standard.bool(forKey: "signup"){
            self.vwSwings.isHidden = true
        }
        // Do any additional setup after loading the view.
    }
    
    @IBAction func actionProfile(_ sender: Any) {
         let vc = MainClass.HomeStoryboard.instantiateViewController(withIdentifier: "MyProfileVC") as! MyProfileVC
        self.navigationController?.pushViewController(vc, animated: false)
     }
    
    @IBAction func actionCreatSwing(_ sender: Any) {
         let vc = MainClass.HomeStoryboard.instantiateViewController(withIdentifier: "CreatSwingVC") as! CreatSwingVC
        self.navigationController?.pushViewController(vc, animated: false)
    }
    
    @IBAction func actionSwing(_ sender: Any) {
//         let vc = MainClass.HomeStoryboard.instantiateViewController(withIdentifier: "SwingsVC") as! SwingsVC
//        self.navigationController?.pushViewController(vc, animated: false)
     }
    
    @IBAction func actionTweaks(_ sender: Any) {
        let vc = MainClass.HomeStoryboard.instantiateViewController(withIdentifier: "TweaksVC") as! TweaksVC
       self.navigationController?.pushViewController(vc, animated: false)
     }
    
}
