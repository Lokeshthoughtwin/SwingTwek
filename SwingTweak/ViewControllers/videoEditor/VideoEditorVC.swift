//
//  VideoEditorVC.swift
//  SwingTweak
//
//  Created by apple on 19/12/21.
//

import UIKit

class VideoEditorVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    //MARK: - @IBAction
    @IBAction func actionBack(_ sender: Any) {
        self.navigationController!.popViewController(animated: true)
    }
    
    @IBAction func actionSave(_ sender: Any) {
        let vc = MainClass.ProGolfSB.instantiateViewController(withIdentifier: "CreatTweakVC") as! CreatTweakVC
        self.navigationController?.pushViewController(vc, animated: false)
    }
}
