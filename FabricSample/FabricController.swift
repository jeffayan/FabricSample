//
//  FabricController.swift
//  FabricSample
//
//  Created by Developer on 12/06/17.
//  Copyright © 2017 Developer. All rights reserved.
//

import UIKit
import Crashlytics

class FabricController: UIViewController {

    
    @IBOutlet var step1: UIButton!
    @IBOutlet var step2: UIButton!
    @IBOutlet var step3: UIButton!
    @IBOutlet var step4: UIButton!
    @IBOutlet var step5: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        step1.addTarget(self, action: #selector(self.buttonClicked(sender:)), for: .touchUpInside)

           step2.addTarget(self, action: #selector(self.buttonClicked(sender:)), for: .touchUpInside)
           step3.addTarget(self, action: #selector(self.buttonClicked(sender:)), for: .touchUpInside)
           step4.addTarget(self, action: #selector(self.buttonClicked(sender:)), for: .touchUpInside)
           step5.addTarget(self, action: #selector(self.buttonClicked(sender:)), for: .touchUpInside)
    }

  
    func buttonClicked(sender : UIButton){
        switch sender {
        case step1:
           Answers.logCustomEvent(withName: "Step 1", customAttributes: nil)
        case step2:
            Answers.logCustomEvent(withName: "Step 2", customAttributes: nil)
        case step3:
            Answers.logCustomEvent(withName: "Step 3", customAttributes: nil)
        case step4:
            Answers.logCustomEvent(withName: "Step 4", customAttributes: nil)
        case step5:
            Answers.logCustomEvent(withName: "Step 5", customAttributes: nil)
            
        default:
            print("Default Triggered....")
        }
         self.enableButton(sender: sender)
    }
    
    
    
    func enableButton(sender : UIButton){
        
      (step1.isEqual(sender) ? step2 : (step2.isEqual(sender) ? step3 : (step3.isEqual(sender) ? step4 : step5))).isHidden = false
      sender.isHidden = true
        
//        step1.isHidden = !step1.isEqual(sender)      
//        
//        step2.isHidden = !step2.isEqual(sender)
//        step3.isHidden = !step3.isEqual(sender)
//        step4.isHidden = !step4.isEqual(sender)
//        step5.isHidden = !step5.isEqual(sender)
        
        
    }
    
    
    
    @IBAction func cancel(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    

}
