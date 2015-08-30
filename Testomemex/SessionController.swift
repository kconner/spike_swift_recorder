//
//  SessionController.swift
//  Testomemex
//
//  Created by Kevin Conner on 8/30/15.
//  Copyright (c) 2015 Mason F. Matthews. All rights reserved.
//

import UIKit

// A session controller owns the session model.
// View controllers can use the shared instance to get the current session.

final class SessionController {

    // Register for this notification to be notified when the session changes.
    static let sessionDidChangeNotification = "SessionControllerSessionDidChange"

    var session: Session {
        didSet {
            // When the session changes, notify anyone who uses this data.
            let notification = NSNotification(name: SessionController.sessionDidChangeNotification, object: self)
            NSNotificationCenter.defaultCenter().postNotification(notification)
        }
    }

    static let sharedController = SessionController()

    private init() {
        //TODO: Get rid of this default and have a login page!
        session = Session(user: Person(id: 1, name:"Mason"))
    }

}
