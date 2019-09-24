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
        let carrerButton = tabBarsQuery.buttons["Carrer"]
        carrerButton.tap()
        tabBarsQuery.buttons["About me"].tap()
        carrerButton.tap()
        
        let tablesQuery = app.tables
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["Mobile developer"]/*[[".cells.staticTexts[\"Mobile developer\"]",".staticTexts[\"Mobile developer\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        carrerButton.tap()
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["Mar. 2014 – Jan. 2015"]/*[[".cells.staticTexts[\"Mar. 2014 – Jan. 2015\"]",".staticTexts[\"Mar. 2014 – Jan. 2015\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        carrerButton.tap()
        
    }
    
    
    func testFirtsElementInTV(){
        
        let app = XCUIApplication()
        app.tabBars.buttons["Carrer"].tap()
        
        let tablesQuery = app.tables
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["AstronesSoft"]/*[[".cells.staticTexts[\"AstronesSoft\"]",".staticTexts[\"AstronesSoft\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.swipeDown()
        app.children(matching: .window).element(boundBy: 0).children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .table).element.swipeUp()
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["Mar. 2014 – Jan. 2015"]/*[[".cells.staticTexts[\"Mar. 2014 – Jan. 2015\"]",".staticTexts[\"Mar. 2014 – Jan. 2015\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app.navigationBars["Gusanito.com"].buttons["baseline arrow back ios white "].tap()
        
    }

}
