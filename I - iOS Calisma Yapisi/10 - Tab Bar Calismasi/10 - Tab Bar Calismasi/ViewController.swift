//
//  ViewController.swift
//  10 - Tab Bar Çalışması
//
//  Created by Mahmut Gazi Doğan on 17.10.2022.
//

import UIKit

class ViewController: UIViewController {
    
    var profilSayac = 0
    var isSayac = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func profilArttir(_ sender: Any) {
        
        if let tabItems = tabBarController?.tabBar.items{
        
            let profileTabBarItem = tabItems[0]
            profilSayac = profilSayac + 1
            
            profileTabBarItem.badgeColor = UIColor.purple
            profileTabBarItem.badgeValue = String(profilSayac)
            
        }
    }
    
    @IBAction func isArttir(_ sender: Any) {
        
        if let tabItems = tabBarController?.tabBar.items{
        
            let profileTabBarItem = tabItems[1]
            isSayac = isSayac + 1
            profileTabBarItem.badgeColor = UIColor.red
            profileTabBarItem.badgeValue = String(isSayac)
            
        }
    }
}
