//
//  Constants.swift
//  MyCV
//
//  Created by Carlos Rodriguez on 9/22/19.
//  Copyright © 2019 Carlos Rodriguez. All rights reserved.
//
import Foundation


enum Constants {
    
    
    enum userInformation:String {
        case dummyPhoto = "TabBar_face"
        case name = "Carlos"
        case lastName = "Rodriguez"
    }
    
    enum url :String{
        case myPhoto = "https://media.licdn.com/dms/image/C4E03AQF6IbvG6wf3_g/profile-displayphoto-shrink_200_200/0?e=1574899200&v=beta&t=PT451RDc5TZtdbhB5TxIg7Qdjoy0ibq6O7c_6ZLjCo8"
    }
    
    
    enum Colors: Int {
        case NavBarBGColor          = 0x2c3e50

        case tabBarBackground       = 0x177626
        case tabBarTitleColor       = 0x000000
        case collectionViewColor    = 0xf2f2f2
        case statusBar              = 0x23486C
        case backgroundFillColor    = 0x222222
        case fillcolor              = 0xFF0080
        case subTitleColorF          = 0x7E8B98
    }
    
}
