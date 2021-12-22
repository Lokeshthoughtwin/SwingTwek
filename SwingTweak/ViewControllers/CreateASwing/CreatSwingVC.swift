//
//  CreatSwingVC.swift
//  SwingTweak
//
//  Created by apple on 13/12/21.
//

import UIKit
import Photos
import AVFoundation
import AVKit
import MobileCoreServices

class CreatSwingVC: UIViewController, UITableViewDelegate,UITableViewDataSource,UIImagePickerControllerDelegate, UINavigationControllerDelegate,fatchImage, protoClaimFlag,protoBackVc {
    
    func flagVc(blflag: Bool) {
        if blflag{
            btnDeleteSwing.isHidden = false
        }else{
            btnDeleteSwing.isHidden = true
        }
        blFlagDraft = false
    }
    
    func getClam(blflag: Bool) {
        let vc = MainClass.HomeStoryboard.instantiateViewController(withIdentifier: "DraftSwingVC") as! DraftSwingVC
        vc.blFlag = true
        // vc.dalegat = self
        self.navigationController?.pushViewController(vc, animated: false)
    }
    
    func getImage(imgThumb: UIImage) {
        self.thumbnilImg = URL(string: "file:///private/var/mobile/Containers/Data/Application/CEC52E12-DC79-47D6-9D9B-99990D9CD04A/tmp/66142445713__3BA91199-A991-4703-BA05-2F9B61E5ECE6.MOV")
        
        let tempIndex = IndexPath(item: 0, section: 0)
        if blfaceOn{
            let cell = tblFaceOn.dequeueReusableCell(withIdentifier: "FaceOnTVCell", for: tempIndex) as! FaceOnTVCell
            self.thumbnilImg2 = self.thumbnilImg
            
            cell.imgVideo.image = imgThumb
            // cell.vwPhoto.isHidden = true
            tblFaceOn.reloadData()
        }else{
            let cell = tblDtl.dequeueReusableCell(withIdentifier: "DTLTVCell", for: tempIndex) as! DTLTVCell
            // cell.vwPhoto.isHidden = true
            self.thumbnilImg2 = self.thumbnilImg
            
            cell.imgVideo.image = imgThumb
            //  self.thumbnilImg = "url" as! URL
            
            tblDtl.reloadData()
        }
    }
    
    @IBOutlet weak var txtView: UITextView!
    @IBOutlet weak var tblFaceOn: UITableView!
    @IBOutlet weak var tblDtl: UITableView!
    @IBOutlet weak var lblBtmTweak: UILabel!
    
    @IBOutlet weak var btnDeleteSwing: UIButton!
    //vwBottom
    @IBOutlet weak var vwProfile: UIView!
    @IBOutlet weak var vwCreatSwing: UIView!
    @IBOutlet weak var vwSwings: UIView!
    @IBOutlet weak var vwTweaks: UIView!
    @IBOutlet weak var nsLayoutLeadStack: NSLayoutConstraint!
    @IBOutlet weak var nsLayoutTrailStack: NSLayoutConstraint!
    let imagePickerController = UIImagePickerController()
    var thumbnilImg:URL?
    var thumbnilImg2:URL?
    var blfaceOn = false
    var bldtl = false
    var blDtlFaceOn = false
    var blFlagDraft = false
    var rowTbl = 1
    override func viewDidLoad() {
        super.viewDidLoad()
        DispatchQueue.main.async {
            if UserDefaults.standard.bool(forKey: "signup"){
                self.vwCreatSwing.isHidden = true
                self.lblBtmTweak.text = "Your Tweaks"
                self.nsLayoutLeadStack.constant = 36
                self.nsLayoutTrailStack.constant = 36
            }
            
            DispatchQueue.main.async {
                self.txtView.layer.cornerRadius = 10
                self.txtView.layer.borderWidth = 1
                self.txtView.layer.borderColor = Constant.AppColor.darkGreenColor.cgColor
            }
            
            if self.blFlagDraft{
                self.btnDeleteSwing.isHidden = false
            }else{
                self.btnDeleteSwing.isHidden = true
            }
            self.blFlagDraft = false
        }
        //         tblDtl.reloadData()
        //         tblFaceOn.reloadData()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        //        if blFlagDraft == false{
        //            btnDeleteSwing.isHidden = true
        //        }else{
        //            btnDeleteSwing.isHidden = false
        //
        //        }
        //  DispatchQueue.as
        
        let seconds = 4.0
        DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
            self.blFlagDraft = false
            
            // Put your code which should be executed with a delay here
        }
        
    }
    
    @IBAction func actionProfile(_ sender: Any) {
        let vc = MainClass.HomeStoryboard.instantiateViewController(withIdentifier: "MyProfileVC") as! MyProfileVC
        self.navigationController?.pushViewController(vc, animated: false)
    }
    
    @IBAction func actionCreatSwing(_ sender: Any) {
        //         let vc = MainClass.HomeStoryboard.instantiateViewController(withIdentifier: "CreatSwingVC") as! CreatSwingVC
        //        self.navigationController?.pushViewController(vc, animated: false)
    }
    
    @IBAction func actionSaveSwing(_ sender: Any) {
        let vc = MainClass.HomeStoryboard.instantiateViewController(withIdentifier: "DraftSwingVC") as! DraftSwingVC
        blFlagDraft = true
        vc.dalegat = self
        vc.blFlag = true
        self.navigationController?.pushViewController(vc, animated: false)
    }
    
    @IBAction func actionDelete(_ sender: Any) {
        
        //        let vc = MainClass.PopUp.instantiateViewController(withIdentifier: "ClaimSwingVC") as! ClaimSwingVC
        //        vc.dalegat = self
        //        vc.strFlag = "delete"
        //        self.navigationController?.pushViewController(vc, animated: false)
        //
        
        let vc = MainClass.PopUp.instantiateViewController(withIdentifier: "ClaimSwingVC") as! ClaimSwingVC
        vc.dalegat = self
        vc.strFlag = "delete"
        vc.modalPresentationStyle = .overCurrentContext
        self.present(vc, animated: true)
        
        // self.ConfirmationYesAndNo(withMessage: "Are you sure you want to delete this swing?", yesTitle: "Yes", noTitle: "No") {
        // self.callApiUpdateGroup()//member Delete from list
        
    }
    
    
    @IBAction func actionSubmitSwing(_ sender: Any) {
        let vc = MainClass.HomeStoryboard.instantiateViewController(withIdentifier: "DraftSwingVC") as! DraftSwingVC
        vc.blFlag = false
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
    
    func galleryOpen(){
        imagePickerController.sourceType = .photoLibrary
        imagePickerController.delegate = self
        imagePickerController.mediaTypes = ["public.movie"]
        self.present(imagePickerController, animated: true, completion: nil)
    }
    
    func cameraOpen()
    {
        let vc = MainClass.HomeStoryboard.instantiateViewController(withIdentifier: "FaceOnTypeVC") as! FaceOnTypeVC
        vc.dalegat = self
        vc.dtlOrFaceOn = self.blDtlFaceOn
        self.navigationController?.pushViewController(vc, animated: false)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        dismiss(animated: true) {
            let url = info[UIImagePickerController.InfoKey.mediaURL] as? URL
            guard let mediaURL = info[UIImagePickerController.InfoKey.mediaURL] as? URL else { return }
            
            let data = self.generateThumbnail(path: mediaURL)!.jpegData(compressionQuality: 0.25)
            do {
                let urlString = String(describing: Utils.getAppDocumentDirectory()) + String(Utils.getCurrentTimeInterval()) + ".jpg"
                if let url = URL(string: urlString){
                    try data?.write(to: url, options: .atomicWrite)
                    
                    if self.blfaceOn{
                        self.thumbnilImg = url
                        self.tblFaceOn.reloadData()
                    }else{
                        self.thumbnilImg2 = url
                        self.tblDtl.reloadData()
                    }
                }
            }catch( _){
                
            }
            print(url,mediaURL)
        }
    }
    
    func generateThumbnail(path: URL) -> UIImage? {
        do {
            let asset = AVURLAsset(url: path, options: nil)
            let imgGenerator = AVAssetImageGenerator(asset: asset)
            imgGenerator.appliesPreferredTrackTransform = true
            let cgImage = try imgGenerator.copyCGImage(at: CMTimeMake(value: 0, timescale: 1), actualTime: nil)
            let thumbnail = UIImage(cgImage: cgImage)
            
            let tempIndex = IndexPath(item: 0, section: 0)
            if blfaceOn{
                let cell = tblFaceOn.dequeueReusableCell(withIdentifier: "FaceOnTVCell", for: tempIndex) as! FaceOnTVCell
                cell.imgVideo.image = thumbnail
                tblFaceOn.reloadData()
            }else{
                let cell = tblDtl.dequeueReusableCell(withIdentifier: "DTLTVCell", for: tempIndex) as! DTLTVCell
                cell.imgVideo.image = thumbnail
                tblDtl.reloadData()
            }
            
            
            let urlExtension: String? = path.pathExtension
            //self.fileFormat = urlExtension ?? ""
            return thumbnail
        } catch let error {
            print("*** Error generating thumbnail: \(error.localizedDescription)")
            return nil
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       // if tableView == tblFaceOn{
            return rowTbl
       // }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if tableView == tblFaceOn{
            let cell = tblFaceOn.dequeueReusableCell(withIdentifier: "FaceOnTVCell", for: indexPath) as! FaceOnTVCell
            cell.openCamera = {
                //Code
                self.blDtlFaceOn = true
                self.cameraOpen()
                self.blfaceOn = true
                self.bldtl = false
                print("valecamerry")
            }
            cell.openGallery = {
                //Code
                self.galleryOpen()
                self.blfaceOn = true
                self.bldtl = false
                print("ga")
            }
            cell.removeImage = {
                //Code
                cell.vwShowImg.isHidden = true
                cell.vwPhoto.isHidden = false
                cell.vwFaceOn.isHidden = true
                self.thumbnilImg = nil
                
                print("ga")
            }
            if thumbnilImg != nil{
                cell.vwShowImg.isHidden = false
            }
            cell.selectionStyle = .none
            return cell
        }else{
            let cell = tblDtl.dequeueReusableCell(withIdentifier: "DTLTVCell", for: indexPath) as! DTLTVCell
            
            cell.openCamera = { [self] in
                //Code
                self.blDtlFaceOn = false
                self.cameraOpen()
                self.blfaceOn = false
                self.bldtl = true
                print("valecamerry")
            }
            cell.openGallery = {
                //Code
                self.galleryOpen()
                self.blfaceOn = false
                self.bldtl = true
                print("ga")
            }
            cell.removeImage = {
                //Code
                cell.vwShowImg.isHidden = true
                cell.vwPhoto.isHidden = false
                cell.vwDtl.isHidden = true
                self.thumbnilImg2 = nil
                
                print("ga")
            }
            if self.thumbnilImg2 != nil{
                cell.vwShowImg.isHidden = false
            }
            cell.selectionStyle = .none
            
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 124
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if tableView == tblFaceOn{
            let cell = tblFaceOn.dequeueReusableCell(withIdentifier: "FaceOnTVCell", for: indexPath) as! FaceOnTVCell
            cell.vwFaceOn.isHidden = true
            cell.vwPhoto.isHidden = false
            self.tblFaceOn.reloadData()
        }else {
            let cell = tblDtl.dequeueReusableCell(withIdentifier: "DTLTVCell", for: indexPath) as! DTLTVCell
            cell.vwDtl.isHidden = true
            cell.vwPhoto.isHidden = false
            self.tblDtl.reloadData()
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
