//
//  Constant.swift
//  TOLK1
//
//  Created by admin on 07/09/16.
//  Copyright © 2016
//  SignUpURL

import Foundation
import UIKit
let prefs = UserDefaults.standard;

struct Constant {
    
    static let appVersion = "1.0"
    
    static let BaseURL = "https://actiwee-staging.s3.eu-central-1.amazonaws.com/image/"

//    static let authUrl = "http://18.196.143.106:4000/"  // staging
//    static let socketURL = "ws://18.196.143.106:8989/websocket" // staging socket

    static let authUrl = "http://192.168.0.44:4000/"  // local ip
    static let socketURL = "ws://192.168.0.44:8989/websocket" // local socket
    
    static let termsConditionURL = "http://18.196.143.106/" // TERMS AND CONDITION
 
    static let serverUrl = "\(Constant.authUrl)api/v1/"
    static let packageListUrl = "\(Constant.serverUrl)plan-list/"
    static let signupUrl = "\(Constant.serverUrl)sign-up/"
    static let loginUrl = "\(Constant.serverUrl)login/"
    static let forgotPasswordUrl = "\(Constant.serverUrl)forgot-password/"
    static let socialLoginUrl = "\(Constant.serverUrl)social-login/"
    static let socialRegisterUrl = "\(Constant.serverUrl)social-register/"
    static let eventListUrl = "\(Constant.serverUrl)event-list/"
    static let createActivityUrl = "\(Constant.serverUrl)activity/"
    static let applicationUrl = "\(Constant.serverUrl)social-register/"
    static let joinActivityUrl = "\(Constant.serverUrl)join-activity/"
    static let updateLanguageUrl = "\(Constant.serverUrl)update-language/"
    static let photoUrl = "\(Constant.serverUrl)social-register/"
    static let GeneratSignedUrl = "\(Constant.serverUrl)Generat_signed_URL/"
    static let GeneratSignupSignedUrl = "\(Constant.serverUrl)get-pre-signed-url-profile/"
    static let SearchActivityUrl = "\(Constant.serverUrl)search-activity/"
    static let InviteUserListUrl = "\(Constant.serverUrl)user-list/"
    static let otherUserProfileUrl = "\(Constant.serverUrl)view-other-profile/"
    static let viewProfileUrl = "\(Constant.serverUrl)view-profile/"
    static let updateProfileUrl = "\(Constant.serverUrl)update-profile/"
    static let reportActivityUrl = "\(Constant.serverUrl)activity-report/"
    static let chatListUrl = "\(Constant.serverUrl)chat-list/"
    static let getPublicKey = "\(Constant.serverUrl)get-key/"
    static let notificationListUrl = "\(Constant.serverUrl)notification-list/"
    static let activityMemberUrl = "\(Constant.serverUrl)activity-member/"
    static let clearChatUrl = "\(Constant.serverUrl)clear-chat/"
    static let activityUrl = "\(Constant.serverUrl)activity/"
    static let getChatHistoryUrl = "\(Constant.serverUrl)get-chat/"
    static let updateLocationUrl = "\(Constant.serverUrl)update-location/"
    static let logoutUrl = "\(Constant.serverUrl)logout/"
    static let exitUrl = "\(Constant.serverUrl)exit-activity/"
    static let deleteUrl = "\(Constant.serverUrl)activity/"
    static let muteNotificationUrl = "\(Constant.serverUrl)push-notification-activate-deactivate/"
    static let myActivityUrl = "\(Constant.serverUrl)my-activity/"
    static let joinedActivityUrl = "\(Constant.serverUrl)joined-activity/"
    static let userBlockUnblockUrl = "\(Constant.serverUrl)user-block-unblock/"
    static let blockUserListUrl = "\(Constant.serverUrl)block-user-list/"
    static let resetPasswordUrl = "\(Constant.serverUrl)reset-password/"
    static let kickActivityMemberUrl = "\(Constant.serverUrl)kick-activity-member/"
    static let chatCountResetUrl = "\(Constant.serverUrl)chat-count-reset/"
    static let contactUsUrl = "\(Constant.serverUrl)contact-us/"
    static let groupNotification = "\(Constant.serverUrl)activity-notification-activate-deactivate/"
    
     /*
     user-block-unblock/
     blockUnblockUser
     */
    
    //Activi  client google credential
    // On google developer consol , App name is "my activity"
    static let gidSignInCliendId = "93715839694-k4rm65r7osg65qeunect0a80bdf7ir9e.apps.googleusercontent.com"
    static let gMSPlacesClientKey = "AIzaSyD1TOANI-CqiQ8DchP3xOnKnHUdZEey-NY"
    static let gMSServicesKey = "AIzaSyD1TOANI-CqiQ8DchP3xOnKnHUdZEey-NY"
    
    //730918680240-oukgg8b60ikugr0f2f7o709q0qnkhr3u.apps.googleusercontent.com
    
    static let SUCCESS = 200
    static let SUCCESS2 = 202
    static let SUCCESS1 = 201
    static let ERROR = 500
    static let INVALID_CREDENTIALS_STATUS = 403
    static let INVALID_TOKEN = 401
    static let ALREADY_EXISTS = 409
    static let NOT_FOUND = 404
    static let AGENT_ID = "ae3b9044-673f-4e30-82c1-9dd4d588fcb6"
    
    static let MAP_RADIUS = 5
    
    //Notification status
    static let ACTIVITY_CHAT = 1
    static let ACTIVITY_activate = 4
    static let ACTIVITY_join = 5
    static let ACTIVITY_leave = 6
    static let ACTIVITY_invite = 7
    static let ACTIVITY_nearby = 8
    static let ACTIVITY_delete = 9
 
    
    /*
     Notification type :-
     chat = 1
     activity activate=4
     activity join=5
     activity leave=6
     activity invite=7
     activity nearby=8
     activity delete=9
 */
    
    //Login type
    static var FACEBOOK = "FACEBOOK"
    static var GPLUS = "GOOGLE"
    static var LOGINSIMPLE = "normal"
    
    //Language
    static var ENGLISH = "English"
    static var TURKISH = "Turkish"
    
    //SKILL LEVEL
    static var BEGINNER = "BEGINNER"
    static var AVERAGE = "AVERAGE"
    static var SKILLED = "SKILLED"
    static var SPECIALIST = "SPECIALIST"
    static var EXPERT = "EXPERT"
    
    //SHARE TYPE
    static var PUBLIC = "PUBLIC"
    static var PRIVATE = "PRIVATE"
    
    //Helvetica
    struct AppFontName {
        static let Geometr231ight : String = "Geometr231 Lt Bt"
        static let Geometr231Bold  : String = "Geometr231 Bt"
        static let Geometr231Regular  : String = "Geometr231 Lt"
    }
    
    struct AppColor {
        static let blackColor : UIColor = UtilityClass.UIColorFromHex(rgbValue: 0x000000, alpha: 1.0)
        static let graytxtBgColor : UIColor = UtilityClass.UIColorFromHex(rgbValue: 0xE5E5E5, alpha: 1.0)
        static let redColor : UIColor = UtilityClass.UIColorFromHex(rgbValue: 0xFF6961, alpha: 1.0)
        static let darkGreenColor : UIColor = UtilityClass.UIColorFromHex(rgbValue: 0x3C505C, alpha: 1.0)

        
        //static let blackColor : UIColor = UtilityClass.UIColorFromHex(rgbValue: 0x000000, alpha: 1.0)

    }
 
    func calculateHeightForString(_ inString:String, sz : Float) -> CGFloat
    {
        let messageString = inString
        let attributes = [NSAttributedString.Key.font: UIFont.systemFont(ofSize: CGFloat(sz))]
        let attrString:NSAttributedString? = NSAttributedString(string: messageString, attributes: attributes)
        let rect:CGRect = attrString!.boundingRect(with: CGSize(width : 300, height : CGFloat.greatestFiniteMagnitude), options: NSStringDrawingOptions.usesLineFragmentOrigin, context:nil)   //hear u will get nearer height not the exact value
        let requredSize:CGRect = rect
        return requredSize.height         //requredSize.height  //to include button's in your tableview
    }
}

struct ScreenSize{
    static let SCREEN_WIDTH = UIScreen.main.bounds.size.width;
    static let SCREEN_HEIGHT = UIScreen.main.bounds.size.height;
    static let SCREEN_MAX_LENGTH  = max(ScreenSize.SCREEN_WIDTH, ScreenSize.SCREEN_HEIGHT);
    static let SCREEN_MIN_LENGTH = min(ScreenSize.SCREEN_WIDTH, ScreenSize.SCREEN_HEIGHT);
}

struct DeviceType{
    static let IS_IPHONE_4_OR_LESS  = UIDevice.current.userInterfaceIdiom == .phone && ScreenSize.SCREEN_MAX_LENGTH < 568.0
    static let IS_IPHONE_5          = UIDevice.current.userInterfaceIdiom == .phone && ScreenSize.SCREEN_MAX_LENGTH == 568.0
    static let IS_IPHONE_6          = UIDevice.current.userInterfaceIdiom == .phone && ScreenSize.SCREEN_MAX_LENGTH == 667.0
    static let IS_IPHONE_6P         = UIDevice.current.userInterfaceIdiom == .phone && ScreenSize.SCREEN_MAX_LENGTH == 736.0
    static let IS_IPHONE_X          = UIDevice.current.userInterfaceIdiom == .phone && ScreenSize.SCREEN_MAX_LENGTH == 812.0
    static let IS_IPAD              = UIDevice.current.userInterfaceIdiom == .pad && ScreenSize.SCREEN_MAX_LENGTH == 1024.0
}

var fontRegular14 : UIFont = UIFont(name: Constant.AppFontName.Geometr231ight  , size: 14.0)!
var fontLight16 : UIFont = UIFont(name: Constant.AppFontName.Geometr231ight  , size: 16.0)!
var fontLight12 : UIFont = UIFont(name: Constant.AppFontName.Geometr231ight  , size: 12.0)!
var fontLight20 : UIFont = UIFont(name: Constant.AppFontName.Geometr231ight  , size: 20.0)!
var fontBold30 : UIFont = UIFont(name: Constant.AppFontName.Geometr231ight  , size: 30.0)!

struct MainClass {
    
    static let appDelegate = UIApplication.shared.delegate as! AppDelegate
    static let mainStoryboard = UIStoryboard(name: "Main", bundle: Bundle.main)
    static let HomeStoryboard = UIStoryboard(name: "HomeStoryboard", bundle: .main)
    static let ProGolfSB = UIStoryboard(name: "ProGolfSB", bundle: .main)
    static let PopUp = UIStoryboard(name: "PopUpSB", bundle: .main)

    
//    static let Principal = UIStoryboard(name: "Principal", bundle: .main)
//    static let District = UIStoryboard(name: "District", bundle: .main)
//    static let CommentReply = UIStoryboard(name: "CommentReply", bundle: .main)
//    static let ChatController = UIStoryboard(name: "ChatController", bundle: .main)
//    static let webService = Apimanager.sharedManager
    
}
