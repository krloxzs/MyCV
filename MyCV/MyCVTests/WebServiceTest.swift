//
//  WebServiceTest.swift
//  MyCVTests
//
//  Created by Carlos Rodriguez on 9/24/19.
//  Copyright © 2019 Carlos Rodriguez. All rights reserved.
//

import XCTest

class WebServiceTest: XCTestCase {

    func testWebService() {
        if let  url = URL(string: "https://homepages.cae.wisc.edu/~ece533/images/airplane.png"){
            Webservice().dowloadImage(url: url) { (Error, Image) in
                XCTAssertNotNil(Error, "The image is ok")
            }
        }
    }
    
    func test_StartDownload_Performance() {
        measure {
            if let  url = URL(string: "https://homepages.cae.wisc.edu/~ece533/images/airplane.png"){
                Webservice().dowloadImage(url: url) { (Error, Image) in
                    XCTAssertNotNil(Error, "The image is ok")
                }
            }
        }
    }

}
