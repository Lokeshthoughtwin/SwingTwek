//
//  TabBarHomeVC.swift
//  SwingTweak
//
//  Created by apple on 10/12/21.
//

import UIKit

private let defaultIndexValue = 0

class TabBarHomeVC: UITabBarController {
    
    // MARK: - Overrides
    static let identifier = "TreccoTabBarVC"
    public override var selectedIndex: Int {
        didSet {
            guard let items = self.tabBar.items else { return }
            if items.indices.contains(selectedIndex) {
                let item = items[selectedIndex]
                self.tabBar(tabBar, didSelect: item)
            }
        }
    }
    
    static var isFromSignUp:Bool = false
    public override var viewControllers: [UIViewController]? {
        didSet {
            setup()
        }
    }
    
    /// Tabbar height
    @IBInspectable var barHeight: CGFloat {
        get{
            return self.kBarHeight ?? self.tabBar.frame.height
        }
        set{
            self.kBarHeight = newValue
        }
    }
    
    /// icon up animation point
    @IBInspectable var upAnimationPoint: CGFloat {
        get{
            return self.kUpAnimationPoint
        }
        set{
            self.kUpAnimationPoint = newValue
        }
    }
    
    private var kBarHeight: CGFloat?
    
    private var kUpAnimationPoint: CGFloat = 0//20
    
    private var priviousSelectedIndex: Int = defaultIndexValue
    
    private var priviousSelectedIndexBeforeCreate: Int = defaultIndexValue
    
    //    var mDataLocationMaps:[RecommendationModel] = [RecommendationModel]()
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        //        self.navigationController?.viewControllers.forEach({ (controllers) in
        //            if(controllers.isKind(of: TreccoTabBarVC.self) || controllers.isKind(of: SplashVC.self)){
        //
        //            }else{
        //                controllers.removeFromParent()
        //            }
        //        })
        if(self.navigationController != nil){
            self.navigationController?.interactivePopGestureRecognizer?.isEnabled = false
            self.navigationController?.interactivePopGestureRecognizer?.delegate = nil
        }
        self.setObserver()
        
        // Do any additional setup after loading the view.
        NotificationCenter.default.addObserver(self, selector: #selector(centerTabTapped), name: NSNotification.Name("CenterTabTapped"), object: nil)
    }
    
    @objc private func centerTabTapped() {
        selectedIndex = 2
    }
    
    /// Notifies the view controller that its view was added to a view hierarchy.
    ///
    /// - Parameter animated: variable for namiation
    override public func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        setup()
        //        self.apiCallForNotifyCount()
        //        self.apiCallForChatCount()
    }
    
    public override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        
    }
    
    func setup() {
        
        guard let count = tabBar.items?.count, count > 0 else { return }
        if self.priviousSelectedIndex == defaultIndexValue {
            if let item = self.tabBar.selectedItem {
                self.tabBar(self.tabBar, didSelect: item)
            }
        }
        self.applicationDidBecomeActive()
        //        if self.mDataLocationMaps.isEmpty {
        //            if((viewControllers?[1].isKind(of: SearchVC.self)) != nil){
        //
        //                let vc = viewControllers?[1] as! SearchVC
        //                self.apiCallForAllPlaces(1, vc)
        //            }
        ////            self.viewControllers?.forEach({ (controllers) in
        ////                if(controllers.isKind(of: SearchVC.self)){
        ////
        ////                    let vc = controllers as! SearchVC
        ////                    self.apiCallForAllPlaces(1, vc)
        ////                }
        ////            })
        //        }
    }
    
    //    private func apiCallForAllPlaces(_ page:Int = 1, _ vc:SearchVC){
    //        DispatchQueue.global(qos: .background).async {
    //            APIManager.sharedInstance.opertationWithRequest(withApi: API.getAllPlcaes(per_page: "1000", page: "\(page)")) { (APIResponse) in
    //                switch APIResponse {
    //                case .Success(let data):
    //                    let mData = (data?.data as? [RecommendationModel] ?? [RecommendationModel]())
    //                    self.mDataLocationMaps.append(contentsOf: mData)
    //                    if(mData.count == 1000 && self.mDataLocationMaps.count >= 1000 && self.mDataLocationMaps.count % 1000 == 0){
    //    //                        self.filterDataMap(page,self.qPlaceCity?.location)
    //                        let newPage = (self.mDataLocationMaps.count / 1000) + 1
    //                        debugPrint("TreccoTabBarVC -> apiCallForPlaces -> page -> \(newPage)")
    //                        self.apiCallForAllPlaces(newPage, vc)
    //                    }else{
    //                        self.mDataLocationMaps = self.mDataLocationMaps.removeDuplicates()
    //                        self.mDataLocationMaps.removeAll { (item) -> Bool in
    //                            return (item.recommendations?.count ?? 0) == 0
    //                        }
    //
    //                        vc.mDataLocationMapsBackUp = self.mDataLocationMaps
    //    //                        let tabBarController = self.window?.rootViewController as! TreccoTabBarVC
    //    //                        let tabBarRootViewControllers: Array = tabBarController.viewControllers!
    //    //
    //    //                        let navView = tabBarRootViewControllers[0] as! UINavigationController
    //    //                        let searchVC = navView.viewControllers[0] as! SearchVC
    //    //                        searchVC.mDataLocationMapsBackUp = self.mDataLocationMaps
    //    //                    self.mDataLocationMaps = (data?.data as? [RecommendationModel] ?? [RecommendationModel]())
    //                        debugPrint("TreccoTabBarVC -> apiCallForPlaces -> Success -> \(vc.mDataLocationMapsBackUp.count)")
    //                    }
    //
    //                case .Failure(_):
    //                    break
    //                }
    //            }
    //        }
    //    }
    
    /// setObserver
    func setObserver() {
        //        NotificationCenter.default.addObserver(self,
        //                                               selector: #selector(applicationDidBecomeActive), name: UIApplication.didBecomeActiveNotification, object: nil)
        //        NotificationCenter.default.addObserver(self, selector: #selector(applicationDidBecomeActive), name: Notification.Name(rawValue: SSConstants.updateViewNotification), object: nil)
        //        NotificationCenter.default.addObserver(self, selector: #selector(checkNotifyCount), name: .chatCountCheck, object: nil)
        //        NotificationCenter.default.addObserver(self, selector: #selector(checkBellNotifyCount), name: .notificationCountCheck, object: nil)
        
    }
    
    @objc func checkNotifyCount(){
        //        let count = DataManager.sharedInstance.getChatCount() + DataManager.sharedInstance.getNotifyCount()
        //        self.tabBar.items?[3].badgeValue = count > 0 ? "\(count >= 100 ? "99+" : "\(count)")" : nil
        //        UIApplication.shared.applicationIconBadgeNumber = count > 0 ? count : 0
    }
    
    @objc func checkBellNotifyCount(){
        //        let count = DataManager.sharedInstance.getChatCount() + DataManager.sharedInstance.getNotifyCount()
        //        self.tabBar.items?[3].badgeValue = count > 0 ? "\(count >= 100 ? "99+" : "\(count)")" : nil
        //        UIApplication.shared.applicationIconBadgeNumber = count > 0 ? count : 0
    }
    
    /// removeObserver
    func removeObserver() {
        NotificationCenter.default.removeObserver(self)
    }
    
    /// call when application become active
    @objc func applicationDidBecomeActive() {
        //        self.apiCallForNotifyCount()
        //        DispatchQueue.main.async { [weak self] in
        //            guard let uSelf = self else { return }
        //            _ = uSelf.getUpView(index: uSelf.selectedIndex)
        ////            if view.frame.origin.y > 0 {
        ////                view.frame.origin.y -= uSelf.kUpAnimationPoint
        ////            }
        //        }
    }
    
    deinit {
        self.removeObserver()
    }
    
}

// MARK: - set bar height
extension TabBarHomeVC {
    
    override public func viewWillLayoutSubviews() {
        guard var height = kBarHeight else { return }
        height += 100
        var tabBarFrame = self.tabBar.frame
        tabBarFrame.size.height = height
        tabBarFrame.origin.y = UIScreen.main.bounds.height - height
        self.tabBar.frame = tabBarFrame
        self.tabBar.clipsToBounds = false
    }
}

// MARK: - Tabbar Delegate
extension TabBarHomeVC {
    
    
    /// Sent to the delegate when the user selects a tab bar item.
    ///
    /// - Parameters:
    ///   - tabBar: The tab bar that is being customized.
    ///   - item: The tab bar item that was selected.
    override public func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        //  if(item.title == "") {
        
        //            let vc = self.getVC(storyboard: .CREATION, vcIdentifier: WhatToCreateVC.identifier) as! WhatToCreateVC
        //            vc.onWelcomeDismiss = {
        //                self.selectedIndex = self.priviousSelectedIndexBeforeCreate
        //            }
        //            self.present(vc, animated: true, completion: nil)
    }
    //        if let uSelf = self.tabBar as? SSCustomTabBar, let items = uSelf.items, let index = items.firstIndex(of: item), index != self.priviousSelectedIndex {
    //
    //            let width = UIScreen.main.bounds.width/CGFloat(items.count)
    //            let changeValue = (width*CGFloat(index+1))-(width/2)
    //            uSelf.animating = true
    //
    //            let orderedTabBarItemViews: [UIView] = {
    //                let interactionViews = tabBar.subviews.filter({ $0 is UIControl })
    //                return interactionViews.sorted(by: { $0.frame.minX < $1.frame.minX })
    //            }()
    //
    //            orderedTabBarItemViews.forEach({ (objectView) in
    //                let objectIndex = orderedTabBarItemViews.firstIndex(of: objectView)
    //                if index ==  objectIndex {
    //                    print(index)
    //                }else if  objectIndex == self.priviousSelectedIndex {
    //                    self.priviousSelectedIndexBeforeCreate = self.priviousSelectedIndex
    //                    UIView.animate(withDuration: 0.5, delay: 0.0, usingSpringWithDamping: 0.37, initialSpringVelocity: 0.0, options: .curveEaseInOut, animations: {
    //                        objectView.frame = CGRect(x: objectView.frame.origin.x, y: objectView.frame.origin.y// + self.kUpAnimationPoint
    //                            , width: objectView.frame.width, height: objectView.frame.height)
    //                    }, completion: nil)
    //                }
    //            })
    //            self.priviousSelectedIndex = index
    //            self.performSpringAnimation(for: orderedTabBarItemViews[index], changeValue: changeValue)
    //        }else{
    //
    //   }
    //        isNotification = true
}


/// Get specific view from
///
/// - Parameter index: view index
/// - Returns: specific view
func getUpView(index: Int) -> UIView {
    //        let orderedTabBarItemViews: [UIView] = {
    //            let interactionViews = tabBar.subviews.filter({ $0 is UIControl })
    //            return interactionViews.sorted(by: { $0.frame.minX < $1.frame.minX })
    //        }()
    return UIView()
}


/// Perform Animation
///
/// - Parameters:
///   - view: going to up.
///   - changeValue: center location for wave.
func performSpringAnimation(for view: UIView, changeValue: CGFloat) {
    
    //   if let uSelf = self.tabBar as? SSCustomTabBar {
    //            UIView.animate(withDuration: 0.9, delay: 0.0, usingSpringWithDamping: 0.37, initialSpringVelocity: 0.0, options: [], animations: { () -> Void in
    //                uSelf.setDefaultlayoutControlPoints(waveHeight: uSelf.minimalHeight, locationX: changeValue)
    ////                let width = UIScreen.main.bounds.width/CGFloat(uSelf.items!.count)
    ////                let changeValueS = (width*CGFloat(3))-(width/2)
    ////                uSelf.setMiddlePointAbove(waveHeight: uSelf.minimalHeight, locationX: changeValueS)
    //
    //            }, completion: { _ in
    //                uSelf.animating = false
    //            })
    //            UIView.animate(withDuration: 0.9, delay: 0.0, usingSpringWithDamping: 0.37, initialSpringVelocity: 0.0, options: .curveEaseInOut, animations: {
    //                view.frame = CGRect(x: view.frame.origin.x, y: view.frame.origin.y//- self.kUpAnimationPoint
    //                    , width: view.frame.width, height: view.frame.height)
    //            }, completion: nil)
    //        }
    // }
    
}
