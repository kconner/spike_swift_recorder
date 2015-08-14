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
    
    class func getUsers() -> [[String: AnyObject]] {
        if let
            url = NSURL(string: apiRoot + "people"),
            data = NSData(contentsOfURL: url),
            list = NSJSONSerialization.JSONObjectWithData(data, options: nil, error: nil) as? [[String: AnyObject]]
        {
            return list
        } else {
            return []
        }
    }

    
}