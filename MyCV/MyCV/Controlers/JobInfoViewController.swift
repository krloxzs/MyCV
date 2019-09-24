//
//  JobInfoViewController.swift
//  MyCV
//
//  Created by Carlos Rodriguez on 9/23/19.
//  Copyright © 2019 Carlos Rodriguez. All rights reserved.
//

import UIKit

class JobInfoViewController: BaseViewController {
    // MARK: - IBOutlet
    @IBOutlet weak var companyInfo: UITextView!
    @IBOutlet weak var comapnyImage: UIImageView!
    
    // MARK: - vars
    var job: Job?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupUI()
    }
}
// MARK: - SetupBaseViewControllerProtocol
extension JobInfoViewController:SetupBaseViewControllerProtocol{
    func setupUI() {
        if let job = self.job{
            self.title = job.companyName
            self.navigationController?.navigationBar.prefersLargeTitles = true
            self.navigationBackButton = .navigationBackButtonDefault
            self.companyInfo.text = job.carrerInfo
            if let  url = URL(string: job.imageUrl){
                Webservice().dowloadImage(url: url) {[weak self](error, image) in
                    if error != nil {
                        self?.comapnyImage.image = UIImage(named: Constants.userInformation.dummyPhoto.rawValue)
                        self?.comapnyImage.contentMode = .scaleAspectFit
                    }else{
                        self?.comapnyImage.image = image
                        self?.comapnyImage.contentMode = .scaleAspectFit
                    }
                }
            }
        }
    }
}



