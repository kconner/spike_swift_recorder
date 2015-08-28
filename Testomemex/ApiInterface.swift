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
    
    class func getPeople() -> [Person] {
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
    
    class func postPerson(person_params: Dictionary<String,String>, controller: MasterViewController) {
        var request = NSMutableURLRequest(URL: NSURL(string: apiRoot + "people")!)
        var session = NSURLSession.sharedSession()
        request.HTTPMethod = "POST"
        
        var params = ["person":person_params]
        
        var err: NSError?
        request.HTTPBody = NSJSONSerialization.dataWithJSONObject(params, options: nil, error: &err)
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        request.addValue("application/json", forHTTPHeaderField: "Accept")
        var task = session.dataTaskWithRequest(request, completionHandler: {data, response, error -> Void in
            println("Response: \(response)")
            var body = NSString(data: data, encoding: NSUTF8StringEncoding)
            println("Body: \(body)")
            var err: NSError?
            var json = NSJSONSerialization.JSONObjectWithData(data, options: .MutableLeaves, error: &err) as? NSDictionary
            
            if(err != nil) {
                println(err!.localizedDescription)
                let jsonStr = NSString(data: data, encoding: NSUTF8StringEncoding)
                println("Error could not parse JSON: '\(jsonStr)'")
            } else {
                if let parseJSON = json {
                    var id = parseJSON["id"] as? Int
                    println("Success!  New id: \(id)")
                    var newPerson = Person(id: id!, name: person_params["name"]!)
                    controller.people.append(newPerson)
                    controller.people.sort({ p1, p2 in p1.name < p2.name })
                    controller.tableView.reloadData()
                }
                else {
                    let jsonStr = NSString(data: data, encoding: NSUTF8StringEncoding)
                    println("Error could not parse JSON: \(jsonStr)")
                }
            }
        })
        
        task.resume()
    }
    
    
}