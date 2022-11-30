//
//  ViewController.swift
//  Present Modally Calismasi
//
//  Created by Kasım Adalan on 22.07.2019.
//  Copyright © 2019 info. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func goto2(_ sender: Any) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let gidilecekViewController = storyboard.instantiateViewController(withIdentifier: "sayfa2") as! ViewController2
        
        self.present(gidilecekViewController,animated: true,completion: nil)
        
    }
    
    
}

