//
//  CarrerHistoryViewController.swift
//  MyCV
//
//  Created by Carlos Rodriguez on 9/23/19.
//  Copyright © 2019 Carlos Rodriguez. All rights reserved.
//

import UIKit

class CarrerHistoryViewController: BaseViewController {

    @IBOutlet weak var tableView: UITableView!
    
    private var viewModel: CarrerViewModel =  CarrerViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupUI()
        // Do any additional setup after loading the view.
    }
    

    // MARK: - Navigatio
}

extension CarrerHistoryViewController:SetupBaseViewControllerProtocol{
    func setupUI() {
        self.title = AppStrings.About_VC_title
        self.navigationController?.navigationBar.prefersLargeTitles = true
                self.tableView.contentInsetAdjustmentBehavior = .never
                self.tableView.estimatedRowHeight = 100
                self.tableView?.register(UINib(nibName: String(describing: AboutMeHeaderTableViewCell.self), bundle: nil), forCellReuseIdentifier: String(describing: AboutMeHeaderTableViewCell.self))
                self.tableView?.register(UINib(nibName: String(describing: AboutMeInfoTableViewCell.self), bundle: nil), forCellReuseIdentifier: String(describing: AboutMeInfoTableViewCell.self))
                self.tableView?.register(UINib(nibName: String(describing: SocialMediaTableViewCell.self), bundle: nil), forCellReuseIdentifier: String(describing: SocialMediaTableViewCell.self))
    }
}


// MARK: - UITableViewDataSource,UITableViewDelegate
extension CarrerHistoryViewController: UITableViewDataSource,UITableViewDelegate{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        switch indexPath.row {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: AboutMeHeaderTableViewCell.self), for: indexPath) as? AboutMeHeaderTableViewCell
            cell?.selectionStyle = UITableViewCell.SelectionStyle.none
//            cell?.SetupCell(withViewModel: self.viewModel.user, inRow: indexPath.row)
            return cell!
        case 1,2,4:
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: AboutMeInfoTableViewCell.self), for: indexPath) as? AboutMeInfoTableViewCell
            cell?.selectionStyle = UITableViewCell.SelectionStyle.none
//            cell?.SetupCell(withViewModel: self.viewModel.user, inRow: indexPath.row)
            return cell!
            
        case 3 :
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: SocialMediaTableViewCell.self), for: indexPath) as? SocialMediaTableViewCell
            cell?.selectionStyle = UITableViewCell.SelectionStyle.none
//            cell?.delegate = self
//            cell?.SetupCell(withViewModel: self.viewModel.user, inRow: indexPath.row)
            return cell!
            
        default:
            return UITableViewCell()
        }
    }
    
    
}


