//
//  ViewTweakVC.swift
//  SwingTweak
//
//  Created by apple on 16/12/21.
//

import UIKit
import AVFoundation
import AVKit

class ViewTweakVC: UIViewController, protoFeedBack, UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var tblFaceOn: UITableView!
    @IBOutlet weak var tblDtl: UITableView!
    
    func getFeedBack(blflag: Bool) {
        var blvc = false
        for controller in self.navigationController!.viewControllers as Array {
            if controller.isKind(of: TweaksVC.self) {
                blvc = true
                self.navigationController!.popToViewController(controller, animated: false)
                break
            }
        }
        
        if blvc == false{
            let vc = MainClass.HomeStoryboard.instantiateViewController(withIdentifier: "TweaksVC") as! TweaksVC
            self.navigationController?.pushViewController(vc, animated: false)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func actionSubmit(_ sender: Any) {
        let vc = MainClass.PopUp.instantiateViewController(withIdentifier: "FeedBackPopVC") as! FeedBackPopVC
        vc.dalegat = self
        vc.modalPresentationStyle = .overCurrentContext
        self.present(vc, animated: true)
        
    }
    
    @IBAction func actionHome(_ sender: Any) {
    }
    
    @IBAction func actionSwing(_ sender: Any) {
        for controller in self.navigationController!.viewControllers as Array {
            if controller.isKind(of: DraftSwingVC.self) {
                self.navigationController!.popToViewController(controller, animated: false)
                break
            }else{
                let vc = MainClass.HomeStoryboard.instantiateViewController(withIdentifier: "DraftSwingVC") as! DraftSwingVC
                self.navigationController?.pushViewController(vc, animated: false)
            }
        }
    }
    
    @IBAction func actionProfile(_ sender: Any) {
        
        for controller in self.navigationController!.viewControllers as Array {
            if controller.isKind(of: MyProfileVC.self) {
                self.navigationController!.popToViewController(controller, animated: false)
                break
            }else{
                let vc = MainClass.HomeStoryboard.instantiateViewController(withIdentifier: "MyProfileVC") as! MyProfileVC
                self.navigationController?.pushViewController(vc, animated: false)
            }
        }
        
    }
    
    private func playVideo() {
        guard let path = Bundle.main.path(forResource: "SwingTweakVideo", ofType:"MP4") else {
            debugPrint("video.m4v not found")
            return
        }
        let player = AVPlayer(url: URL(fileURLWithPath: path))
        let playerController = AVPlayerViewController()
        playerController.player = player
        present(playerController, animated: true) {
            player.play()
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView == tblFaceOn{
            return 1
        }else{
            return 1
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if tableView == tblFaceOn{
            let cell = tblFaceOn.dequeueReusableCell(withIdentifier: "FaceOnTVCell", for: indexPath) as! FaceOnTVCell
            cell.selectionStyle = .none
            return cell
        }else{
            let cell = tblDtl.dequeueReusableCell(withIdentifier: "DTLTVCell", for: indexPath) as! DTLTVCell
            
            cell.selectionStyle = .none
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 124
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        playVideo()
        if tableView == tblFaceOn{
            //            let cell = tblFaceOn.dequeueReusableCell(withIdentifier: "FaceOnTVCell", for: indexPath) as! FaceOnTVCell
            //            cell.vwFaceOn.isHidden = true
            //            cell.vwPhoto.isHidden = false
            //            self.tblFaceOn.reloadData()
        }else {
            //            let cell = tblDtl.dequeueReusableCell(withIdentifier: "DTLTVCell", for: indexPath) as! DTLTVCell
            //            cell.vwDtl.isHidden = true
            //            cell.vwPhoto.isHidden = false
            //            self.tblDtl.reloadData()
        }
    }
    
    func ConfirmationYesAndNo(withMessage message: String,yesTitle: String, noTitle: String, closer:(()-> Void)? = nil){
        let alertController =   UIAlertController(title: Utils.AppName(), message: message, preferredStyle: .alert)
        let noAction = UIAlertAction(title: noTitle, style: .default, handler: nil)
        let yesAction = UIAlertAction(title: yesTitle, style: .default) { (action:UIAlertAction!) in
            closer?()
        }
        alertController.addAction(noAction)
        alertController.addAction(yesAction)
        UIApplication.shared.windows.filter {$0.isKeyWindow}.first?.rootViewController?.present(alertController, animated: true, completion: nil)
        //        UIApplication.shared.keyWindow?.rootViewController?.present(alertController, animated: true, completion: nil)
    }
    
}
