//
//  ViewController.swift
//  FabricSample
//
//  Created by Developer on 09/06/17.
//  Copyright © 2017 Developer. All rights reserved.
//

import UIKit
import Crashlytics


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

    @IBAction func clickAction(){
        
        Answers.logCustomEvent(withName: "Clicked Start", customAttributes: ["Date":"\(Date())"])
        
        if let vc = storyboard?.instantiateViewController(withIdentifier: "fabricId"){
            self.present(vc, animated: true, completion: nil)
        }
        
        
//        if let url = URL(string: "https://docs.fabric.io/apple/crashlytics/missing-dsyms.html") {
//            Answers.logCustomEvent(withName: "Manual Crash", customAttributes: ["Date":"\(Date())"])
//            do{
//                let data = try Data(contentsOf: url)
//                try data.write(to: url)
//                
//            } catch let error {
//                Crashlytics.sharedInstance().recordError(error)
//            }
//            
//            
//        }
        
        
    }

}

