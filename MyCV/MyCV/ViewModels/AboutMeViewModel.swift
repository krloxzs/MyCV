//
//  AboutMeViewModel.swift
//  MyCV
//
//  Created by Carlos Rodriguez on 9/22/19.
//  Copyright © 2019 Carlos Rodriguez. All rights reserved.
//

import Foundation


class AboutMeViewModel {
    
    let user:UserProfileInfo?
    
    init() {
        self.user = UserProfileInfo(name: Constants.userInformation.name.rawValue, lastName: Constants.userInformation.lastName.rawValue, level: Constants.userInformation.position.rawValue, about: Constants.userInformation.aboutMe.rawValue)
    }
}
