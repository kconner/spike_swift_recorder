//
//  ApiInterface.swift
//  Testomemex
//
//  Created by Mason F. Matthews on 8/25/15.
//  Copyright (c) 2015 Mason F. Matthews. All rights reserved.
//

import Foundation

let apiRoot = "https://exomemex-api.herokuapp.com/api/v1/"

class ApiInterface {
    
    class func getUsers() -> [Person] {
        if let
            url = NSURL(string: apiRoot + "people"),
            data = NSData(contentsOfURL: url),
            list = NSJSONSerialization.JSONObjectWithData(data, options: nil, error: nil) as? [[String: AnyObject]]
        {
            var people:[Person] = []
            for result in list {
                people.append(Person(id: result["id"] as! Int, name: result["name"] as! String))
            }
            return people
        } else {
            return []
        }
    }
    
    
}