//
//  ChatListVC.swift
//  Volt
//
//  Created by Ilan Zerdoun on 03/09/2019.
//  Copyright © 2019 Ilan Zerdoun. All rights reserved.
//

import UIKit

class ChatListVC: UIViewController,  UITableViewDataSource, UITableViewDelegate {
    
    let user = User()
    
    @IBOutlet weak var searchInput: TextFieldCustom!{
        didSet {
            searchInput.tintColor = UIColor.lightGray
            searchInput.setIcon(UIImage(named: "search-icon")!)
        }
    }
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        view.addGestureRecognizer(tap)
        
        setNavBar()
        setStyle()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "chatCell", for: indexPath ) as! CustomCell

        cell.name.text = "\(user.firstName) \(user.lastName)"
        cell.lastMessage.text = "Salut! Soirée kiwi?"
        cell.profilImage.image = UIImage(named: user.image)
        
        return cell
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
    
}

extension ChatListVC{
    func setStyle(){
        searchInput.layer.cornerRadius = searchInput.bounds.height / 2
        searchInput.layer.masksToBounds = true
    }
    
    func setNavBar(){
        self.navigationController?.navigationBar.tintColor = UIColor.declineBlack
        self.title = "Discussions"
        self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.declineBlack, NSAttributedString.Key.font: UIFont.current]
        navigationController?.navigationBar.topItem?.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: self, action: nil)
    }
}

extension UITextField {
    
    func setIcon(_ image: UIImage) {
        let iconView = UIImageView(frame:
            CGRect(x: 10, y: 5, width: 20, height: 20))
        iconView.image = image
        let iconContainerView: UIView = UIView(frame:
            CGRect(x: 20, y: 0, width: 30, height: 30))
        iconContainerView.addSubview(iconView)
        leftView = iconContainerView
        leftViewMode = .always
    }
}

class TextFieldCustom: UITextField {
    
    let padding = UIEdgeInsets(top: 0, left: 40, bottom: 0, right: 20)
    
    override open func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
    
    override open func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
    
    override open func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
}
