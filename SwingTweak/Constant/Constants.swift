//
//  Constants.swift
//  Trecco
//
//  Created by Jassie on 05/11/2019.
//  Copyright © 2019 
//

import Foundation
import SystemConfiguration
//import Alamofire

func genrateText(result : Any) -> String {
    if let data = result as? Data{
        return String.init(data: data, encoding: .utf8)!
    }else{
        var item:String = (result as? String) ?? ""
        if(item == ""){
            item = "\(result as? Int ?? -2)"
            if(item == "-2"){
                item = ""
            }
        }
        return item
    }
}


//dueet old  =  "AIzaSyBfRJPn3O6lg2WY4iC1CvWA73S9dDAeW1g"
// ttest="90731436032-hl7blgr3du117ng7c7gh924ta86j76h7.apps.googleusercontent.com"

struct ImageMapPins {
    static var StayIv = UIImage.init(named: "ic_stay_overall")!//?.compressed()
    static var DoIv = UIImage.init(named: "ic_do_overall")!//?.compressed()
    static var DrinkIv = UIImage.init(named: "ic_drink_overall")!//?.compressed()
    static var EatIv = UIImage.init(named: "ic_eat_overall")!//?.compressed()
    static let pinMarker = GMSMarker.markerImage(with: TreccoColor.gradientLeftColor)//GMSMarker.markerImage(with:TreccoColor.gradientRightColor)//TreccoColor.pinColor
    static let pinSelectedMarker = GMSMarker.markerImage(with: TreccoColor.gradientLeftColor)
}
//MARK: Google Keys updated with trecoo client proved details
let layerIdentifierTest             = "test-country-layeer-v2"
let mapBoxStyleUrl                  = "mapbox://styles/jaidee/ckb65fopk3fr81ip6q16ts4cw"//"mapbox://styles/jaidee/ck7bjujw300zh1io3nj2x9usv"
let mapBoxValue                     = "mapbox://jaidee.4fgr54kk"//"mapbox://jaidee.aqmqmk4i"
let countryKeyLayer                 = "countires_lists-2dqfi9"//"ne_10m_admin_0_countries_3-2fnz85"
let kResponseTimeFormat             = "yyyy-MM-dd HH:mm:ss"
let kResponseTimeFormatOnlyDate             = "yyyy-MM-dd"
let kTripCreatedDateFormate                  = "MMM d"
let kShareMsg                       = "I’m using Trecco to share and discover travel recommendations! Download now and start planning your next trip! https://testflight.apple.com/join/eDXUW215"//https://apps.apple.com/us/app/
let kUnSplashAccessKey              = "chn7anILXfzYcb32-raObDGJVQIG-L4jTs-NixqWWWQ"
let kUnSplashSecertKey              = "rNG-x0ZJMPy1I1mXH4HchGpc28BPb5n6DOxQeSt0tLM"
let kUserPlaceholder                = UIImage.init(named: "img1")!
let kChatPlaceholder                = UIImage.init(named: "ChatPlaceholder")!
let kGroupPlaceholder                = UIImage.init(named: "groupPlaceHolder")!
let kLocality                       = "locality"// for city
let kCellCountryIdentifier          = "kCellCountryIdentifier"
let kAdministrativeAreaLevel3       = "administrative_area_level_3"
let kAdministrativeAreaLevel1       = "administrative_area_level_1"// MARK: For city too if locality not exist
let kAdministrativeAreaLevel2       = "administrative_area_level_2"// MARK: For State
let kCountry                        = "country"// MARK: For Country if not exist then kAdministrativeAreaLevel1
let kPolitical                      = "political"
let kPostalCode                     = "postal_code"// MARK: For Postal Code
let kOneSignalId                    = "18101dc3-fda9-4b4e-9957-b78222294ca1"//"9fe158b3-4081-43ef-81ab-fc2dcf11acf7"//"7ef8d89b-ff3a-4440-a562-68c92c8baaea"
let kPoolId                         = "us-east-2:c90fdf18-4170-4202-a5a9-6691c2c8d6a6"
let kBucketName                     = "trecco-userfiles-mobilehub-2086078579"
let GOOGLE_CLIENT_ID                = "13430193144-cid6gluepemj2089h80k6oejv4sn6183.apps.googleusercontent.com"
//42829690485-6790d7t9ubnbenles7s0ts00q3enkr2g.apps.googleusercontent.com
//let placesKey                       = "AIzaSyAVGqg6utoXhEejF1ZFo-hvKEInA8KbcO8"// client
//Test purpoe HelpMe Key = "AIzaSyBfRJPn3O6lg2WY4iC1CvWA73S9dDAeW1g"//
let placesKey                       = "AIzaSyAVGqg6utoXhEejF1ZFo-hvKEInA8KbcO8"//"AIzaSyBfRJPn3O6lg2WY4iC1CvWA73S9dDAeW1g"
let kIntroImagesArray               = ["tutorial_img","toturial_2", "toturial_3", "toturial_4","toturial_5"]
let kIntroCollectionCell            = "IntroCollectionCell"
let kAdventureCell                  = "AdventureCell"
let kCategoryCollectionCell         = "CategoryCollectionCell"
let kMapItemListCell                = "MapItemListCell"
let kTripTypeListTableViewCell      = "TripTypeListTableViewCell"
let kNearByCollectionViewCell       = "NearByCollectionViewCell"
let kTypesArr                       = ["MAPS","LISTS","TRIPS","PEOPLE"]
let KMyProfileTypes                 = ["LISTS","TRIPS"]
let KProfileFollowers               = ["FOLLOWING","FOLLOWERS"]
let KMySavedFilter                  = ["RECOMMENDATION","LISTS","TRIPS"]//"Place",
let KSettingList                    = ["Profile Settings","Notification Settings" , "Invite Friends" , "Log Out"]
let kMapTypesArr                    = ["Eat","Drink","Stay","Do"]
let kMapTypesIconsArr               = ["ic_eat","ic_drink","ic_bed","ic_bike"]
let kFilterViewWidth                = 228
let kFilteViewHeight                = 275
let kMarkerDetailsHeight            = 300.0
let kFilterViewTag                  = 333
let kTempButtonTag                  = 555
let kUserPrefKey                    = "user"
let kUserNamePrefKey                = "userName"
let kLimitPage                      = 50
let kLimitPageChat                      = 100
let kLimitPageHome                      = 15
var kLimitRecoPage                  = 50//14//
let kLimitUserPage                  = 500
let isInvited                       = "isInvited"
let inviteMessage                   = "Hey! You should join me on Trecco. Here is the link!"
let inviteCodeKey                   = "invite_code"
var listMapSlection:[MultipleSelectionType] = [MultipleSelectionType]()

func kIntroScreenArray() ->[IntroScreenModel]{
    var list = [IntroScreenModel]()
    for index in 0..<5{
        var item = IntroScreenModel()
        switch index {
        case 0:
            item.title = ""//"TRECCO".uppercased()
            item.subTitle = "Know the world like it’s your hometown"
            item.description = "A global travel community built on trust"
            break
        case 1:
            /*
             "connect
             build a trusted community around friends, friends of friends, and travel experts in one convenient place"
             */
            item.title = "CONNECT"
            item.subTitle = "Build Your Community"
            item.description = "Find and follow your friends, friends of friends, and travel experts all on one platform"
            break
        case 2:
            item.title = "Discover".uppercased()
            item.subTitle = "The latest trends"
            item.description = "Recommendations shared from the people you trust and travel experts you choose to follow"
            break
        case 3:
            item.title = "Save & Plan".uppercased()
            item.subTitle = "Your next adventure"
            item.description = "Easily create a list for your next solo trip or collaborate with friends on an itinerary"
            break
        case 4:
            item.title = "Share".uppercased()
            item.subTitle = "Your recommendations"
            item.description = "Seamlessly share your favorite restaurants, bars, hotels and activities. Say goodbye to the days of shared docs."
            break
        default: break
            
        }
        list.append(item)
    }
    return list
}

class MultipleSelectionType:NSObject {
    var name:String = ""
    var isSelection:Bool = false
    init(nameType:String,selection:Bool) {
        self.name = nameType
        self.isSelection = selection
    }
}

func setupSelectionArray(){
    listMapSlection.removeAll()
    for item in kMapTypesArr {
        listMapSlection.append(MultipleSelectionType.init(nameType: item, selection: false))
    }
}

public class Reachability {
    
    class func isConnectedToNetwork() -> Bool {
        
        var zeroAddress = sockaddr_in(sin_len: 0, sin_family: 0, sin_port: 0, sin_addr: in_addr(s_addr: 0), sin_zero: (0, 0, 0, 0, 0, 0, 0, 0))
        zeroAddress.sin_len = UInt8(MemoryLayout.size(ofValue: zeroAddress))
        zeroAddress.sin_family = sa_family_t(AF_INET)
        
        let defaultRouteReachability = withUnsafePointer(to: &zeroAddress) {
            $0.withMemoryRebound(to: sockaddr.self, capacity: 1) {zeroSockAddress in
                SCNetworkReachabilityCreateWithAddress(nil, zeroSockAddress)
            }
        }
        
        var flags: SCNetworkReachabilityFlags = SCNetworkReachabilityFlags(rawValue: 0)
        if SCNetworkReachabilityGetFlags(defaultRouteReachability!, &flags) == false {
            return false
        }
        
        /* Only Working for WIFI
         let isReachable = flags == .reachable
         let needsConnection = flags == .connectionRequired
         
         return isReachable && !needsConnection
         */
        
        // Working for Cellular and WIFI
        let isReachable = (flags.rawValue & UInt32(kSCNetworkFlagsReachable)) != 0
        let needsConnection = (flags.rawValue & UInt32(kSCNetworkFlagsConnectionRequired)) != 0
        let ret = (isReachable && !needsConnection)
        
        return ret
        
    }
}

struct FontFamilyName {
    static let kBebaseNueueBold = "BebasNeue-Bold"
    static let kBebaseNueueBook = "BebasNeue-Book"
    static let kBebaseNueueLight = "BebasNeue-Light"
    static let kBebaseNueueRegular = "BebasNeue-Regular"
    static let kBebaseNueueThin = "BebasNeue-Thin"
    static let kAvenerHeavy = "Avenir-Heavy"
    static let kAvenerBook = "Avenir-Book"
    static let kAvenerBlack = "Avenir-Black"
    static let kAvenerOblique = "Avenir-Oblique"
    static let kRobotoCondensedRegular = "RobotoCondensed-Regular"
    static let kRobotoCondensedBold = "RobotoCondensed-Bold"
    static let kRobotoCondensedLight = "RobotoCondensed-Light"
    
    static let kNeuzeitGroLight = "NeuzeitGro-Lig"
    static let kNeuzeitGroBlack = "NeuzeitGro-Bla"
    static let kNeuzeitGroBold = "NeuzeitGro-Bol"
    static let kNeuzeitGroRegular = "NeuzeitGro-Reg"
    
    static let kNeuzeitSBook = "NeuzeitSBook"
    static let kNeuzeitGroExtBlack = "NeuzeitGroExt-Bla"//NeuzietGroExt-Bla
    static let kNeuzeitGroConBlack = "NeuzeitGroCon-Bla"
    static let kNeuzeitGroteskCondBlack = "NeuzeitGrotestCond-Black"
    static let kHelvaticNeueRegular = "HelveticaNeue"
    static let kHelvaticNeueBold = "HelveticaNeue-Bold"
    static let kHelvaticNeueMedium = "HelveticaNeue-Medium"
    static let kHelvaticNeueMediumItalic = "HelveticaNeue-MediumItalic"
    
    // MARK: New Font
    static let kDMSansBold = "DMSans-Bold"
    static let kDMSansBoldItalic = "DMSans-BoldItalic"
    static let kDMSansItalic = "DMSans-Italic"
    static let kDMSansMedium = "DMSans-Medium"
    static let kDMSansMediumItalic = "DMSans-MediumItalic"
    static let kDMSans = "DMSans-Regular"
    
    // MARK: SF-Pro-Display
    static let kSFProDisplayBlack = "SFProDisplay-Black"
    static let kSFProDisplayBlackItalic = "SFProDisplay-BlackItalic"
    static let kSFProDisplayBold = "SFProDisplay-Bold"
    static let kSFProDisplayBoldItalic = "SFProDisplay-BoldItalic"
    static let kSFProDisplayHeavy = "SFProDisplay-Heavy"
    static let kSFProDisplayHeavyItalic = "SFProDisplay-HeavyItalic"
    static let kSFProDisplayLight = "SFProDisplay-Light"
    static let kSFProDisplayLightItalic = "SFProDisplay-LightItalic"
    static let kSFProDisplayMedium = "SFProDisplay-Medium"
    static let kSFProDisplayMediumItalic = "SFProDisplay-MediumItalic"
    static let kSFProDisplayRegular = "SFProDisplay-Regular"
    static let kSFProDisplayRegularItalic = "SFProDisplay-RegularItalic"
    static let kSFProDisplaySemibold = "SFProDisplay-Semibold"
    static let kSFProDisplaySemiboldItalic = "SFProDisplay-SemiboldItalic"
    static let kSFProDisplayThin = "SFProDisplay-Thin"
    static let kSFProDisplayThinItalic = "SFProDisplay-ThinItalic"
    static let kSFProDisplayUltralight = "SFProDisplay-Ultralight"
    static let kSFProDisplayUltralightItalic = "SFProDisplay-UltralightItalic"
    
    // MARK: SF-Pro-Text
    
    static let kSFProTextBold = "SFProText-Bold"
    static let kSFProTextBoldItalic = "SFProText-BoldItalic"
    static let kSFProTextHeavy = "SFProText-Heavy"
    static let kSFProTextHeavyItalic = "SFProText-HeavyItalic"
    static let kSFProTextLight = "SFProText-Light"
    static let kSFProTextLightItalic = "SFProText-LightItalic"
    static let kSFProTextMedium = "SFProText-Medium"
    static let kSFProTextMediumItalic = "SFProText-MediumItalic"
    static let kSFProTextRegular = "SFProText-Regular"
    static let kSFProTextRegularItalic = "SFProText-RegularItalic"
    static let kSFProTextSemibold = "SFProText-Semibold"
    static let kSFProTextSemiboldItalic = "SFProText-SemiboldItalic"
}

//enum TreccoFont {
//
//    case kBebaseNueueBold(CGFloat)
//    case kBebaseNueueBook(CGFloat)
//    case kBebaseNueueLight(CGFloat)
//    case kBebaseNueueRegular(CGFloat)
//    case kBebaseNueueThin(CGFloat)
//    case kAvenerHeavy(CGFloat)
//    case kAvenerBook(CGFloat)
//    case kAvenerBlack(CGFloat)
//    case kAvenerOblique(CGFloat)
//    case kRobotoCondensedRegular(CGFloat)
//    case kRobotoCondensedBold(CGFloat)
//    case kRobotoCondensedLight(CGFloat)
//
//    case kNeuzeitGroLight(CGFloat)
//    case kNeuzeitGroBlack(CGFloat)
//    case kNeuzeitGroBold(CGFloat)
//    case kNeuzeitGroRegular(CGFloat)
//
//    case kNeuzeitSBook(CGFloat)
//    case kNeuzeitGroExtBlack(CGFloat)
//    case kNeuzeitGroConBlack(CGFloat)
//    case kNeuzeitGroteskCondBlack(CGFloat)
//
//    case kHelvaticNeueRegular(CGFloat)
//    case kHelvaticNeueBold(CGFloat)
//    case kHelvaticNeueMedium(CGFloat)
//    case kHelvaticNeueMediumItalic(CGFloat)
//
//    case kDMSansBold(CGFloat)
//    case kDMSansBoldItalic(CGFloat)
//    case kDMSansItalic(CGFloat)
//    case kDMSansMedium(CGFloat)
//    case kDMSansMediumItalic(CGFloat)
//    case kDMSans(CGFloat)
//
//    case kSFProDisplayBlack(CGFloat)
//    case kSFProDisplayBlackItalic(CGFloat)
//    case kSFProDisplayBold(CGFloat)
//    case kSFProDisplayBoldItalic(CGFloat)
//    case kSFProDisplayHeavy(CGFloat)
//    case kSFProDisplayHeavyItalic(CGFloat)
//    case kSFProDisplayLight(CGFloat)
//    case kSFProDisplayLightItalic(CGFloat)
//    case kSFProDisplayMedium(CGFloat)
//    case kSFProDisplayMediumItalic(CGFloat)
//    case kSFProDisplayRegular(CGFloat)
//    case kSFProDisplayRegularItalic(CGFloat)
//    case kSFProDisplaySemibold(CGFloat)
//    case kSFProDisplaySemiboldItalic(CGFloat)
//    case kSFProDisplayThin(CGFloat)
//    case kSFProDisplayThinItalic(CGFloat)
//    case kSFProDisplayUltralight(CGFloat)
//    case kSFProDisplayUltralightItalic(CGFloat)
//    case kSFProTextBold(CGFloat)
//    case kSFProTextBoldItalic(CGFloat)
//    case kSFProTextHeavy(CGFloat)
//    case kSFProTextHeavyItalic(CGFloat)
//    case kSFProTextLight(CGFloat)
//    case kSFProTextLightItalic(CGFloat)
//    case kSFProTextMedium(CGFloat)
//    case kSFProTextMediumItalic(CGFloat)
//    case kSFProTextRegular(CGFloat)
//    case kSFProTextRegularItalic(CGFloat)
//    case kSFProTextSemibold(CGFloat)
//
//    func font() -> UIFont {
//        switch self {
//        case .kBebaseNueueBold(let size) :
//            return UIFont(name: FontFamilyName.kBebaseNueueBold, size: size)!
//        case .kBebaseNueueBook(let size) :
//            return UIFont(name: FontFamilyName.kBebaseNueueBook, size: size)!
//        case .kBebaseNueueLight(let size) :
//            return UIFont(name: FontFamilyName.kBebaseNueueLight, size: size)!
//        case .kBebaseNueueRegular(let size) :
//            return UIFont(name: FontFamilyName.kBebaseNueueRegular, size: size)!
//        case .kBebaseNueueThin(let size) :
//            return UIFont(name: FontFamilyName.kBebaseNueueThin, size: size)!
//
//        case .kAvenerHeavy(let size) :
//            return UIFont(name: FontFamilyName.kAvenerHeavy, size: size)!
//        case .kAvenerBook(let size) :
//            return UIFont(name: FontFamilyName.kAvenerBook, size: size)!
//        case .kAvenerBlack(let size) :
//            return UIFont(name: FontFamilyName.kAvenerBlack, size: size)!
//        case .kAvenerOblique(let size) :
//            return UIFont(name: FontFamilyName.kAvenerOblique, size: size)!
//        //
//        case .kRobotoCondensedRegular(let size) :
//            return UIFont(name: FontFamilyName.kRobotoCondensedRegular, size: size)!
//        case .kRobotoCondensedBold(let size) :
//            return UIFont(name: FontFamilyName.kRobotoCondensedBold, size: size)!
//        case .kRobotoCondensedLight(let size) :
//            return UIFont(name: FontFamilyName.kRobotoCondensedLight, size: size)!
//
//        case .kNeuzeitGroLight(let size) :
//            return UIFont(name: FontFamilyName.kNeuzeitGroLight, size: size)!
//        case .kNeuzeitGroBlack(let size) :
//            return UIFont(name: FontFamilyName.kNeuzeitGroBlack, size: size)!
//        case .kNeuzeitGroBold(let size) :
//            return UIFont(name: FontFamilyName.kNeuzeitGroBold, size: size)!
//        case .kNeuzeitGroRegular(let size) :
//            return UIFont(name: FontFamilyName.kNeuzeitGroRegular, size: size)!
//        case .kNeuzeitSBook(let size) :
//            return UIFont(name: FontFamilyName.kNeuzeitSBook, size: size)!
//        case .kNeuzeitGroExtBlack(let size) :
//            return UIFont(name: FontFamilyName.kNeuzeitGroExtBlack, size: size)!
//        case .kNeuzeitGroConBlack(let size) :
//            return UIFont(name: FontFamilyName.kNeuzeitGroConBlack, size: size)!
//        case .kNeuzeitGroteskCondBlack(let size) :
//            return UIFont(name: FontFamilyName.kNeuzeitGroteskCondBlack, size: size)!
//        case .kHelvaticNeueRegular(let size):
//            return UIFont(name: FontFamilyName.kHelvaticNeueRegular, size: size)!
//        case .kHelvaticNeueBold(let size):
//            return UIFont(name: FontFamilyName.kHelvaticNeueBold, size: size)!
//        case .kHelvaticNeueMedium(let size):
//            return UIFont(name: FontFamilyName.kHelvaticNeueMedium, size: size)!
//        case .kHelvaticNeueMediumItalic(let size):
//            return UIFont(name: FontFamilyName.kHelvaticNeueMediumItalic, size: size)!
//        case .kDMSansBold(let size):
//            return UIFont(name: FontFamilyName.kDMSansBold, size: size)!
//        case .kDMSansBoldItalic(let size):
//            return UIFont(name: FontFamilyName.kDMSansBoldItalic, size: size)!
//        case .kDMSansItalic(let size):
//            return UIFont(name: FontFamilyName.kDMSansItalic, size: size)!
//        case .kDMSansMedium(let size):
//            return UIFont(name: FontFamilyName.kDMSansMedium, size: size)!
//        case .kDMSansMediumItalic(let size):
//            return UIFont(name: FontFamilyName.kDMSansMediumItalic, size: size)!
//        case .kDMSans(let size):
//            return UIFont(name: FontFamilyName.kDMSans, size: size)!
//        case .kSFProDisplayBlack(let size):
//            return UIFont(name: FontFamilyName.kSFProDisplayBlack, size: size)!
//        case .kSFProDisplayBlackItalic(let size):
//            return UIFont(name: FontFamilyName.kSFProDisplayBlackItalic, size: size)!
//        case .kSFProDisplayBold(let size):
//            return UIFont(name: FontFamilyName.kSFProDisplayBold, size: size)!
//        case .kSFProDisplayBoldItalic(let size):
//            return UIFont(name: FontFamilyName.kSFProDisplayBoldItalic, size: size)!
//        case .kSFProDisplayHeavy(let size):
//            return UIFont(name: FontFamilyName.kSFProDisplayHeavy, size: size)!
//        case .kSFProDisplayHeavyItalic(let size):
//            return UIFont(name: FontFamilyName.kSFProDisplayHeavyItalic, size: size)!
//        case .kSFProDisplayLight(let size):
//            return UIFont(name: FontFamilyName.kSFProDisplayLight, size: size)!
//        case .kSFProDisplayLightItalic(let size):
//            return UIFont(name: FontFamilyName.kSFProDisplayLightItalic, size: size)!
//        case .kSFProDisplayMedium(let size):
//            return UIFont(name: FontFamilyName.kSFProDisplayMedium, size: size)!
//        case .kSFProDisplayMediumItalic(let size):
//            return UIFont(name: FontFamilyName.kSFProDisplayMediumItalic, size: size)!
//        case .kSFProDisplayRegular(let size):
//            return UIFont(name: FontFamilyName.kSFProDisplayRegular, size: size)!
//        case .kSFProDisplayRegularItalic(let size):
//            return UIFont(name: FontFamilyName.kSFProDisplayRegularItalic, size: size)!
//        case .kSFProDisplaySemibold(let size):
//            return UIFont(name: FontFamilyName.kSFProDisplaySemibold, size: size)!
//        case .kSFProDisplaySemiboldItalic(let size):
//            return UIFont(name: FontFamilyName.kSFProDisplaySemiboldItalic, size: size)!
//        case .kSFProDisplayThin(let size):
//            return UIFont(name: FontFamilyName.kSFProDisplayThin, size: size)!
//        case .kSFProDisplayThinItalic(let size):
//            return UIFont(name: FontFamilyName.kSFProDisplayThinItalic, size: size)!
//        case .kSFProDisplayUltralight(let size):
//            return UIFont(name: FontFamilyName.kSFProDisplayUltralight, size: size)!
//        case .kSFProDisplayUltralightItalic(let size):
//            return UIFont(name: FontFamilyName.kSFProDisplayUltralightItalic, size: size)!
//        case .kSFProTextBold(let size):
//            return UIFont(name: FontFamilyName.kSFProTextBold, size: size)!
//        case .kSFProTextBoldItalic(let size):
//            return UIFont(name: FontFamilyName.kSFProTextBoldItalic, size: size)!
//        case .kSFProTextHeavy(let size):
//            return UIFont(name: FontFamilyName.kSFProTextHeavy, size: size)!
//        case .kSFProTextHeavyItalic(let size):
//            return UIFont(name: FontFamilyName.kSFProTextHeavyItalic, size: size)!
//        case .kSFProTextLight(let size):
//            return UIFont(name: FontFamilyName.kSFProTextLight, size: size)!
//        case .kSFProTextLightItalic(let size):
//            return UIFont(name: FontFamilyName.kSFProTextLightItalic, size: size)!
//        case .kSFProTextMedium(let size):
//            return UIFont(name: FontFamilyName.kSFProTextMedium, size: size)!
//        case .kSFProTextMediumItalic(let size):
//            return UIFont(name: FontFamilyName.kSFProTextMediumItalic, size: size)!
//        case .kSFProTextRegular(let size):
//            return UIFont(name: FontFamilyName.kSFProTextRegular, size: size)!
//        case .kSFProTextRegularItalic(let size):
//            return UIFont(name: FontFamilyName.kSFProTextRegularItalic, size: size)!
//        case .kSFProTextSemibold(let size):
//            return UIFont(name: FontFamilyName.kSFProTextSemibold, size: size)!
//        }
//    }
//
//}

enum Storyboards :String{
    case HOME = "Home"
    case MAIN = "Main"
    case REGISTRATION = "Registration"
    case PROFILE = "Profile"
    case WELCOME = "Welcome"
    case CHAT = "Chat"
    case SEARCH = "Search"
    case CREATION = "Creation"
    case TRIP_LIST_DETAIL = "TripListDetail"
    case TRAVELPERSONA = "TravelPersona"
    case EXPLORE = "Explore"
    case RECOMMENDATION = "Recommendation"
    case NOTIFICATION_MESSAGE = "NotificationMessages"
    case CUSTOM_ALERT = "CustomAlert"
    case MAP = "Map"
    case FORCE_UPDATE = "ForceUpdate"
    func board()->String{
        return self.rawValue
    }
}

struct TreccoColor{
    static let placeHolderTf = UIColor.init(hexColor: "C7C7CD")
    static let redColor = UIColor.init(hexColor: "FB3E46")//EE2157
    static let gradientLeftColor = UIColor.init(hexColor: "17837D")//17837D 00E5A3
    static let pinColor = UIColor.init(hexColor: "78F9F1")
    static let gradientRightColor = UIColor.init(hexColor: "1E87E4")
    static let unselectColorTripList = UIColor.init(hexColor: "D8D8D8")
    static let searchTagUnSelectColorNew = UIColor.init(hexColor: "EEEFF2")
    static let yellowColor = UIColor.init(hexColor: "FFDD1B")
    static let purpleColor = UIColor.init(hexColor: "3F1551")
    static let greenColor = UIColor.init(hexColor: "8CC63F")//"8CC63F"
    static let updatedGreenColor = UIColor.init(hexColor: "17837D")//"8CC63F"
    static let purpleDarkColor = UIColor.init(hexColor: "1C0E44")
    static let segmentUnSelectColor = UIColor.init(hexColor: "BEBEBE")
    static let offSwtichThumbColor = UIColor.init(hexColor: "DFDFDF")
    static let grayKindColor = UIColor.init(hexColor: "8A8A8A")
    static let blackKindColor = UIColor.init(hexColor: "313131")
    static let white = UIColor.init(hexColor: "ffffff")
    static let frozyKindColor = UIColor.init(hexColor: "02BDC4")
    static let nonSelectColorContentBy = UIColor.init(hexColor: "B5B8BB")
    static let selectColorContentBy = UIColor.init(hexColor: "2f2f2f")//24375C
    static let treccoBlue = UIColor.init(hexColor: "2F2F2F")//old color "24375C"
    static let homeSubTitleColor = UIColor.init(hexColor: "939393")
    static let treccoBlueOld = UIColor.init(hexColor: "17837D")//UIColor.init(hexColor: "24375C")//old color "24375C"
    static let treccoDarkBlue = UIColor.init(hexColor: "1C33A3")//old color "24375C"
    static let newtreccoDarkBlue = UIColor(hexColor: "17837D")
    static let messageArrowCountZeroColor = UIColor.init(hexColor: "737575")
    static let lineColor = UIColor.init(hexColor: "F3F3F3")//D8D8D8
    static let searchNonSelectColor = UIColor.init(hexColor: "9AABB6")
    // MARK: New Font Color
    static let textColor = UIColor.init(hexColor: "2F2F2F")
    static let highlightedTextColor = UIColor.init(hexColor: "191A19")
    static let grayTextColor = UIColor.init(hexColor: "95A0A9")
    static let calenderSelected = UIColor.init(hexColor: "2f2f2f")//24375C//UIColor.init(hexColor: "01B789")
    static let dateNumberColor = UIColor.init(hexColor: "171F24")
    static let monthColor = UIColor.init(hexColor: "2f2f2f")//24375C
    static let deleteSwipeColor = UIColor.init(hexColor: "FEEBF1")
    static let deletrSwipeTxtColor = UIColor.init(hexColor: "F51E5B")
    static let unreadNotifyColor = UIColor.init(hexColor: "F6F7F9")
    static let eventDetailAllHotelNoteSelection = UIColor.init(hexColor: "4A90E2")
    static let onlyPicterCounterColor = UIColor.init(hexColor: "393939")
    static let protipLikeColor = UIColor.init(hexColor: "F54B64")
    static let protipLikeColorBg = UIColor.init(hexColor: "FEEDEF")
    static let protipEditColorBg = UIColor.init(hexColor: "F4F4F6")
    static let calenderDayWeekColor = UIColor.init(hexColor: "778087")
    static let multiDaysUnSelectColor = UIColor.init(hexColor: "ECECEC")
    static let searchTagUnSelectColor = UIColor.init(hexColor: "D0D4DA")
    static let publicPrivateUnSelectColor = UIColor.init(hexColor: "95A0A9")
    static let publicPrivateUnSelectTextColor = UIColor.init(hexColor: "191A19")
    static let proTripAddedInWhichColor = UIColor.init(hexColor: "979797")
    static let culesterStrokeColor = UIColor.init(hexColor: "182A4D")
    static let mapBoxLayerColor = UIColor.init(hexColor: "24375C").withAlphaComponent(0.5)//UIColor.black//UIColor.init(hexColor: "598CD8")
    static let txtMsgColor = UIColor.init(hexColor: "97A1A4")//UIColor.white
    static let chatBgColor = UIColor.init(hexColor: "FBFCFE")
    static let culesterBGColor = UIColor.init(hexColor: "17837D")
    static let toastBgColor = UIColor.init(hexColor: "1FB892")
    static let acceptColor = UIColor.init(hexColor: "E9FBF7")
    static let joFacebookKColorHain = UIColor.init(hexColor: "0084ff")
    static let tealGreen = UIColor(hexColor: "30E0BD")
    static let appGray = UIColor(hexColor: "95A0A9")
    static let updatedAppGray = UIColor(hexColor: "F0F0F0")
    static let updatedRedColor = UIColor(hexColor: "D14543")
    //
}

enum IphoneType {
    case IPHONE_5_5S_5C
    case IPHONE_6_6S_7_8
    case IPHONE_6PLUS_6SPLUS_7PLUS_8PLUS
    case IPHONE_X_XS_11_Pro
    case IPHONE_XS_Max_11_Pro_Max
    case IPHONE_XR_11
    case UNKNOWN
}

func checkIphoneIs() -> IphoneType{
    if UIDevice().userInterfaceIdiom == .phone {
        switch UIScreen.main.nativeBounds.height {
        case 1136:
            return .IPHONE_5_5S_5C
        case 1334:
            return .IPHONE_6_6S_7_8
        case 1920, 2208:
            return .IPHONE_6PLUS_6SPLUS_7PLUS_8PLUS
        case 2436:
            return .IPHONE_X_XS_11_Pro
        case 2688:
            return .IPHONE_XS_Max_11_Pro_Max
        case 1792:
            return .IPHONE_XR_11
        default:
            return .UNKNOWN
        }
    }else{
        return .UNKNOWN
    }
}

func isPrime(_ number: Int) -> Bool {
    return number > 1 && !(2..<number).contains { number % $0 == 0 }
}

// Animation View For UIVIEW
extension UIView {
    
    enum AnimationKeyPath: String {
        case opacity = "opacity"
    }
    
    func flash(animation: AnimationKeyPath ,withDuration duration: TimeInterval = 0.5, repeatCount: Float = 5){
        let flash = CABasicAnimation(keyPath: AnimationKeyPath.opacity.rawValue)
        flash.duration = duration
        flash.fromValue = 1 // alpha
        flash.toValue = 0 // alpha
        flash.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeInEaseOut)
        flash.autoreverses = true
        flash.repeatCount = repeatCount
        
        layer.add(flash, forKey: nil)
    }
    
    func fadeInNew(_ duration: TimeInterval = 0.7,_ delay: TimeInterval = 0.7) {
        UIView.animate(withDuration: duration, delay: delay, options: [UIView.AnimationOptions.autoreverse, UIView.AnimationOptions.repeat], animations: {
            self.alpha = 0.7
        }, completion: { isDone in
            self.fadeOutNew()
        })
    }
    
    func fadeOutNew(_ duration: TimeInterval = 0.7,_ delay: TimeInterval = 0.7) {
        UIView.animate(withDuration: duration, delay: delay, options: [UIView.AnimationOptions.autoreverse, UIView.AnimationOptions.repeat], animations: {
            self.alpha = 1
        }, completion: { isDone in
            self.fadeInNew()
        })
    }
}

extension NSLayoutConstraint {
    
    func setMultiplier(_ multiplier:CGFloat) -> NSLayoutConstraint {
        NSLayoutConstraint.deactivate([self])
        let newConstraint = NSLayoutConstraint(
            item: firstItem as Any,
            attribute: firstAttribute,
            relatedBy: relation,
            toItem: secondItem,
            attribute: secondAttribute,
            multiplier: multiplier,
            constant: constant)
        newConstraint.priority = priority
        newConstraint.shouldBeArchived = shouldBeArchived
        newConstraint.identifier = identifier
        NSLayoutConstraint.activate([newConstraint])
        return newConstraint
    }
    
    func setRelation(_ relation:NSLayoutConstraint.Relation,_ constant:CGFloat) -> NSLayoutConstraint {
        NSLayoutConstraint.deactivate([self])
        let newConstraint = NSLayoutConstraint(
            item: firstItem as Any,
            attribute: firstAttribute,
            relatedBy: relation,
            toItem: secondItem,
            attribute: secondAttribute,
            multiplier: multiplier,
            constant: constant)
        newConstraint.priority = priority
        newConstraint.shouldBeArchived = shouldBeArchived
        newConstraint.identifier = identifier
        NSLayoutConstraint.activate([newConstraint])
        return newConstraint
    }
}

struct IntroScreenModel {
    var title:String = ""
    var subTitle:String = ""
    var description:String = ""
    
    init(title:String,subTitle:String,description:String) {
        self.title = title
        self.subTitle = subTitle
        self.description = description
    }
    init() {
        
    }
}

extension UIImageView {
    override open func awakeFromNib() {
        super.awakeFromNib()
        tintColorDidChange()
    }
}

extension UIViewController {
    
    func pushView(_ vc:UIViewController,_ isAnimated:Bool = true){
        self.navigationController?.pushViewController(vc, animated: isAnimated)
    }
    
    func presentVC(_ vc:UIViewController,_ isAnimated:Bool = true){
        self.present(vc, animated: isAnimated, completion: nil)
    }
    
    func dismissOrPop() {
        if let navigationController = self.navigationController{
            navigationController.popViewController(animated: true)
        } else {
            self.dismiss(animated: true, completion: nil)
        }
    }
    
    
    func getCountryList() -> [(name: String, flag: String,isoCode:String,isSelected:Bool)]{
        var countriesData = [(name: String, flag: String,isoCode:String,isSelected:Bool)]()
        
        for code in NSLocale.isoCountryCodes  {
            let flag = String.emojiFlag(for: code)
            let id = NSLocale.localeIdentifier(fromComponents: [NSLocale.Key.countryCode.rawValue: code])
            if let name = NSLocale(localeIdentifier: Locale.autoupdatingCurrent.identifier).displayName(forKey: NSLocale.Key.identifier, value: id) {
                print("CodeIso : \(code) \(name)")
                countriesData.append((name: name, flag: flag!,code,isSelected: false))
            }else{
            }
        }
        return countriesData.sorted { (arg0, arg1) -> Bool in
            switch arg0.name.compare(arg1.name) {
            case .orderedAscending:
                return true
            case .orderedSame:
                return false
            case .orderedDescending:
                return false
            }
        }
    }
    
}

extension String {
    
    static func emojiFlag(for countryCode: String) -> String! {
        func isLowercaseASCIIScalar(_ scalar: Unicode.Scalar) -> Bool {
            return scalar.value >= 0x61 && scalar.value <= 0x7A
        }
        
        func regionalIndicatorSymbol(for scalar: Unicode.Scalar) -> Unicode.Scalar {
            precondition(isLowercaseASCIIScalar(scalar))
            
            // 0x1F1E6 marks the start of the Regional Indicator Symbol range and corresponds to 'A'
            // 0x61 marks the start of the lowercase ASCII alphabet: 'a'
            return Unicode.Scalar(scalar.value + (0x1F1E6 - 0x61))!
        }
        
        let lowercasedCode = countryCode.lowercased()
        guard lowercasedCode.count == 2 else { return nil }
        guard lowercasedCode.unicodeScalars.reduce(true, { accum, scalar in accum && isLowercaseASCIIScalar(scalar) }) else { return nil }
        
        let indicatorSymbols = lowercasedCode.unicodeScalars.map({ regionalIndicatorSymbol(for: $0) })
        return String(indicatorSymbols.map({ Character($0) }))
    }
}

public extension UIImage {
    convenience init?(color: UIColor, size: CGSize = CGSize(width: 1, height: 1)) {
        let rect = CGRect(origin: .zero, size: size)
        UIGraphicsBeginImageContextWithOptions(rect.size, false, 0.0)
        color.setFill()
        UIRectFill(rect)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        guard let cgImage = image?.cgImage else { return nil }
        self.init(cgImage: cgImage)
    }
}

extension UIApplication {
    
    static var isRTL: Bool {
        return UIApplication.shared.userInterfaceLayoutDirection == UIUserInterfaceLayoutDirection.rightToLeft
    }
}


extension UIScrollView {
    
    // Scroll to a specific view so that it's top is at the top our scrollview
    func scrollToView(view:UIView, animated: Bool) {
        if let origin = view.superview {
            // Get the Y position of your child view
            let childStartPoint = origin.convert(view.frame.origin, to: self)
            // Scroll to a rectangle starting at the Y of your subview, with a height of the scrollview
            self.scrollRectToVisible(CGRect(x:0, y:childStartPoint.y,width: 1,height: self.frame.height), animated: animated)
        }
    }
    
    // Bonus: Scroll to top
    func scrollToTop(animated: Bool) {
        let topOffset = CGPoint(x: 0, y: -contentInset.top)
        setContentOffset(topOffset, animated: animated)
    }
    
    // Bonus: Scroll to bottom
    func scrollToBottom() {
        let bottomOffset = CGPoint(x: 0, y: contentSize.height - bounds.size.height + contentInset.bottom)
        if(bottomOffset.y > 0) {
            setContentOffset(bottomOffset, animated: true)
        }
    }
    
}

func genratesDate(lhs:Date, rhs:Date) -> [Date] {
    var dates = [Date]()
    var dayCount = 0
    while true {
        let cal = Calendar.current
        var days = DateComponents()
        days.day = dayCount
        let date = cal.date(byAdding: days, to: lhs)!
        if date.compare(rhs) == .orderedDescending {
            break
        }
        dayCount += 1
        dates.append(date)
    }
    
    return dates
}

extension UIImage {
    func imageWithInsets(insetDimen: CGFloat) -> UIImage? {
        return imageWithInset(insets: UIEdgeInsets(top: insetDimen, left: insetDimen, bottom: insetDimen, right: insetDimen))
    }
    
    func imageWithInset(insets: UIEdgeInsets) -> UIImage? {
        UIGraphicsBeginImageContextWithOptions(
            CGSize(width: self.size.width + insets.left + insets.right,
                   height: self.size.height + insets.top + insets.bottom), false, self.scale)
        let origin = CGPoint(x: insets.left, y: insets.top)
        self.draw(at:origin)
        let imageWithInsets = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return imageWithInsets
    }
    
}

extension UITextField {
    class func connectFields(_ fields:[Any]) -> Void {
        guard let last = fields.last else {
            return
        }
        for i in 0 ..< fields.count - 1 {
            if let item = fields[i] as? UITextField {
                item.returnKeyType = .next
                item.addTarget(fields[i+1] , action: #selector(UIResponder.becomeFirstResponder), for: .editingDidEndOnExit)
            }else if let item = fields[i] as? UITextView {
                item.returnKeyType = .next
                item.target(forAction: #selector(UIResponder.becomeFirstResponder), withSender: fields[i+1])
                //                d(withTarget: fields[i+1], action: #selector(UIResponder.becomeFirstResponder))
                //(fields[i+1], action: #selector(UIResponder.becomeFirstResponder), for: .editingDidEndOnExit)
            }
        }
        if let item = last as? UITextField {
            item.returnKeyType = .done
            item.addTarget(item, action: #selector(UIResponder.resignFirstResponder), for: .editingDidEndOnExit)
        }
        
    }
}

class NezuitGroteskLabel: UILabel {
    
    let topInset = CGFloat(5.0), bottomInset = CGFloat(0.0), leftInset = CGFloat(0.0), rightInset = CGFloat(0.0)
    
    override func drawText(in rect: CGRect) {
        
        let insets: UIEdgeInsets = UIEdgeInsets(top: topInset, left: leftInset, bottom: bottomInset, right: rightInset)
        super.drawText(in: rect.inset(by: insets))
        
    }
    
    override var intrinsicContentSize: CGSize {
        var intrinsicSuperViewContentSize = super.intrinsicContentSize
        intrinsicSuperViewContentSize.height += topInset + bottomInset
        intrinsicSuperViewContentSize.width += leftInset + rightInset
        return intrinsicSuperViewContentSize
    }
    
}

class NezuitGroteskLabelExtra: UILabel {
    
    let topInset = CGFloat(12.0), bottomInset = CGFloat(0.0), leftInset = CGFloat(0.0), rightInset = CGFloat(0.0)
    
    override func drawText(in rect: CGRect) {
        
        let insets: UIEdgeInsets = UIEdgeInsets(top: topInset, left: leftInset, bottom: bottomInset, right: rightInset)
        super.drawText(in: rect.inset(by: insets))
        
    }
    
    override var intrinsicContentSize: CGSize {
        var intrinsicSuperViewContentSize = super.intrinsicContentSize
        intrinsicSuperViewContentSize.height += topInset + bottomInset
        intrinsicSuperViewContentSize.width += leftInset + rightInset
        return intrinsicSuperViewContentSize
    }
    
}


class BabusNueueLabel:UILabel{
    let topInset = CGFloat(1.5), bottomInset = CGFloat(0.0), leftInset = CGFloat(0.0), rightInset = CGFloat(0.0)
    
    override func drawText(in rect: CGRect) {
        
        let insets: UIEdgeInsets = UIEdgeInsets(top: topInset, left: leftInset, bottom: bottomInset, right: rightInset)
        super.drawText(in: rect.inset(by: insets))
        
    }
    
    override var intrinsicContentSize: CGSize {
        var intrinsicSuperViewContentSize = super.intrinsicContentSize
        intrinsicSuperViewContentSize.height += topInset + bottomInset
        intrinsicSuperViewContentSize.width += leftInset + rightInset
        return intrinsicSuperViewContentSize
    }
}

class NezuitGrotestTF:UITextField {
    let topInset = CGFloat(5.0), bottomInset = CGFloat(0.0), leftInset = CGFloat(0.0), rightInset = CGFloat(0.0)
    
    override func drawText(in rect: CGRect) {
        
        let insets: UIEdgeInsets = UIEdgeInsets(top: topInset, left: leftInset, bottom: bottomInset, right: rightInset)
        super.drawText(in: rect.inset(by: insets))
        
    }
    
    override var intrinsicContentSize: CGSize {
        var intrinsicSuperViewContentSize = super.intrinsicContentSize
        intrinsicSuperViewContentSize.height += topInset + bottomInset
        intrinsicSuperViewContentSize.width += leftInset + rightInset
        return intrinsicSuperViewContentSize
    }
}



class NezuitGrotestTV:UITextView{
    let topInset = CGFloat(5.0), bottomInset = CGFloat(0.0), leftInset = CGFloat(-5.0), rightInset = CGFloat(0.0)
    
    //    override func draw(_ layer: CALayer, in ctx: CGContext) {
    //        let insets: UIEdgeInsets = UIEdgeInsets(top: topInset, left: leftInset, bottom: bottomInset, right: rightInset)
    //        super.draw(rect.inset(by: insets))
    //    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        let insets: UIEdgeInsets = UIEdgeInsets(top: topInset, left: leftInset, bottom: bottomInset, right: rightInset)
        textContainerInset = insets
    }
    
    
    override var intrinsicContentSize: CGSize {
        var intrinsicSuperViewContentSize = super.intrinsicContentSize
        intrinsicSuperViewContentSize.height += topInset + bottomInset
        intrinsicSuperViewContentSize.width += leftInset + rightInset
        return intrinsicSuperViewContentSize
    }
}


extension DispatchQueue {

    static func background(delay: Double = 0.0, background: (()->Void)? = nil, completion: (() -> Void)? = nil) {
        DispatchQueue.global(qos: .background).async {
            background?()
            if let completion = completion {
                DispatchQueue.main.asyncAfter(deadline: .now() + delay, execute: {
                    completion()
                })
            }
        }
    }

}

extension UITextField {
    var string:String? {
        get {
            return self.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        }
        set {
            self.text = newValue?.trimmingCharacters(in: .whitespacesAndNewlines) ?? ""
        }
    }
    
}
extension UITextView {
    var string:String? {
        get {
            return self.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        }
        set {
            self.text = newValue?.trimmingCharacters(in: .whitespacesAndNewlines) ?? ""
        }
    }
    
}
extension UILabel {
    var string:String? {
        get {
            return self.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        }
        set {
            self.text = newValue?.trimmingCharacters(in: .whitespacesAndNewlines) ?? ""
        }
    }
    
}
extension UIButton {
    var string :String? {
        get {
            return self.titleLabel?.string ?? ""
        }
        set {
            self.setTitle(newValue?.trimmingCharacters(in: .whitespacesAndNewlines) ?? "", for: .normal)
        }
    }
}



var continentList:[String:String] = [ //see https://gist.github.com/nobuti/3816985
    "AF":"Asia", // "Islamic Republic of Afghanistan")
    "AX":"Europe", // "Åland Islands")
    "AL":"Europe", // "Republic of Albania")
    "DZ":"Africa", // "People's Democratic Republic of Algeria")
    "AS":"Oceania", // "American Samoa")
    "AD":"Europe", // "Principality of Andorra")
    "AO":"Africa", // "Republic of Angola")
    "AI":"North America", // "Anguilla")
    "AQ":"Antarctica", // "Antarctica (the territory South of 60 deg S)")
    "AG":"North America", // "Antigua and Barbuda")
    "AR":"South America", // "Argentine Republic")
    "AM":"Asia", // "Republic of Armenia")
    "AW":"North America", // "Aruba")
    "AU":"Oceania", // "Commonwealth of Australia")
    "AT":"Europe", // "Republic of Austria")
    "AZ":"Asia", // "Republic of Azerbaijan")
    "BS":"North America", // "Commonwealth of the Bahamas")
    "BH":"Asia", // "Kingdom of Bahrain")
    "BD":"Asia", // "People's Republic of Bangladesh")
    "BB":"North America", // "Barbados")
    "BY":"Europe", // "Republic of Belarus")
    "BE":"Europe", // "Kingdom of Belgium")
    "BZ":"North America", // "Belize")
    "BJ":"Africa", // "Republic of Benin")
    "BM":"North America", // "Bermuda")
    "BT":"Asia", // "Kingdom of Bhutan")
    "BO":"South America", // "Plurinational State of Bolivia")
    "BQ":"North America", // '535'
    "BA":"Europe", // "Bosnia and Herzegovina")
    "BW":"Africa", // "Republic of Botswana")
    "BV":"Antarctica", // "Bouvet Island (Bouvetoya)")
    "BR":"South America", // "Federative Republic of Brazil")
    "IO":"Asia", // "British Indian Ocean Territory (Chagos Archipelago)")
    "VG":"North America", // "British Virgin Islands")
    "BN":"Asia", // "Brunei Darussalam")
    "BG":"Europe", // "Republic of Bulgaria")
    "BF":"Africa", // "Burkina Faso")
    "BI":"Africa", // "Republic of Burundi")
    "KH":"Asia", // "Kingdom of Cambodia")
    "CM":"Africa", // "Republic of Cameroon")
    "CA":"North America", // "Canada")
    "CV":"Africa", // "Republic of Cape Verde")
    "KY":"North America", // "Cayman Islands")
    "CF":"Africa", // "Central African Republic")
    "TD":"Africa", // "Republic of Chad")
    "CL":"South America", // "Republic of Chile")
    "CN":"Asia", // "People's Republic of China")
    "CX":"Asia", // "Christmas Island")
    "CC":"Asia", // "Cocos (Keeling) Islands")
    "CO":"South America", // "Republic of Colombia")
    "KM":"Africa", // "Union of the Comoros")
    "CD":"Africa", // "Democratic Republic of the Congo")
    "CG":"Africa", // "Republic of the Congo")
    "CK":"Oceania", // "Cook Islands")
    "CR":"North America", // "Republic of Costa Rica")
    "CI":"Africa", // "Republic of Cote d'Ivoire")
    "HR":"Europe", // "Republic of Croatia")
    "CU":"North America", // "Republic of Cuba")
    "CW":"North America", // "Curaçao")
    "CY":"Asia", // "Republic of Cyprus")
    "CZ":"Europe", // "Czech Republic")
    "DK":"Europe", // "Kingdom of Denmark")
    "DJ":"Africa", // "Republic of Djibouti")
    "DM":"North America", // "Commonwealth of Dominica")
    "DO":"North America", // "Dominican Republic")
    "EC":"South America", // "Republic of Ecuador")
    "EG":"Africa", // "Arab Republic of Egypt")
    "SV":"North America", // "Republic of El Salvador")
    "GQ":"Africa", // "Republic of Equatorial Guinea")
    "ER":"Africa", // "State of Eritrea")
    "EE":"Europe", // "Republic of Estonia")
    "ET":"Africa", // "Federal Democratic Republic of Ethiopia")
    "FO":"Europe", // "Faroe Islands")
    "FK":"South America", // "Falkland Islands (Malvinas)")
    "FJ":"Oceania", // "Republic of Fiji")
    "FI":"Europe", // "Republic of Finland")
    "FR":"Europe", // "French Republic")
    "GF":"South America", // "French Guiana")
    "PF":"Oceania", // "French Polynesia")
    "TF":"Antarctica", // "French Southern Territories")
    "GA":"Africa", // "Gabonese Republic")
    "GM":"Africa", // "Republic of the Gambia")
    "GE":"Asia", // "Georgia")
    "DE":"Europe", // "Federal Republic of Germany")
    "GH":"Africa", // "Republic of Ghana")
    "GI":"Europe", // "Gibraltar")
    "GR":"Europe", // "Hellenic Republic Greece")
    "GL":"North America", // "Greenland")
    "GD":"North America", // "Grenada")
    "GP":"North America", // "Guadeloupe")
    "GU":"Oceania", // "Guam")
    "GT":"North America", // "Republic of Guatemala")
    "GG":"Europe", // "Bailiwick of Guernsey")
    "GN":"Africa", // "Republic of Guinea")
    "GW":"Africa", // "Republic of Guinea-Bissau")
    "GY":"South America", // "Co-operative Republic of Guyana")
    "HT":"North America", // "Republic of Haiti")
    "HM":"Antarctica", // "Heard Island and McDonald Islands")
    "VA":"Europe", // "Holy See (Vatican City State)")
    "HN":"North America", // "Republic of Honduras")
    "HK":"Asia", // "Hong Kong Special Administrative Region of China")
    "HU":"Europe", // "Hungary")
    "IS":"Europe", // "Republic of Iceland")
    "IN":"Asia", // "Republic of India")
    "ID":"Asia", // "Republic of Indonesia")
    "IR":"Asia", // "Islamic Republic of Iran")
    "IQ":"Asia", // "Republic of Iraq")
    "IE":"Europe", // "Ireland")
    "IM":"Europe", // "Isle of Man")
    "IL":"Asia", // "State of Israel")
    "IT":"Europe", // "Italian Republic")
    "JM":"North America", // "Jamaica")
    "JP":"Asia", // "Japan")
    "JE":"Europe", // "Bailiwick of Jersey")
    "JO":"Asia", // "Hashemite Kingdom of Jordan")
    "KZ":"Asia", // "Republic of Kazakhstan")
    "KE":"Africa", // "Republic of Kenya")
    "KI":"Oceania", // "Republic of Kiribati")
    "KP":"Asia", // "Democratic People's Republic of Korea")
    "KR":"Asia", // "Republic of Korea")
    "KW":"Asia", // "State of Kuwait")
    "KG":"Asia", // "Kyrgyz Republic")
    "LA":"Asia", // "Lao People's Democratic Republic")
    "LV":"Europe", // "Republic of Latvia")
    "LB":"Asia", // "Lebanese Republic")
    "LS":"Africa", // "Kingdom of Lesotho")
    "LR":"Africa", // "Republic of Liberia")
    "LY":"Africa", // "Libya")
    "LI":"Europe", // "Principality of Liechtenstein")
    "LT":"Europe", // "Republic of Lithuania")
    "LU":"Europe", // "Grand Duchy of Luxembourg")
    "MO":"Asia", // "Macao Special Administrative Region of China")
    "MK":"Europe", // "Republic of Macedonia")
    "MG":"Africa", // "Republic of Madagascar")
    "MW":"Africa", // "Republic of Malawi")
    "MY":"Asia", // "Malaysia")
    "MV":"Asia", // "Republic of Maldives")
    "ML":"Africa", // "Republic of Mali")
    "MT":"Europe", // "Republic of Malta")
    "MH":"Oceania", // "Republic of the Marshall Islands")
    "MQ":"North America", // "Martinique")
    "MR":"Africa", // "Islamic Republic of Mauritania")
    "MU":"Africa", // "Republic of Mauritius")
    "YT":"Africa", // "Mayotte")
    "MX":"North America", // "United Mexican States")
    "FM":"Oceania", // "Federated States of Micronesia")
    "MD":"Europe", // "Republic of Moldova")
    "MC":"Europe", // "Principality of Monaco")
    "MN":"Asia", // "Mongolia")
    "ME":"Europe", // "Montenegro")
    "MS":"North America", // "Montserrat")
    "MA":"Africa", // "Kingdom of Morocco")
    "MZ":"Africa", // "Republic of Mozambique")
    "MM":"Asia", // "Republic of the Union of Myanmar")
    "NA":"Africa", // "Republic of Namibia")
    "NR":"Oceania", // "Republic of Nauru")
    "NP":"Asia", // "Federal Democratic Republic of Nepal")
    "NL":"Europe", // "Kingdom of the Netherlands")
    "NC":"Oceania", // "New Caledonia")
    "NZ":"Oceania", // "New Zealand")
    "NI":"North America", // "Republic of Nicaragua")
    "NE":"Africa", // "Republic of Niger")
    "NG":"Africa", // "Federal Republic of Nigeria")
    "NU":"Oceania", // "Niue")
    "NF":"Oceania", // "Norfolk Island")
    "MP":"Oceania", // "Commonwealth of the Northern Mariana Islands")
    "NO":"Europe", // "Kingdom of Norway")
    "OM":"Asia", // "Sultanate of Oman")
    "PK":"Asia", // "Islamic Republic of Pakistan")
    "PW":"Oceania", // "Republic of Palau")
    "PS":"Asia", // "Occupied Palestinian Territory")
    "PA":"North America", // "Republic of Panama")
    "PG":"Oceania", // "Independent State of Papua New Guinea")
    "PY":"South America", // "Republic of Paraguay")
    "PE":"South America", // "Republic of Peru")
    "PH":"Asia", // "Republic of the Philippines")
    "PN":"Oceania", // "Pitcairn Islands")
    "PL":"Europe", // "Republic of Poland")
    "PT":"Europe", // "Portuguese Republic")
    "PR":"North America", // "Commonwealth of Puerto Rico")
    "QA":"Asia", // "State of Qatar")
    "RE":"Africa", // "Réunion")
    "RO":"Europe", // "Romania")
    "RU":"Europe", // "Russian Federation")
    "RW":"Africa", // "Republic of Rwanda")
    "BL":"North America", // "Saint Barthélemy")
    "SH":"Africa", // '654'
    "KN":"North America", // "Federation of Saint Kitts and Nevis")
    "LC":"North America", // "Saint Lucia")
    "MF":"North America", // "Saint Martin (French part)")
    "PM":"North America", // "Saint Pierre and Miquelon")
    "VC":"North America", // "Saint Vincent and the Grenadines")
    "WS":"Oceania", // "Independent State of Samoa")
    "SM":"Europe", // "Republic of San Marino")
    "ST":"Africa", // "Democratic Republic of Sao Tome and Principe")
    "SA":"Asia", // "Kingdom of Saudi Arabia")
    "SN":"Africa", // "Republic of Senegal")
    "RS":"Europe", // "Republic of Serbia")
    "SC":"Africa", // "Republic of Seychelles")
    "SL":"Africa", // "Republic of Sierra Leone")
    "SG":"Asia", // "Republic of Singapore")
    "SX":"North America", // "Sint Maarten (Dutch part)")
    "SK":"Europe", // "Slovakia (Slovak Republic)")
    "SI":"Europe", // "Republic of Slovenia")
    "SB":"Oceania", // "Solomon Islands")
    "SO":"Africa", // "Somali Republic")
    "ZA":"Africa", // "Republic of South Africa")
    "GS":"Antarctica", // "South Georgia and the South Sandwich Islands")
    "SS":"Africa", // "Republic of South Sudan")
    "ES":"Europe", // "Kingdom of Spain")
    "LK":"Asia", // "Democratic Socialist Republic of Sri Lanka")
    "SD":"Africa", // "Republic of Sudan")
    "SR":"South America", // "Republic of Suriname")
    "SJ":"Europe", // "Svalbard & Jan Mayen Islands")
    "SZ":"Africa", // "Kingdom of Swaziland")
    "SE":"Europe", // "Kingdom of Sweden")
    "CH":"Europe", // "Swiss Confederation")
    "SY":"Asia", // "Syrian Arab Republic")
    "TW":"Asia", // "Taiwan
    "TJ":"Asia", // "Republic of Tajikistan")
    "TZ":"Africa", // "United Republic of Tanzania")
    "TH":"Asia", // "Kingdom of Thailand")
    "TL":"Asia", // "Democratic Republic of Timor-Leste")
    "TG":"Africa", // "Togolese Republic")
    "TK":"Oceania", // "Tokelau")
    "TO":"Oceania", // "Kingdom of Tonga")
    "TT":"North America", // "Republic of Trinidad and Tobago")
    "TN":"Africa", // "Tunisian Republic")
    "TR":"Asia", // "Republic of Turkey")
    "TM":"Asia", // "Turkmenistan")
    "TC":"North America", // "Turks and Caicos Islands")
    "TV":"Oceania", // "Tuvalu")
    "UG":"Africa", // "Republic of Uganda")
    "UA":"Europe", // "Ukraine")
    "AE":"Asia", // "United Arab Emirates")
    "GB":"Europe", // "United Kingdom of Great Britain & Northern Ireland")
    "US":"North America", // "United States of America")
    "UM":"Oceania", // "United States Minor Outlying Islands")
    "VI":"North America", // "United States Virgin Islands")
    "UY":"South America", // "Eastern Republic of Uruguay")
    "UZ":"Asia", // "Republic of Uzbekistan")
    "VU":"Oceania", // "Republic of Vanuatu")
    "VE":"South America", // "Bolivarian Republic of Venezuela")
    "VN":"Asia", // "Socialist Republic of Vietnam")
    "WF":"Oceania", // "Wallis and Futuna")
    "EH":"Africa", // "Western Sahara")
    "YE":"Asia", // "Yemen")
    "ZM":"Africa", // "Republic of Zambia")
    "ZW":"Africa" // "Republic of Zimbabwe");
]


class CountryUtilities {

    class func getAlphaThreeCode(byAlpha2Code alpha2code: String) -> String {
        if(alpha2code.count == 3){
            let valUe = countiresRevers[alpha2code] ?? ""
            return countries[valUe] ?? ""
        }else{
            return countries[alpha2code] ?? ""
        }

    }
    class func getAlphaTwoCode(byAlpha2Code alpha2code: String) -> String {
        if(alpha2code.count == 2){
            let valUe = countries[alpha2code] ?? ""
            return countiresRevers[valUe] ?? ""
        }else{
            return countiresRevers[alpha2code] ?? ""
        }
        
    }
    class func printData(){
        for (key, value) in countries  {
            print("\"\(value)\" : \"\(key)\",")
        }
    }
    
    private static let countiresRevers: [String:String] = [
        "BRN" : "BN",
        "SGP" : "SG",
        "SYR" : "SY",
        "KWT" : "KW",
        "LVA" : "LV",
        "ASM" : "AS",
        "CIV" : "CI",
        "CXR" : "CX",
        "USA" : "US",
        "TJK" : "TJ",
        "ZAF" : "ZA",
        "BDI" : "BI",
        "LBR" : "LR",
        "NPL" : "NP",
        "GNB" : "GW",
        "NRU" : "NR",
        "BHS" : "BS",
        "ESH" : "EH",
        "BLM" : "BL",
        "GMB" : "GM",
        "URY" : "UY",
        "BEN" : "BJ",
        "CPV" : "CV",
        "PSE" : "PS",
        "BGR" : "BG",
        "FLK" : "FK",
        "KHM" : "KH",
        "LIE" : "LI",
        "MAC" : "MO",
        "VCT" : "VC",
        "NLD" : "NL",
        "BFA" : "BF",
        "BMU" : "BM",
        "DZA" : "DZ",
        "HRV" : "HR",
        "ABW" : "AW",
        "FRO" : "FO",
        "KEN" : "KE",
        "TGO" : "TG",
        "TON" : "TO",
        "THA" : "TH",
        "BLR" : "BY",
        "NGA" : "NG",
        "REU" : "RE",
        "GEO" : "GE",
        "ISL" : "IS",
        "AGO" : "AO",
        "GLP" : "GP",
        "UGA" : "UG",
        "LBY" : "LY",
        "HMD" : "HM",
        "PER" : "PE",
        "JOR" : "JO",
        "FJI" : "FJ",
        "TCD" : "TD",
        "MAR" : "MA",
        "PAN" : "PA",
        "SMR" : "SM",
        "CYP" : "CY",
        "UKR" : "UA",
        "CUW" : "CW",
        "MDV" : "MV",
        "AIA" : "AI",
        "VGB" : "VG",
        "GRC" : "GR",
        "BEL" : "BE",
        "DJI" : "DJ",
        "ISR" : "IL",
        "WSM" : "WS",
        "MYT" : "YT",
        "SGS" : "GS",
        "BGD" : "BD",
        "GRD" : "GD",
        "MUS" : "MU",
        "ALB" : "AL",
        "BWA" : "BW",
        "VAT" : "VA",
        "GUM" : "GU",
        "PRK" : "KP",
        "HKG" : "HK",
        "AFG" : "AF",
        "MWI" : "MW",
        "MLT" : "MT",
        "PHL" : "PH",
        "IDN" : "ID",
        "ARE" : "AE",
        "ITA" : "IT",
        "MEX" : "MX",
        "CUB" : "CU",
        "SEN" : "SN",
        "ALA" : "AX",
        "LBN" : "LB",
        "VEN" : "VE",
        "AUS" : "AU",
        "SRB" : "RS",
        "GBR" : "GB",
        "PRT" : "PT",
        "ROU" : "RO",
        "COM" : "KM",
        "DOM" : "DO",
        "PLW" : "PW",
        "COD" : "CD",
        "TUV" : "TV",
        "TCA" : "TC",
        "DEU" : "DE",
        "ERI" : "ER",
        "NZL" : "NZ",
        "GRL" : "GL",
        "PRY" : "PY",
        "BHR" : "BH",
        "CHN" : "CN",
        "ECU" : "EC",
        "GIB" : "GI",
        "PCN" : "PN",
        "AND" : "AD",
        "UMI" : "UM",
        "ARM" : "AM",
        "GIN" : "GN",
        "MYS" : "MY",
        "ESP" : "ES",
        "CAN" : "CA",
        "STP" : "ST",
        "MNE" : "ME",
        "RUS" : "RU",
        "BLZ" : "BZ",
        "SLB" : "SB",
        "ATG" : "AG",
        "GTM" : "GT",
        "CAF" : "CF",
        "COL" : "CO",
        "LSO" : "LS",
        "TZA" : "TZ",
        "MMR" : "MM",
        "MKD" : "MK",
        "IRQ" : "IQ",
        "NFK" : "NF",
        "HND" : "HN",
        "VNM" : "VN",
        "DNK" : "DK",
        "KIR" : "KI",
        "JEY" : "JE",
        "RWA" : "RW",
        "MSR" : "MS",
        "JPN" : "JP",
        "MNG" : "MN",
        "SHN" : "SH",
        "ETH" : "ET",
        "SAU" : "SA",
        "CYM" : "KY",
        "COG" : "CG",
        "NAM" : "NA",
        "ZWE" : "ZW",
        "GGY" : "GG",
        "SVN" : "SI",
        "QAT" : "QA",
        "HUN" : "HU",
        "SJM" : "SJ",
        "VUT" : "VU",
        "NOR" : "NO",
        "MCO" : "MC",
        "TUN" : "TN",
        "KGZ" : "KG",
        "WLF" : "WF",
        "PAK" : "PK",
        "TUR" : "TR",
        "CMR" : "CM",
        "JAM" : "JM",
        "BVT" : "BV",
        "CCK" : "CC",
        "NIU" : "NU",
        "SVK" : "SK",
        "TWN" : "TW",
        "TKM" : "TM",
        "KAZ" : "KZ",
        "YEM" : "YE",
        "MDG" : "MG",
        "MAF" : "MF",
        "SXM" : "SX",
        "UZB" : "UZ",
        "SLV" : "SV",
        "PYF" : "PF",
        "FRA" : "FR",
        "LAO" : "LA",
        "LTU" : "LT",
        "SWZ" : "SZ",
        "BTN" : "BT",
        "CHL" : "CL",
        "IRN" : "IR",
        "FIN" : "FI",
        "MLI" : "ML",
        "FSM" : "FM",
        "MNP" : "MP",
        "SOM" : "SO",
        "GHA" : "GH",
        "ARG" : "AR",
        "SLE" : "SL",
        "LKA" : "LK",
        "ATA" : "AQ",
        "BES" : "BQ",
        "IOT" : "IO",
        "ZMB" : "ZM",
        "IND" : "IN",
        "SUR" : "SR",
        "BRB" : "BB",
        "EST" : "EE",
        "SSD" : "SS",
        "TKL" : "TK",
        "SDN" : "SD",
        "LUX" : "LU",
        "OMN" : "OM",
        "CRI" : "CR",
        "NER" : "NE",
        "MHL" : "MH",
        "GAB" : "GA",
        "KNA" : "KN",
        "TTO" : "TT",
        "AZE" : "AZ",
        "HTI" : "HT",
        "ATF" : "TF",
        "NIC" : "NI",
        "TLS" : "TL",
        "COK" : "CK",
        "SPM" : "PM",
        "SYC" : "SC",
        "PNG" : "PG",
        "MOZ" : "MZ",
        "LCA" : "LC",
        "CHE" : "CH",
        "MTQ" : "MQ",
        "BIH" : "BA",
        "EGY" : "EG",
        "MRT" : "MR",
        "PRI" : "PR",
        "CZE" : "CZ",
        "GUF" : "GF",
        "AUT" : "AT",
        "BRA" : "BR",
        "DMA" : "DM",
        "GUY" : "GY",
        "KOR" : "KR",
        "NCL" : "NC",
        "SWE" : "SE",
        "VIR" : "VI",
        "GNQ" : "GQ",
        "MDA" : "MD",
        "BOL" : "BO",
        "IRL" : "IE",
        "IMN" : "IM",
        "POL" : "PL"
    ]

    private static let countries: [String: String] = [
        "AF": "AFG",
        "AX": "ALA",
        "AL": "ALB",
        "DZ": "DZA",
        "AS": "ASM",
        "AD": "AND",
        "AO": "AGO",
        "AI": "AIA",
        "AQ": "ATA",
        "AG": "ATG",
        "AR": "ARG",
        "AM": "ARM",
        "AW": "ABW",
        "AU": "AUS",
        "AT": "AUT",
        "AZ": "AZE",
        "BS": "BHS",
        "BH": "BHR",
        "BD": "BGD",
        "BB": "BRB",
        "BY": "BLR",
        "BE": "BEL",
        "BZ": "BLZ",
        "BJ": "BEN",
        "BM": "BMU",
        "BT": "BTN",
        "BO": "BOL",
        "BQ": "BES",
        "BA": "BIH",
        "BW": "BWA",
        "BV": "BVT",
        "BR": "BRA",
        "IO": "IOT",
        "BN": "BRN",
        "BG": "BGR",
        "BF": "BFA",
        "BI": "BDI",
        "CV": "CPV",
        "KH": "KHM",
        "CM": "CMR",
        "CA": "CAN",
        "KY": "CYM",
        "CF": "CAF",
        "TD": "TCD",
        "CL": "CHL",
        "CN": "CHN",
        "CX": "CXR",
        "CC": "CCK",
        "CO": "COL",
        "KM": "COM",
        "CG": "COG",
        "CD": "COD",
        "CK": "COK",
        "CR": "CRI",
        "CI": "CIV",
        "HR": "HRV",
        "CU": "CUB",
        "CW": "CUW",
        "CY": "CYP",
        "CZ": "CZE",
        "DK": "DNK",
        "DJ": "DJI",
        "DM": "DMA",
        "DO": "DOM",
        "EC": "ECU",
        "EG": "EGY",
        "SV": "SLV",
        "GQ": "GNQ",
        "ER": "ERI",
        "EE": "EST",
        "SZ": "SWZ",
        "ET": "ETH",
        "FK": "FLK",
        "FO": "FRO",
        "FJ": "FJI",
        "FI": "FIN",
        "FR": "FRA",
        "GF": "GUF",
        "PF": "PYF",
        "TF": "ATF",
        "GA": "GAB",
        "GM": "GMB",
        "GE": "GEO",
        "DE": "DEU",
        "GH": "GHA",
        "GI": "GIB",
        "GR": "GRC",
        "GL": "GRL",
        "GD": "GRD",
        "GP": "GLP",
        "GU": "GUM",
        "GT": "GTM",
        "GG": "GGY",
        "GN": "GIN",
        "GW": "GNB",
        "GY": "GUY",
        "HT": "HTI",
        "HM": "HMD",
        "VA": "VAT",
        "HN": "HND",
        "HK": "HKG",
        "HU": "HUN",
        "IS": "ISL",
        "IN": "IND",
        "ID": "IDN",
        "IR": "IRN",
        "IQ": "IRQ",
        "IE": "IRL",
        "IM": "IMN",
        "IL": "ISR",
        "IT": "ITA",
        "JM": "JAM",
        "JP": "JPN",
        "JE": "JEY",
        "JO": "JOR",
        "KZ": "KAZ",
        "KE": "KEN",
        "KI": "KIR",
        "KP": "PRK",
        "KR": "KOR",
        "KW": "KWT",
        "KG": "KGZ",
        "LA": "LAO",
        "LV": "LVA",
        "LB": "LBN",
        "LS": "LSO",
        "LR": "LBR",
        "LY": "LBY",
        "LI": "LIE",
        "LT": "LTU",
        "LU": "LUX",
        "MO": "MAC",
        "MK": "MKD",
        "MG": "MDG",
        "MW": "MWI",
        "MY": "MYS",
        "MV": "MDV",
        "ML": "MLI",
        "MT": "MLT",
        "MH": "MHL",
        "MQ": "MTQ",
        "MR": "MRT",
        "MU": "MUS",
        "YT": "MYT",
        "MX": "MEX",
        "FM": "FSM",
        "MD": "MDA",
        "MC": "MCO",
        "MN": "MNG",
        "ME": "MNE",
        "MS": "MSR",
        "MA": "MAR",
        "MZ": "MOZ",
        "MM": "MMR",
        "NA": "NAM",
        "NR": "NRU",
        "NP": "NPL",
        "NL": "NLD",
        "NC": "NCL",
        "NZ": "NZL",
        "NI": "NIC",
        "NE": "NER",
        "NG": "NGA",
        "NU": "NIU",
        "NF": "NFK",
        "MP": "MNP",
        "NO": "NOR",
        "OM": "OMN",
        "PK": "PAK",
        "PW": "PLW",
        "PS": "PSE",
        "PA": "PAN",
        "PG": "PNG",
        "PY": "PRY",
        "PE": "PER",
        "PH": "PHL",
        "PN": "PCN",
        "PL": "POL",
        "PT": "PRT",
        "PR": "PRI",
        "QA": "QAT",
        "RE": "REU",
        "RO": "ROU",
        "RU": "RUS",
        "RW": "RWA",
        "BL": "BLM",
        "SH": "SHN",
        "KN": "KNA",
        "LC": "LCA",
        "MF": "MAF",
        "PM": "SPM",
        "VC": "VCT",
        "WS": "WSM",
        "SM": "SMR",
        "ST": "STP",
        "SA": "SAU",
        "SN": "SEN",
        "RS": "SRB",
        "SC": "SYC",
        "SL": "SLE",
        "SG": "SGP",
        "SX": "SXM",
        "SK": "SVK",
        "SI": "SVN",
        "SB": "SLB",
        "SO": "SOM",
        "ZA": "ZAF",
        "GS": "SGS",
        "SS": "SSD",
        "ES": "ESP",
        "LK": "LKA",
        "SD": "SDN",
        "SR": "SUR",
        "SJ": "SJM",
        "SE": "SWE",
        "CH": "CHE",
        "SY": "SYR",
        "TW": "TWN",
        "TJ": "TJK",
        "TZ": "TZA",
        "TH": "THA",
        "TL": "TLS",
        "TG": "TGO",
        "TK": "TKL",
        "TO": "TON",
        "TT": "TTO",
        "TN": "TUN",
        "TR": "TUR",
        "TM": "TKM",
        "TC": "TCA",
        "TV": "TUV",
        "UG": "UGA",
        "UA": "UKR",
        "AE": "ARE",
        "GB": "GBR",
        "US": "USA",
        "UM": "UMI",
        "UY": "URY",
        "UZ": "UZB",
        "VU": "VUT",
        "VE": "VEN",
        "VN": "VNM",
        "VG": "VGB",
        "VI": "VIR",
        "WF": "WLF",
        "EH": "ESH",
        "YE": "YEM",
        "ZM": "ZMB",
        "ZW": "ZWE"
    ]
}
var localUserApp : User? {
    get {
        return DataManager.sharedInstance.getPermanentlySavedUser()
    }
}
var localUserAppPic : String? {
    get {
        return DataManager.sharedInstance.localUserPic()
    }
}
var localUserAppId : Int? {
    get {
        return DataManager.sharedInstance.localUserId()
    }
}


extension DispatchQueue {

    static func myBackground(delay: Double = 0.0, background: (()->Void)? = nil, completion: (() -> Void)? = nil) {
        DispatchQueue.global(qos: .background).async {
            background?()
            if let completion = completion {
                DispatchQueue.main.async {
                    completion()
                }
                //                DispatchQueue.main.asyncAfter(deadline: .now() + delay, execute: {
                //
                //                })
            }
        }
    }
}


extension UILabel {
    
    var isTruncated: Bool {
        
        guard let labelText = text else {
            return false
        }
        
        let labelTextSize = (labelText as NSString).boundingRect(with: CGSize(width: frame.size.width, height: .greatestFiniteMagnitude),options: .usesLineFragmentOrigin,attributes: [NSAttributedString.Key.font: font ?? TreccoFont.kNeuzeitGroBlack(CGFloat(16)).font()],context: nil).size
        
        return labelTextSize.height > bounds.size.height
    }
    
    
    var numberOfLinesVisible : Int {
        
        if let text = text{
            // cast text to NSString so we can use sizeWithAttributes
            let myText = text as NSString
            
            //Set attributes
            let attributes = [NSAttributedString.Key.font : font!]
            
            //Calculate the size of your UILabel by using the systemfont and the paragraph we created before. Edit the font and replace it with yours if you use another
            let labelSize = myText.boundingRect(with: CGSize(width: bounds.width,height: CGFloat.greatestFiniteMagnitude), options: .usesLineFragmentOrigin, attributes: attributes, context: nil)
            
            //Now we return the amount of lines using the ceil method
            let lines = ceil(CGFloat(labelSize.height) / font.lineHeight)
            return Int(lines)
        }
        
        return 0
    }

    func addInterlineSpacing(spacingValue: CGFloat = 2) {

        // *** Check if there's any text
        guard let textString = text else { return }

        // *** Create "NSMutableAttributedString" with your text
        let attributedString = NSMutableAttributedString(string: textString)

        // *** Create instance of "NSMutableParagraphStyle"
        let paragraphStyle = NSMutableParagraphStyle()

        // *** Actually adding spacing we need to ParagraphStyle
        paragraphStyle.lineSpacing = spacingValue

        // *** Adding ParagraphStyle to your attributed String
        attributedString.addAttribute(
            .paragraphStyle,
            value: paragraphStyle,
            range: NSRange(location: 0, length: attributedString.length
            ))

        // *** Assign string that you've modified to current attributed Text
        attributedText = attributedString
    }

}


extension UIImageView {
    
    func addCircleGradiendBorder(_ width: CGFloat) {
        let gradient = CAGradientLayer()
        gradient.frame =  CGRect(origin: CGPoint.zero, size: bounds.size)
        let colors: [CGColor] = [UIColor(hexColor: "066EC9").cgColor,UIColor(hexColor: "08C58C").cgColor]
        gradient.colors = colors
        gradient.startPoint = CGPoint(x: 1, y: 0.5)
        gradient.endPoint = CGPoint(x: 0, y: 0.5)
        
        let cornerRadius = frame.size.width / 2
        layer.cornerRadius = cornerRadius
        clipsToBounds = true
        //        if(self.borderWidth == 0.0){
        //            self.borderWidth = 3
        //        }
        let shape = CAShapeLayer()
        let path = UIBezierPath(ovalIn: bounds)
        
        shape.lineWidth = width
        shape.path = path.cgPath
        shape.strokeColor = UIColor.black.cgColor
        shape.fillColor = UIColor.clear.cgColor // clear
        gradient.mask = shape
        
        layer.insertSublayer(gradient, below: layer)
    }
    
}
