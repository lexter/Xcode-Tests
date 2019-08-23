//
//  AppleMovieSearchTests.swift
//  MyMasterDetailDemoTests
//
//  Created by Lexter Labra on 23/08/2019.
//  Copyright © 2019 Lexter Labra. All rights reserved.
//

import XCTest

class AppleMovieSearchTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testSearch() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        let expectation = self.expectation(description: "Movie Search")
        
        let url = URL(string: "https://itunes.apple.com/search?term=star&country=au&media=movie&all")!
        
        let task = URLSession(configuration: URLSessionConfiguration.default)
        task.dataTask(with: url, completionHandler: { (data, respoonse, error) in
            XCTAssert(true)
            XCTAssertNotNil(data, "Data is null due to an error occurs.")
            XCTAssertNil(error, "An error occurred when searching movies in iTunes.")
            
            guard error == nil else {
                return
            }
            
            if let json = try? JSONSerialization.jsonObject(with: data!) as? [String: Any] {
                XCTAssertNotNil(json["resultCount"], "Result count is nil.")
                XCTAssertNoThrow(json["resultCount"], "Result count is undefined.")
                XCTAssertGreaterThan(json["resultCount"] as! Int16, 0, "Result count is empty.")
                
                XCTAssertNotNil(json["results"], "Results is nil.")
                XCTAssertNoThrow(json["results"], "Results is undefined.")
                XCTAssert(json["results"] is [[String: Any]], "Results is not an array of dictionary.")
            }
            
            expectation.fulfill()
        }).resume()
        
        self.waitForExpectations(timeout: 30.0, handler: { (error) in
            XCTAssertNil(error)
        })
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
