//
//  UItableViewCellProtocols.swift
//  MyCV
//
//  Created by Carlos Rodriguez on 9/22/19.
//  Copyright © 2019 Carlos Rodriguez. All rights reserved.
//

import Foundation

protocol UITableViewCellSetupProtocol {
    func SetupCell(withViewModel viewModel:Any?,inRow row:Int)
}
