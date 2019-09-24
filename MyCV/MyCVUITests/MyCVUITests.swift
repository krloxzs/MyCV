//
//  MyCVUITests.swift
//  MyCVUITests
//
//  Created by Carlos Rodriguez on 9/22/19.
//  Copyright © 2019 Carlos Rodriguez. All rights reserved.
//

import XCTest

class MyCVUITestsIpad5: XCTestCase {

    override func setUp() {
      
        continueAfterFailure = false

        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    func testLinks(){
        XCUIApplication().tables/*@START_MENU_TOKEN@*/.buttons["Git"]/*[[".cells.buttons[\"Git\"]",".buttons[\"Git\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        XCUIDevice.shared.orientation = .portrait
        XCUIDevice.shared.orientation = .portrait
     
        
    }
 
    func testTabBar(){
        
        
        let app = XCUIApplication()
        let tabBarsQuery = app.tabBars
        tabBarsQuery.buttons["Item 2"].tap()
        tabBarsQuery.children(matching: .button).matching(identifier: "About me").element(boundBy: 0).tap()
        tabBarsQuery.children(matching: .button).matching(identifier: "About me").element(boundBy: 1).tap()
        
        let tablesQuery = app.tables
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["Mobile developer"]/*[[".cells.staticTexts[\"Mobile developer\"]",".staticTexts[\"Mobile developer\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app.navigationBars["Gusanito.com"].buttons["baseline arrow back ios white "].tap()
        tablesQuery/*@START_MENU_TOKEN@*/.cells.containing(.staticText, identifier:"Jan. 2016 – Dec. 2016")/*[[".cells.containing(.staticText, identifier:\"AstronesSoft\")",".cells.containing(.staticText, identifier:\"Jan. 2016 – Dec. 2016\")"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.staticTexts["iOS Developer"].tap()
        app.navigationBars["AstronesSoft"].buttons["baseline arrow back ios white "].tap()
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["Jan. 2017 – Jan. 2018"]/*[[".cells.staticTexts[\"Jan. 2017 – Jan. 2018\"]",".staticTexts[\"Jan. 2017 – Jan. 2018\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app.navigationBars["Favly"].buttons["baseline arrow back ios white "].tap()
     
    
    }
    
    func testFirtsElementInTV(){
        
        let app = XCUIApplication()
        app.tabBars.buttons["Item 2"].tap()
        
        let tablesQuery = app.tables
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["Gusanito.com"]/*[[".cells.staticTexts[\"Gusanito.com\"]",".staticTexts[\"Gusanito.com\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app.navigationBars["Gusanito.com"].buttons["baseline arrow back ios white "].tap()
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["Jan. 2016 – Dec. 2016"]/*[[".cells.staticTexts[\"Jan. 2016 – Dec. 2016\"]",".staticTexts[\"Jan. 2016 – Dec. 2016\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app.navigationBars["AstronesSoft"].buttons["baseline arrow back ios white "].tap()
        
      
        
    }

}
