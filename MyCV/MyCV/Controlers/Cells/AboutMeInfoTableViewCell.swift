//
//  AboutMeInfoTableViewCell.swift
//  MyCV
//
//  Created by Carlos Rodriguez on 9/23/19.
//  Copyright © 2019 Carlos Rodriguez. All rights reserved.
//

import UIKit

class AboutMeInfoTableViewCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var infoLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

extension AboutMeInfoTableViewCell: UITableViewCellSetupProtocol{
    func SetupCell(withViewModel viewModel: Any?) {
        if let model = viewModel as? UserProfileInfo{
            self.titleLabel.text = AppStrings.About_VC_title
            self.infoLabel.text = model.about
        }
        
    }
}
