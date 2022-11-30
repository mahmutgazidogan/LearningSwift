//
//  ViewController2.swift
//  3 - Show Segue Çalışması
//
//  Created by Mahmut Gazi Doğan on 11.10.2022.
//

import UIKit

class ViewController2: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.hidesBackButton = true  // Back tuşunu gizledik
    }
    
    @IBAction func geri(_ sender: Any) {
        /* navigationController?.popViewController(animated: true) // 1 sayfa geri gelir
    
        navigationController?.popToRootViewController(animated: true) // en baştaki sayfaya döner */
    }
    
    @IBAction func goto3(_ sender: Any) {
        /* let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let gidilecekViewController = storyboard.instantiateViewController(withIdentifier: "sayfa3") as! ViewController3
        navigationController!.pushViewController(gidilecekViewController, animated: true) */
    }
    
}
  
