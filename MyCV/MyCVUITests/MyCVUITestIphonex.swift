//
//  MyCVUITestIphonex.swift
//  MyCVUITests
//
//  Created by Carlos Rodriguez on 9/24/19.
//  Copyright © 2019 Carlos Rodriguez. All rights reserved.
//

import XCTest

class MyCVUITestIphonex: XCTestCase {

    override func setUp() {
       
        continueAfterFailure = false

        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDown() {
       
    }

    func testLinks(){
        
        let tablesQuery = XCUIApplication().tables
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["Summary of Qualifications"]/*[[".cells.staticTexts[\"Summary of Qualifications\"]",".staticTexts[\"Summary of Qualifications\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.swipeUp()
        tablesQuery.cells.containing(.staticText, identifier:"You can find me in").children(matching: .button).element(boundBy: 2).tap()
        
    }
    
    func testTabBar(){
        
        
        let app = XCUIApplication()
        let tabBarsQuery = app.tabBars
        let carrerButton = tabBarsQuery.buttons["Carrer"]
        carrerButton.tap()
        tabBarsQuery.buttons["About me"].tap()
        carrerButton.tap()
        app.tables/*@START_MENU_TOKEN@*/.staticTexts["AstronesSoft"]/*[[".cells.staticTexts[\"AstronesSoft\"]",".staticTexts[\"AstronesSoft\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app.navigationBars["AstronesSoft"].buttons["baseline arrow back ios white "].tap()

    }
    
    func testFirtsElementInTV(){
        let app = XCUIApplication()
        app.tabBars.buttons["Carrer"].tap()
        
        let mar2014Jan2015StaticText = app.tables/*@START_MENU_TOKEN@*/.staticTexts["Mar. 2014 – Jan. 2015"]/*[[".cells.staticTexts[\"Mar. 2014 – Jan. 2015\"]",".staticTexts[\"Mar. 2014 – Jan. 2015\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        mar2014Jan2015StaticText.tap()
        
        let baselineArrowBackIosWhiteButton = app.navigationBars["Gusanito.com"].buttons["baseline arrow back ios white "]
        baselineArrowBackIosWhiteButton.tap()
        mar2014Jan2015StaticText.tap()
        baselineArrowBackIosWhiteButton.tap()
      
    }

}
