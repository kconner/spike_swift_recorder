//
//  FirstViewController.swift
//  Testomemex
//
//  Created by Mason F. Matthews on 8/12/15.
//  Copyright (c) 2015 Mason F. Matthews. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

//    @IBOutlet var usersTextView : UITextView!
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        
//        self.usersTextView.text = "Loading"
//        
//        var results = ""
//        for person in ApiInterface.getUsers() {
//            let id = person["id"]
//            let name = person["name"]
//            results += "\(id!):  \(name!)\n"
//        }
//        self.usersTextView.text = results
//    }
//
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }
    
    @IBOutlet var speakerField: UITextField!
    @IBOutlet var speakerOptions: UIPickerView! = UIPickerView()
    
    var options = ["Cat One", "Cat Two", "Cat Three"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        speakerOptions.hidden = true
        speakerField.text = options[0]
    }
    
    // returns the number of 'columns' to display.
    func numberOfComponentsInPickerView(pickerView: UIPickerView!) -> Int{
        return 1
    }
    
    // returns the # of rows in each component..
    func pickerView(pickerView: UIPickerView!, numberOfRowsInComponent component: Int) -> Int{
        return options.count
    }
    
    func pickerView(pickerView: UIPickerView!, titleForRow row: Int, forComponent component: Int) -> String! {
        return options[row]
    }
    
    func pickerView(pickerView: UIPickerView!, didSelectRow row: Int, inComponent component: Int)
    {
        speakerField.text = options[row]
        speakerOptions.hidden = true
    }
    
    @IBAction func textFieldShouldBeginEditing(sender: UITextField) -> Void {
        speakerOptions.hidden = false
    }


}

