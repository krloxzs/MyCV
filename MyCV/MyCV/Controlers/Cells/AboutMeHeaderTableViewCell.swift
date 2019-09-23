//
//  AboutMeHeaderTableViewCell.swift
//  MyCV
//
//  Created by Carlos Rodriguez on 9/22/19.
//  Copyright © 2019 Carlos Rodriguez. All rights reserved.
//

import UIKit

class AboutMeHeaderTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var levelLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}

extension AboutMeHeaderTableViewCell: UITableViewCellSetupProtocol{
    func SetupCell(withViewModel viewModel: Any?) {
        if let model = viewModel as? UserProfileInfo{
            self.nameLabel.text = "\(model.name) \(model.lastName)"
            self.levelLabel.text = model.level
        }
        
    }

}
