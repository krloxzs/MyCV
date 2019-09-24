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
        let aboutMeButton = tabBarsQuery.children(matching: .button).matching(identifier: "About me").element(boundBy: 1)
        aboutMeButton.tap()
        tabBarsQuery.children(matching: .button).matching(identifier: "About me").element(boundBy: 0).tap()
        aboutMeButton.tap()
        
        let tablesQuery = app.tables
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["Mar. 2014 – Jan. 2015"]/*[[".cells.staticTexts[\"Mar. 2014 – Jan. 2015\"]",".staticTexts[\"Mar. 2014 – Jan. 2015\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        aboutMeButton.tap()
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["Mobile developer"]/*[[".cells.staticTexts[\"Mobile developer\"]",".staticTexts[\"Mobile developer\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app.navigationBars["Gusanito.com"].buttons["baseline arrow back ios white "].tap()
        aboutMeButton.tap()
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["Tejuino.mx"]/*[[".cells.staticTexts[\"Tejuino.mx\"]",".staticTexts[\"Tejuino.mx\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app.navigationBars["Tejuino.mx"].buttons["baseline arrow back ios white "].tap()
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["Jan. 2017 – Jan. 2018"]/*[[".cells.staticTexts[\"Jan. 2017 – Jan. 2018\"]",".staticTexts[\"Jan. 2017 – Jan. 2018\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app.navigationBars["Favly"].buttons["baseline arrow back ios white "].tap()
                
    }
    
    func testFirtsElementInTV(){
        
        let app = XCUIApplication()
        let tabBarsQuery = app.tabBars
        tabBarsQuery.buttons["Item 2"].tap()
        
        let mar2014Jan2015StaticText = app.tables/*@START_MENU_TOKEN@*/.staticTexts["Mar. 2014 – Jan. 2015"]/*[[".cells.staticTexts[\"Mar. 2014 – Jan. 2015\"]",".staticTexts[\"Mar. 2014 – Jan. 2015\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        mar2014Jan2015StaticText.tap()
        
        let element = app.children(matching: .window).element(boundBy: 0).children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element
        element.children(matching: .other).element(boundBy: 0).swipeDown()
        element.children(matching: .other).element(boundBy: 1).children(matching: .textView).element.swipeUp()
        
        let aboutMeButton = tabBarsQuery.children(matching: .button).matching(identifier: "About me").element(boundBy: 1)
        aboutMeButton.tap()
        mar2014Jan2015StaticText.tap()
        aboutMeButton.tap()
        
    }

}
