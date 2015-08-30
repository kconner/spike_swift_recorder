//
//  Session.swift
//  Testomemex
//
//  Created by Mason Matthews on 8/30/15.
//  Copyright (c) 2015 Mason F. Matthews. All rights reserved.
//

import Foundation

struct Session {
    let user:Person
    var token:String?
    
    init(user:Person) {
        self.user = user
    }

    func getToken() {
        // TODO: hit API with email and password
        // Store token returned by api
        // Store person details returned by api
        // Return something that says whether the login was successful
    }
}