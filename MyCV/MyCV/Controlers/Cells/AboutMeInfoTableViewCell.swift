//
//  AboutMeInfoTableViewCell.swift
//  MyCV
//
//  Created by Carlos Rodriguez on 9/23/19.
//  Copyright © 2019 Carlos Rodriguez. All rights reserved.
//

import UIKit

class AboutMeInfoTableViewCell: UITableViewCell {
    // MARK: - IBOutlet
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var infoLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}

// MARK: - UITableViewCellSetupProtocol
extension AboutMeInfoTableViewCell: UITableViewCellSetupProtocol{
    func SetupCell(withViewModel viewModel: Any?,inRow row: Int) {
        if let model = viewModel as? UserProfileInfo{
            switch row {
            case 1:
                self.titleLabel.text = AppStrings.About_VC_title
                self.infoLabel.text = model.about
            case 2:
                self.titleLabel.text = AppStrings.About_VC_summaryofQualificationsTitle
                self.infoLabel.text = model.summaryofQualifications
            case 4:
                self.titleLabel.text = AppStrings.About_VC_contactTitle
                self.infoLabel.text = model.contact
            default:
                break
            }
           
        }
       
    }
}
