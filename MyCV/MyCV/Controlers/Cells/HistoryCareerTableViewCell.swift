//
//  HistoryCareerTableViewCell.swift
//  MyCV
//
//  Created by Carlos Rodriguez on 9/23/19.
//  Copyright © 2019 Carlos Rodriguez. All rights reserved.
//

import UIKit

class HistoryCareerTableViewCell: UITableViewCell {
    // MARK: - IBOutlet
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subtitleLabel: UILabel!
    @IBOutlet weak var infoLabel: UILabel!
    @IBOutlet weak var companyImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}



// MARK: - AboutMeHeaderTableViewCell extension
extension HistoryCareerTableViewCell: UITableViewCellSetupProtocol{
    func SetupCell(withViewModel viewModel: Any?,inRow row: Int) {
        if let model = viewModel as? Job{
            self.titleLabel.text = model.companyName
            self.subtitleLabel.text = model.date
            self.infoLabel.text = model.businessPosition
            if let  url = URL(string: model.imageUrl){
                Webservice().dowloadImage(url: url) {[weak self](error, image) in
                    if error != nil {
                        self?.companyImage.image = UIImage(named: Constants.userInformation.dummyPhoto.rawValue)
                        self?.companyImage.contentMode = .scaleAspectFit
                    }else{
                        self?.companyImage.image = image
                        self?.companyImage.contentMode = .scaleAspectFit
                    }
                }
            }
        }
    }
    
}
