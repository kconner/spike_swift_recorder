//
//  FirstViewController.swift
//  Testomemex
//
//  Created by Mason F. Matthews on 8/12/15.
//  Copyright (c) 2015 Mason F. Matthews. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet var usersTextView : UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.usersTextView.text = "Loading"
        
//        var results = ""
//        for user in users {
//            let id = user["id"]
//            let name = user["name"]
//            results += "\(id):  \(name)"
//        }
        self.usersTextView.text = ApiInterface.getUsers()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

