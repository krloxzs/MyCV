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

// MARK: - AboutMeHeaderTableViewCell extension

extension AboutMeHeaderTableViewCell: UITableViewCellSetupProtocol{
    func SetupCell(withViewModel viewModel: Any?,inRow row: Int) {
        if let model = viewModel as? UserProfileInfo{
            self.nameLabel.text = "\(model.name) \(model.lastName)"
            self.levelLabel.text = model.level
            if let  url = URL(string: Constants.url.myPhoto.rawValue){
                Webservice().dowloadImage(url: url) {[weak self](error, image) in
                    if error != nil {
                        self?.profileImage.image = UIImage(named: Constants.userInformation.dummyPhoto.rawValue)
                        self?.profileImage.contentMode = .scaleAspectFit
                        self?.profileImage.setCircular()
                    }else{
                        self?.profileImage.image = image
                        self?.profileImage.contentMode = .scaleAspectFit
                        self?.profileImage.setCircular()
                    }
                }
            }
        }
    }

}
