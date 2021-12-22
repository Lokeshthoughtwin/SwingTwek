//
//  ClaimSwingVC.swift
//  SwingTweak
//
//  Created by apple on 16/12/21.
//

import UIKit
protocol protoClaimFlag{
    func getClam(blflag:Bool)
}


class ClaimSwingVC: UIViewController {
    
    @IBOutlet weak var lblHeading: UILabel!
    
    var dalegat : protoClaimFlag!
    var strFlag = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if strFlag == "delete"{
            lblHeading.text = "Are you sure you want to delete this swing?"
        }else{
            //lblHeading.text = ""
        }
        // Do any additional setup after loading the view.
    }
    
    @IBAction func actionYes(_ sender: Any) {
        if dalegat != nil{
            dalegat.getClam(blflag: true)
        }
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func actionNo(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
