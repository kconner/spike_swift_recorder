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
    var tableView:UITableView
    var controller:MasterViewController
    
    init(_ controller:MasterViewController, _ tableView:UITableView) {
        self.controller = controller
        self.tableView = tableView
        super.init()
        capture = self //prevent immediate deallocation
    }
    
    func alertView(alertView: UIAlertView, clickedButtonAtIndex buttonIndex: Int) {
        if buttonIndex == 1 {
            if let name = alertView.textFieldAtIndex(0)?.text {
                Thread.runOnUIThread {
                    ApiInterface.postPerson(["name": name], controller: self.controller)
                }
            }
        }
    }
}
