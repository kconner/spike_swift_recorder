//
//  ApiInterface.swift
//  Testomemex
//
//  Created by Mason F. Matthews on 8/14/15.
//  Copyright (c) 2015 Mason F. Matthews. All rights reserved.
//

import Foundation

let apiRoot = "https://exomemex-api.herokuapp.com/api/v1/"

class ApiInterface {
    
    class func getUsers() -> String {
        if let
            url = NSURL(fileURLWithPath: apiRoot + "users/"),
            data = NSData(contentsOfURL: url),
            list = NSJSONSerialization.JSONObjectWithData(data, options: nil, error: nil) as? [[String: AnyObject]]
        {
            return "Made it!!!"
        } else {
            return "No list found!"
        }
    }

    
}