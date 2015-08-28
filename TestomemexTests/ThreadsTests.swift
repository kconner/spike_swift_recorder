//
//  ThreadsTests.swift
//  Testomemex
//
//  Created by Mason Matthews on 8/28/15.
//  Copyright (c) 2015 Mason F. Matthews. All rights reserved.
//

import XCTest
class ThreadsTests: XCTestCase {
    func testThreads() {
        Thread.runOnBackgroundThread {
            XCTAssertFalse(NSThread.isMainThread(),
                "Running on background thread")
            Thread.runOnUIThread {
                XCTAssertTrue(NSThread.isMainThread(),
                    "Running on UI thread")
            }
        }
    }
}