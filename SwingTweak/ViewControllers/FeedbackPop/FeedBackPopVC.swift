//
//  ClaimSwingVC.swift
//  SwingTweak
//
//  Created by apple on 16/12/21.
//

import UIKit
protocol protoFeedBack{
    func getFeedBack(blflag:Bool)
}

class FeedBackPopVC: UIViewController {
    
    @IBOutlet weak var lblHeading: UILabel!
    
    var dalegat : protoFeedBack!
    var strFlag = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //        if strFlag == "delete"{
        //            lblHeading.text = "Are you sure you want to delete this swing?"
        //        }else{
        //            //lblHeading.text = ""
        //         }
        // Do any additional setup after loading the view.
    }
    
    @IBAction func actionYes(_ sender: Any) {
        if dalegat != nil{
            dalegat.getFeedBack(blflag: true)
        }
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func actionNo(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
