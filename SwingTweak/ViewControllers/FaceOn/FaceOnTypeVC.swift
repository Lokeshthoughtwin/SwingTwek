//
//  FaceOnTypeVC.swift
//  SwingTweak
//
//  Created by apple on 14/12/21.
//

import UIKit
import Photos
import AVFoundation
import AVKit
import MobileCoreServices

protocol fatchImage{
    func getImage(imgThumb:UIImage)
}

class FaceOnTypeVC: UIViewController,UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    @IBOutlet weak var lblTime: UILabel!
    @IBOutlet weak var lblFaceType: UILabel!
    
    @IBOutlet weak var btnFaceType: KGHighLightedButton!
    @IBOutlet weak var tblFace: UITableView!
    
    @IBOutlet weak var imgSwing: UIImageView!
    //vwBottom
    @IBOutlet weak var vwProfile: UIView!
    @IBOutlet weak var vwCreatSwing: UIView!
    @IBOutlet weak var vwSwings: UIView!
    @IBOutlet weak var vwTweaks: UIView!
    
    var aryList = ["LH","RH","OFF"]
    var strFlag = ""
    let imagePickerController = UIImagePickerController()
    var dalegat : fatchImage!
    var dtlOrFaceOn = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //        if UserDefaults.standard.bool(forKey: "signup"){
        //            self.vwSwings.isHidden = true
        //        }
        tblFace.layer.cornerRadius = 10
        tblFace.isHidden = true
        
        if dtlOrFaceOn{
            //face on
            self.lblFaceType.text = "Example of Face On"
            imgSwing.image = UIImage(named: "faceTypeLh")
        }else{
            //dtl
            imgSwing.image = UIImage(named: "dtlLh")
            lblFaceType.text = "Example of Down The Line"
        }
        // Do any additional setup after loading the view.
    }
    
    @IBAction func actionRecording(_ sender: Any) {
        openCamera()
    }
    
    @IBAction func actionFaceType(_ sender: Any) {
        tblFace.isHidden = false
    }
    
    @IBAction func actionBack(_ sender: Any) {
        self.navigationController?.popViewController(animated: false)
    }
    
    func setFaceOn(){
        if dtlOrFaceOn{
            // FACEON
            if self.strFlag == "LH"{
                imgSwing.isHidden = false
                self.lblFaceType.isHidden = false
                imgSwing.image = UIImage(named: "faceTypeLh")
                self.lblFaceType.text = "Example of Face On"
                btnFaceType.setTitle("LH", for: .normal)
            }else if self.strFlag == "RH"{
                imgSwing.isHidden = false
                self.lblFaceType.isHidden = false
                imgSwing.image = UIImage(named: "swingL")
                self.lblFaceType.text = "Example of Face On"
                btnFaceType.setTitle("RH", for: .normal)
            }else{
                imgSwing.isHidden = true
                self.lblFaceType.isHidden = true
                btnFaceType.setTitle("OFF", for: .normal)
            }
        }else{
            //DTL
            if self.strFlag == "LH"{
                imgSwing.isHidden = false
                self.lblFaceType.isHidden = false
                imgSwing.image = UIImage(named: "dtlLh")
                lblFaceType.text = "Example of Down The Line"
                btnFaceType.setTitle("LH", for: .normal)
            }else if self.strFlag == "RH"{
                imgSwing.isHidden = false
                self.lblFaceType.isHidden = false
                imgSwing.image = UIImage(named: "DTLrh")
                lblFaceType.text = "Example of Down The Line"
                btnFaceType.setTitle("RH", for: .normal)
            }else{
                imgSwing.isHidden = true
                self.lblFaceType.isHidden = true
                btnFaceType.setTitle("OFF", for: .normal)
            }
        }
    }
    
    //MARK: function
    func openCamera(){
        if(UIImagePickerController .isSourceTypeAvailable(UIImagePickerController.SourceType.camera)){
            //            imagePickerController.sourceType = UIImagePickerController.SourceType.camera
            //            imagePickerController.allowsEditing = true
            //            imagePickerController.delegate = self
            //            self.present(imagePickerController, animated: true, completion: nil)
            
            self.imagePickerController.sourceType = .camera
            self.imagePickerController.delegate = self
            self.imagePickerController.mediaTypes = ["public.movie"]
            self.present(self.imagePickerController, animated: true, completion: nil)
            
        }else{
            let alert  = UIAlertController(title: "Warning", message: "You don't have camera", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
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
                    
                    /// self.postDataForShareVideo()
                }
            }catch( _){
                
            }
            
            self.navigationController?.popViewController(animated: false)
            
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
            
            let urlExtension: String? = path.pathExtension
            if dalegat != nil{
                dalegat.getImage(imgThumb: thumbnail)
                self.navigationController?.popViewController(animated: false)
            }
            //self.fileFormat = urlExtension ?? ""
            return thumbnail
        } catch let error {
            print("*** Error generating thumbnail: \(error.localizedDescription)")
            return nil
        }
    }
}

extension FaceOnTypeVC : UITableViewDelegate,UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! UITableViewCell
        cell.textLabel?.text = aryList[indexPath.row] as! String
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 53
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.strFlag = aryList[indexPath.row] as! String
        tblFace.isHidden = true
        setFaceOn()
    }
}
