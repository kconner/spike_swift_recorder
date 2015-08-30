//
//  AddAlertDelegate.swift
//  Testomemex
//
//  Created by Mason F. Matthews on 8/28/15.
//  Copyright (c) 2015 Mason F. Matthews. All rights reserved.
//

import UIKit

class AddAlertDelegate: NSObject, UIAlertViewDelegate {
    var capture:AddAlertDelegate?
    var completionHandler:((Int, String) -> ())
    
    init(callback:((Int, String) -> ())) {
        self.completionHandler = callback
        super.init()
        capture = self //prevent immediate deallocation
    }
    
    func alertView(alertView: UIAlertView, clickedButtonAtIndex buttonIndex: Int) {
        if buttonIndex == 1 {
            if let name = alertView.textFieldAtIndex(0)?.text {
                Thread.runOnUIThread {
                    ApiInterface.postPerson(["name": name], completionHandler: self.completionHandler)
                }
            }
        }
    }
}
