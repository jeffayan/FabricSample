//
//  AppDelegate.swift
//  FabricSample
//
//  Created by Developer on 09/06/17.
//  Copyright © 2017 Developer. All rights reserved.
//

import UIKit
import Fabric
import Crashlytics

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        Fabric.with([Crashlytics.self])
     //   Crashlytics.sharedInstance().crash()
        logUser()
        return true
    }
    
    
    func logUser() {
        // TODO: Use the current user's information
        // You can call any combination of these three methods
        Crashlytics.sharedInstance().setUserEmail("jayan.pushpan@kaaylabs.com")
        Crashlytics.sharedInstance().setUserIdentifier("9585290750")
        Crashlytics.sharedInstance().setUserName("Jeff Ayan")
    }


   

}

