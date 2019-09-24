//
//  CarrerHistoryViewController.swift
//  MyCV
//
//  Created by Carlos Rodriguez on 9/23/19.
//  Copyright © 2019 Carlos Rodriguez. All rights reserved.
//

import UIKit

class CarrerHistoryViewController: BaseViewController {
    // MARK: - IBOutlet
    @IBOutlet weak var tableView: UITableView!
    
    // MARK: - var
    private var viewModel: CarrerViewModel =  CarrerViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupUI()
        
    }
    
}
 // MARK: - SetupBaseViewControllerProtocol
extension CarrerHistoryViewController:SetupBaseViewControllerProtocol{
    func setupUI() {
        self.title = AppStrings.Carrer_VC_Title
        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.resetButtonsItems()
        self.tableView.contentInsetAdjustmentBehavior = .never
        self.tableView.estimatedRowHeight = 100
        self.tableView?.register(UINib(nibName: String(describing: HistoryCareerTableViewCell.self), bundle: nil), forCellReuseIdentifier: String(describing: HistoryCareerTableViewCell.self))
    }
}


// MARK: - UITableViewDataSource,UITableViewDelegate
extension CarrerHistoryViewController: UITableViewDataSource,UITableViewDelegate{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.viewModel.listOfJobs.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        switch indexPath.row {
        default:
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: HistoryCareerTableViewCell.self), for: indexPath) as? HistoryCareerTableViewCell
            cell?.selectionStyle = UITableViewCell.SelectionStyle.none
            cell?.SetupCell(withViewModel: self.viewModel.listOfJobs[indexPath.row], inRow: indexPath.row)
            return cell!
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let VC = JobInfoViewController()
        VC.job = self.viewModel.listOfJobs[indexPath.row]
        self.navigationController?.pushViewController(VC, animated: true)
    }
    
}


