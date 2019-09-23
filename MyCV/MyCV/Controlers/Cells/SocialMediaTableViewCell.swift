//
//  SocialMediaTableViewCell.swift
//  MyCV
//
//  Created by Carlos Rodriguez on 9/23/19.
//  Copyright © 2019 Carlos Rodriguez. All rights reserved.
//

import UIKit

protocol SocialMediaTableViewCellDelegate{
    func gotoGit()
    func gotoLinkedin()
    func gotoTwitter()
}

class SocialMediaTableViewCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    var delegate :SocialMediaTableViewCellDelegate?
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func gitHubButtonpress(_ sender: UIButton) {
        self.delegate?.gotoGit()
    }
    
    
    @IBAction func linkedinButtonPress(_ sender: UIButton) {
        self.delegate?.gotoLinkedin()
    }
    
    @IBAction func twitterButtonPress(_ sender: UIButton) {
         self.delegate?.gotoTwitter()
    }
}

extension SocialMediaTableViewCell: UITableViewCellSetupProtocol{
    func SetupCell(withViewModel viewModel: Any?, inRow row: Int) {
        if let model = viewModel as? UserProfileInfo{
           self.titleLabel.text = model.socialMedia
        }
    }
}
