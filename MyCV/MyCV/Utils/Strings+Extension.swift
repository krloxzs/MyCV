//
//  Strings+Extension.swift
//  MyCV
//
//  Created by Carlos Rodriguez on 9/23/19.
//  Copyright © 2019 Carlos Rodriguez. All rights reserved.
//

import Foundation

extension String {
    // localized string
    var localized: String {
        return NSLocalizedString(self, tableName: "Localizable", value: "\(self)", comment: "")
    }
}
