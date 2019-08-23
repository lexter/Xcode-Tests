//
//  MyMasterDetailDemoTests.swift
//  MyMasterDetailDemoTests
//
//  Created by Lexter Labra on 23/08/2019.
//  Copyright © 2019 Lexter Labra. All rights reserved.
//

import XCTest
@testable import MyMasterDetailDemo

class MyMasterDetailDemoTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
            
            
        }
    }
    
    func testPerformanceForLoop() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
            
            var total = 0
            
            for i in 0 ..< 1_000_000 {
                total += i
            }
        }
    }
    
    func testPerformanceWhileLoop() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
            
            var total = 0
            var i = 0
            
            while i < 1_000_000 {
                total += i
                i += 1
            }
        }
    }
}
