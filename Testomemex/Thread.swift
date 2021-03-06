//
//  Threads.swift
//  Testomemex
//
//  Created by Mason Matthews on 8/28/15.
//  Copyright (c) 2015 Mason F. Matthews. All rights reserved.
//

import Foundation

class Thread {
    class func runOnUIThread(fn:()->()) {
        if NSThread.isMainThread() {
            fn()
        } else {
            dispatch_async(dispatch_get_main_queue(), fn)
        }
    }

    class func runOnBackgroundThread(fn:()->()) {
        dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), fn)
    }
}