//
//  ViewController2.swift
//  Present Modally Calismasi
//
//  Created by Kasım Adalan on 22.07.2019.
//  Copyright © 2019 info. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
    @IBAction func tiklanDismiss(_ sender: Any) {
        
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func goto3(_ sender: Any) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let gidilecekViewController = storyboard.instantiateViewController(withIdentifier: "sayfa3") as! ViewController3
        
        self.present(gidilecekViewController,animated: true,completion: nil)
        
    }
}
