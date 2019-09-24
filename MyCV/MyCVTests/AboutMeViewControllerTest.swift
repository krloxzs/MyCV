//
//  AboutMeViewControllerTest.swift
//  MyCV
//
//  Created by Carlos Rodriguez on 9/24/19.
//  Copyright © 2019 Carlos Rodriguez. All rights reserved.
//

import XCTest

class AboutMeViewControllerTest: XCTestCase {
    var vc: AboutMeViewController!
    var window: UIWindow!
    override func setUp() {
        super.setUp()
        window = UIWindow()
        self.setupAboutMeVC()
    }
     // Jus to check that the sotryboard is ok
    func setupAboutMeVC() {
        let bundle = Bundle.main
        let storyboard = UIStoryboard(name: "Main", bundle: bundle)
        vc = storyboard.instantiateViewController(withIdentifier: "AboutMeViewController") as? AboutMeViewController
    }
    func loadView() {
        window.addSubview(vc.view)
        RunLoop.current.run(until: Date())
    }


}
