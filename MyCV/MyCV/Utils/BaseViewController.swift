//
//  BaseViewController.swift
//  NutriwenApp
//
//  Created by Carlos Rodriguez on 19/05/19.

//

import Foundation
import UIKit


protocol SetupBaseViewControllerProtocol{
    func setupUI()
}

class BaseViewController: UIViewController, UIGestureRecognizerDelegate{
    
    enum NavigationBackButton: Int {
        case navigationBackButtonNone
        case navigationBackButtonDefault
        case navigationBackButtonX
    }
    
    enum NavigationBarType: Int {
        case navigationBarTypeDefault
        case navigationBarTypeHidden
    }
    
    /// Navigation Back Button Style
    var navigationBackButton: NavigationBackButton = .navigationBackButtonNone
    
    /// Navigation Bar Type of current view
    var navigationBarType: NavigationBarType = .navigationBarTypeDefault
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.interactivePopGestureRecognizer?.delegate = self
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = true
        // User Interface
        setupUserInterface()
        
    }
    func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldBeRequiredToFailBy otherGestureRecognizer: UIGestureRecognizer) -> Bool {
        return true
    }
    
    // Before rendering - UI
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        prepareActionsForView()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   // MARK:- Default Behavior
    
    @objc func back(_ sender: UIBarButtonItem) {
        // Perform your custom actions
        // ...
        // Go back to the previous ViewController
        _ = self.navigationController?.popViewController(animated: true)
    }
    func back() {
        // Perform your custom actions
        // ...
        // Go back to the previous ViewController
        _ = self.navigationController?.popViewController(animated: true)
    }

    func prepareActionsForView() {
        setBackButtonBy("baseline_arrow_back_ios_white_36pt")
        
        switch self.navigationBarType {
        case .navigationBarTypeDefault:
            self.navigationController?.isNavigationBarHidden = false
            break
            
        case .navigationBarTypeHidden:
            self.navigationController?.isNavigationBarHidden = true
            break
        }
    }
    

    func setupUserInterface() {
        // TabBar appearance----
        UINavigationBar.appearance().backgroundColor = UIColor(hex: Constants.Colors.NavBarBGColor.rawValue)
        UINavigationBar.appearance().barTintColor = UIColor(hex: Constants.Colors.NavBarBGColor.rawValue)
        // Title
        UINavigationBar.appearance().titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        
        //TabBar Background
        self.navigationController?.navigationBar.barStyle = UIBarStyle.blackOpaque
        self.navigationController?.navigationBar.barTintColor =  UIColor(hex: Constants.Colors.NavBarBGColor.rawValue)
        self.prepareActionsForView()
    }
    
    fileprivate func setBackButtonBy(_ imgBackButton: String) {
        if self.navigationBackButton == .navigationBackButtonNone{
            self.resetButtonsItems()
        }else{
            let backButton: UIButton = UIButton(type: .custom)
            backButton.setImage(UIImage(named: "baseline_arrow_back_ios_white_36pt"), for: UIControl.State())
            backButton.addTarget(self, action: #selector(BaseViewController.back(_:)), for: .touchUpInside)
            backButton.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
            backButton.imageView?.contentMode = .scaleAspectFit
            let backButtonItem = UIBarButtonItem(customView: backButton)
            navigationItem.leftBarButtonItem = backButtonItem
        }
       
    }

    func resetButtonsItems() {
        leftButtonItems()
    }
    fileprivate func leftButtonItems() {
        self.navigationItem.leftBarButtonItems = []
    }

}

