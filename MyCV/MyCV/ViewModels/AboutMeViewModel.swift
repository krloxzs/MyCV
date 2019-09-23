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
        self.user = UserProfileInfo(name: Constants.userInformation.name.rawValue,
                                    lastName: Constants.userInformation.lastName.rawValue,
                                    level: AppStrings.About_VC_level,
                                    about: AppStrings.About_VC_about,
                                    summaryofQualifications: AppStrings.About_VC_summaryofQualifications,
                                    languages: AppStrings.About_VC_languages,
                                    socialMedia: AppStrings.About_VC_socialMedia,
                                    contact: AppStrings.About_VC_contact)
    }
}
