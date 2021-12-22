//
//  DraftSwingVC.swift
//  SwingTweak
//
//  Created by apple on 13/12/21.
//

import UIKit
import Photos
import AVFoundation
import AVKit

protocol protoBackVc {
    func flagVc(blflag:Bool)
}

class DraftSwingVC: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    //MARK: - @@IBOutlet
    
    @IBOutlet weak var lblSwing: UILabel!
    @IBOutlet weak var tblDraft: UITableView!
    var blFlag = false
    
    //vwBottom
    @IBOutlet weak var vwProfile: UIView!
    @IBOutlet weak var vwCreatSwing: UIView!
    @IBOutlet weak var vwSwings: UIView!
    @IBOutlet weak var vwTweaks: UIView!
    @IBOutlet weak var nsLayoutLeadStack: NSLayoutConstraint!
    @IBOutlet weak var nsLayoutTrailStack: NSLayoutConstraint!
    @IBOutlet weak var lblBtmTweak: UILabel!
    
    var dalegat : protoBackVc!
    
    //MARK: - APPLICATION LIFE CYCLE
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if UserDefaults.standard.bool(forKey: "signup"){
            self.vwCreatSwing.isHidden = true
            lblSwing.text = "Swings needing tweaks"
            lblBtmTweak.text = "Your Tweaks"
            
            nsLayoutLeadStack.constant = 36
            nsLayoutTrailStack.constant = 36
        }else{
            if blFlag{
                lblSwing.text = "Draft Swings"
            }else{
                lblSwing.text = "Active Swings"
            }
        }
        
        // First load table nib
        let bundle = Bundle(for: type(of: self))
        // Then delegate the TableView
        self.tblDraft.delegate = self
        self.tblDraft.dataSource = self
        
        // Set resizable table bounds
        self.tblDraft.frame = self.view.bounds
        self.tblDraft.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        
        // Register table cell class from nib
        let tableNib = UINib(nibName: "DraftSwingTVCell", bundle: bundle)
        //  let tableNibView = tableNib.instantiate(withOwner: self, options: nil)[0] as! UIView
        let cellNib = UINib(nibName: "DraftSwingTVCell", bundle: bundle)
        self.tblDraft.register(cellNib, forCellReuseIdentifier: "DraftSwingTVCell")
        
        // Register table cell class from nib
        let tableNibSwing = UINib(nibName: "SwingListProTVCell", bundle: bundle)
        // let tableNibView = tableNibSwing.instantiate(withOwner: self, options: nil)[0] as! UIView
        let cellNibSwing = UINib(nibName: "SwingListProTVCell", bundle: bundle)
        self.tblDraft.register(cellNibSwing, forCellReuseIdentifier: "SwingListProTVCell")
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
        
        var blvc = false
        for controller in self.navigationController!.viewControllers as Array {
            if controller.isKind(of: CreatSwingVC.self) {
                if dalegat != nil{
                    dalegat.flagVc(blflag: blFlag)
                }
                self.navigationController!.popToViewController(controller, animated: false)
                blvc = true
                break
            }
        }
        if blvc == false{
            let vc = MainClass.HomeStoryboard.instantiateViewController(withIdentifier: "CreatSwingVC") as! CreatSwingVC
            vc.blFlagDraft = blFlag
            self.navigationController?.pushViewController(vc, animated: false)
        }
    }
    
    @IBAction func actionSwing(_ sender: Any) {
        //        for controller in self.navigationController!.viewControllers as Array {
        //            if controller.isKind(of: SwingsVC.self) {
        //                self.navigationController!.popToViewController(controller, animated: true)
        //                break
        //            }
        //        }
    }
    
    @IBAction func actionTweaks(_ sender: Any) {
        
        let vc = MainClass.HomeStoryboard.instantiateViewController(withIdentifier: "TweaksVC") as! TweaksVC
        self.navigationController?.pushViewController(vc, animated: false)
        
        //        for controller in self.navigationController!.viewControllers as Array {
        //            if controller.isKind(of: TweaksVC.self) {
        //                self.navigationController!.popToViewController(controller, animated: true)
        //                break
        //            }
        //        }
    }
    
    //MARK: - viewForHeaderInSection
    //    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
    //        let vw = UIView()
    //        vw.layer.backgroundColor = UIColor.white.cgColor
    //        return vw
    //    }
    
    //MARK: - numberOfSections
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    //MARK: - heightForHeaderInSection
    //     func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
    //        return 0
    //     }
    
    //MARK: - numberOfRowsInSection
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    //MARK: - cellForRowAt
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if UserDefaults.standard.bool(forKey: "signup"){
            let cell = self.tblDraft.dequeueReusableCell(withIdentifier: "SwingListProTVCell", for: indexPath) as! SwingListProTVCell
            cell.selectionStyle = .none
            cell.layer.cornerRadius = 10
            return cell
        }else{
            let cell = self.tblDraft.dequeueReusableCell(withIdentifier: "DraftSwingTVCell", for: indexPath) as! DraftSwingTVCell
            cell.selectionStyle = .none
            
            if blFlag{
                cell.lblMsg.text = "We are just waiting on you to submit this swing."
                // cell.lblStatus.text = ""
            }else{
                cell.lblMsg.text = "Finding you a PGA Pro"
                // cell.lblStatus.text = ""
            }
            cell.layer.cornerRadius = 10
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if UserDefaults.standard.bool(forKey: "signup"){
            let vc = MainClass.ProGolfSB.instantiateViewController(withIdentifier: "SwingDetailProVC") as! SwingDetailProVC
            self.navigationController?.pushViewController(vc, animated: false)
        }else{
            if blFlag{
                //draft
                //                let vc = MainClass.HomeStoryboard.instantiateViewController(withIdentifier: "CreatSwingVC") as! CreatSwingVC
                //                self.navigationController?.pushViewController(vc, animated: false)
                
                var blvc = false
                for controller in self.navigationController!.viewControllers as Array {
                    if controller.isKind(of: CreatSwingVC.self) {
                        if dalegat != nil{
                            dalegat.flagVc(blflag: blFlag)
                        }
                        self.navigationController!.popToViewController(controller, animated: false)
                        blvc = true
                        break
                    }
                }
                if blvc == false{
                    let vc = MainClass.HomeStoryboard.instantiateViewController(withIdentifier: "CreatSwingVC") as! CreatSwingVC
                    vc.blFlagDraft = blFlag
                    self.navigationController?.pushViewController(vc, animated: false)
                }
                
            }else{
                //active
                let vc = MainClass.HomeStoryboard.instantiateViewController(withIdentifier: "ActiveSwingDetilVC") as! ActiveSwingDetilVC
                self.navigationController?.pushViewController(vc, animated: false)
            }
        }
    }
}
