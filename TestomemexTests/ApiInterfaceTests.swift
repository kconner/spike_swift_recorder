//
//  ApiInterfaceTests.swift
//  Testomemex
//
//  Created by Mason Matthews on 8/28/15.
//  Copyright (c) 2015 Mason F. Matthews. All rights reserved.
//

import XCTest
class ApiInterfaceTests: XCTestCase {
    func testGetPeople() {
        // TODO: How do you mock in Swift tests?
        XCTAssertTrue(ApiInterface.getPeople().count > 0)
    }
}