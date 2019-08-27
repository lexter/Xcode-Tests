//
//  MyMasterDetailDemoUITests.swift
//  MyMasterDetailDemoUITests
//
//  Created by Lexter Labra on 23/08/2019.
//  Copyright © 2019 Lexter Labra. All rights reserved.
//

import XCTest

class MyMasterDetailDemoUITests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        let app = XCUIApplication()
        if app.buttons["Edit"].waitForExistence(timeout: 1) {
            XCTAssert(app.navigationBars.buttons["Edit"].exists, "Cannot locate Edit button.")
            app.buttons["Edit"].tap()
        }
        
        if app.buttons["Add"].waitForExistence(timeout: 1) {
            XCTAssert(app.navigationBars.buttons["Add"].exists, "Cannot locate Add button.")
            app.buttons["Add"].tap()
            sleep(2)
            app.buttons["Add"].tap()
            sleep(2)
            app.buttons["Add"].tap()
            sleep(2)
            app.buttons["Add"].tap()
        }
        
//        if app.buttons["Delete"].waitForExistence(timeout: 3) {
//            XCTAssert(app.buttons["Delete"].exists, "Cannot locate Delete button.")
//            app.buttons["Delete"].tap()
//        }
        
        
    
        let buttonChildren = app.buttons.allElementsBoundByAccessibilityElement

        for child in buttonChildren {
            print("CHILD ---> \(child)")
        }
        
//
//        XCTAssert(buttonChildren.firstMatch.exists, "Cannot locate + button.")
////        XCTAssert(app.staticTexts["Welcome to XCUITest"].exists)
    }

}
