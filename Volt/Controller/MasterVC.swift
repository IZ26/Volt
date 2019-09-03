//
//  MasterVC.swift
//  Volt
//
//  Created by Ilan Zerdoun on 03/09/2019.
//  Copyright © 2019 Ilan Zerdoun. All rights reserved.
//

import UIKit

class MasterVC: UIViewController {
    
    let changeView = UISegmentedControl()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let chatButton = barButton(imageName: "chat-icon" , selector: #selector(chatButtonPressed))
        let profilButton = profilButtonBar(imageName: "avatar", selector: #selector(profilButtonPressed))
        
        self.navigationController?.navigationBar.isTranslucent = false
        
        navigationItem.titleView = changeView
        navigationItem.rightBarButtonItems = [chatButton]
        navigationItem.leftBarButtonItems = [profilButton]
        
        setupView()
    }
    
    
    func barButton(imageName: String, selector: Selector) -> UIBarButtonItem {
        let button = UIButton(type: .custom)
        button.setImage(UIImage(named: imageName), for: .normal)
        button.imageView?.contentMode = .scaleAspectFit
        button.frame = CGRect(x: 0, y: 0, width: 35, height: 35)
        button.widthAnchor.constraint(equalToConstant: 35).isActive = true
        button.heightAnchor.constraint(equalToConstant: 35).isActive = true
        button.addTarget(self, action: selector, for: .touchUpInside)
        return UIBarButtonItem(customView: button)
    }
    
    func profilButtonBar(imageName: String, selector: Selector) -> UIBarButtonItem {
        let button = UIButton(type: .custom)
        button.setImage(UIImage(named: imageName), for: .normal)
        button.frame = CGRect(x: 0, y: 0, width: 35, height: 35)
        button.imageView?.layer.cornerRadius = button.bounds.height / 2
        button.layer.masksToBounds = true
        button.widthAnchor.constraint(equalToConstant: 35).isActive = true
        button.heightAnchor.constraint(equalToConstant: 35).isActive = true
        button.addTarget(self, action: selector, for: .touchUpInside)
        return UIBarButtonItem(customView: button)
    }
    
    @objc func chatButtonPressed() {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        
        let chatListVC = storyBoard.instantiateViewController(withIdentifier: "ChatListVC") as! ChatListVC
        
        self.navigationController?.pushViewController(chatListVC, animated: true)
    }
    
    @objc func profilButtonPressed() {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        
        let profilVC = storyBoard.instantiateViewController(withIdentifier: "ProfilVC") as! ProfilVC
        
        self.navigationController?.pushViewController(profilVC, animated: true)

    }
    
    private func setupView (){
        setupSegmentedControl()

        updateView()
    }
    
    private func setupSegmentedControl(){
        
        changeView.frame = CGRect(x: 0, y: 0, width: 120, height: 30)
        changeView.layer.cornerRadius = changeView.bounds.height / 2
        changeView.layer.masksToBounds = true
        changeView.layer.borderColor = UIColor.declineBlack.cgColor
        changeView.layer.borderWidth = 1
        changeView.tintColor = UIColor.declineBlack
        
        changeView.removeAllSegments()
        changeView.insertSegment(withTitle: "Cards", at: 0, animated: false)
        changeView.insertSegment(withTitle: "Search", at: 1, animated: false)
        changeView.addTarget(self, action: #selector(selectionDidChange(_:)), for: .valueChanged)

        // Select First Segment
        changeView.selectedSegmentIndex = 0
    }

    @objc func selectionDidChange(_ sender: UISegmentedControl) {
        updateView()
    }

    private lazy var summaryViewController: HomeVC = {
        // Load Storyboard
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)

        // Instantiate View Controller
        var viewController = storyboard.instantiateViewController(withIdentifier: "HomeVC") as! HomeVC

        // Add View Controller as Child View Controller
        self.add(asChildViewController: viewController)

        return viewController
    }()

    private lazy var sessionsViewController: SearchVC = {
        // Load Storyboard
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)

        // Instantiate View Controller
        var viewController = storyboard.instantiateViewController(withIdentifier: "SearchVC") as! SearchVC

        // Add View Controller as Child View Controller
        self.add(asChildViewController: viewController)

        return viewController
    }()

    private func add(asChildViewController viewController: UIViewController) {
        // Add Child View Controller
        addChild(viewController)

        // Add Child View as Subview
        view.addSubview(viewController.view)

        // Configure Child View
        viewController.view.frame = view.bounds
        viewController.view.autoresizingMask = [.flexibleWidth, .flexibleHeight]

        // Notify Child View Controller
        viewController.didMove(toParent: self)
    }

    private func remove(asChildViewController viewController: UIViewController) {
        // Notify Child View Controller
        viewController.willMove(toParent: nil)

        // Remove Child View From Superview
        viewController.view.removeFromSuperview()

        // Notify Child View Controller
        viewController.removeFromParent()
    }

    private func updateView() {
        if changeView.selectedSegmentIndex == 0 {
            remove(asChildViewController: sessionsViewController)
            add(asChildViewController: summaryViewController)
        } else {
            remove(asChildViewController: summaryViewController)
            add(asChildViewController: sessionsViewController)
        }
    }

}
