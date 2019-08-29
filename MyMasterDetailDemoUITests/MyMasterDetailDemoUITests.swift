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
        let navBar = app.navigationBars["Master"]
        XCTAssert(navBar.buttons["Edit"].exists, "Cannot locate Edit button.")
        navBar.buttons["Edit"].tap()
        
        
//        XCTAssert(navBar.buttons["Add"].exists, "Cannot locate Add button.")
//        navBar.buttons["Add"].tap()
//        sleep(2)
//        navBar.buttons["Add"].tap()
//        sleep(2)
//        navBar.buttons["Add"].tap()
//        sleep(2)
//        navBar.buttons["Add"].tap()
        
        let table = app.tables
        XCTAssert(table["Delete"].exists, "Cannot locate Delete button.")
        app.tables.buttons["Delete"].tap()
        
        navBar.buttons["Done"].tap()
    
        let buttonChildren = app.buttons.allElementsBoundByAccessibilityElement

        for child in buttonChildren {
            print("CHILD ---> \(child)")
        }
        
//
//        XCTAssert(buttonChildren.firstMatch.exists, "Cannot locate + button.")
////        XCTAssert(app.staticTexts["Welcome to XCUITest"].exists)
    }
    
    func testRecorded() {
        let app = XCUIApplication()
        let masterNavigationBar = app.navigationBars["Master"]
        masterNavigationBar.buttons["Edit"].tap()
        
        let tablesQuery = app.tables
        tablesQuery.buttons["Delete 2019-08-28 22:36:53 +0000"].tap()
        
        let deleteButton = tablesQuery.buttons["Delete"]
        deleteButton.tap()
        tablesQuery/*@START_MENU_TOKEN@*/.buttons["Delete 2019-08-28 22:36:48 +0000"]/*[[".cells.buttons[\"Delete 2019-08-28 22:36:48 +0000\"]",".buttons[\"Delete 2019-08-28 22:36:48 +0000\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        deleteButton.tap()
        masterNavigationBar.buttons["Done"].tap()
        
    }

}
