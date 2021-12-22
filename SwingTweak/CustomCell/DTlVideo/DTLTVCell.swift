//
//  DTLTVCell.swift
//  SwingTweak
//
//  Created by apple on 14/12/21.
//

import UIKit

class DTLTVCell: UITableViewCell {

    @IBOutlet weak var vwDtl: CustomUIView!
    @IBOutlet weak var vwPhoto: CustomUIView!
    @IBOutlet weak var vwShowImg: CustomUIView!
    @IBOutlet weak var imgVideo: UIImageView!
    
    @IBOutlet weak var btnGallery: UIButton!
    @IBOutlet weak var btnCamera: UIButton!
    @IBOutlet weak var btnRemoveImage: UIButton!

    //create your closure here
    var openCamera : (() -> ()) = {}
    var openGallery : (() -> ()) = {}
    var removeImage : (() -> ()) = {}

     
    @IBAction func actionCamera(_ sender: UIButton) {
        //Call your closure here
        openCamera()
    }
    
    @IBAction func actionGallery(_ sender: UIButton) {
        //Call your closure here
        openGallery()
    }
    
    @IBAction func actionRemoveImg(_ sender: UIButton) {
        //Call your closure here
        removeImage()
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
