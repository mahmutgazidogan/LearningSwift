//
//  ViewController.swift
//  3 - Show Segue Çalışması
//
//  Created by Mahmut Gazi Doğan on 11.10.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func goto2(_ sender: Any) {
       /* let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let gidilecekViewController = storyboard.instantiateViewController(withIdentifier: "sayfa2") as! ViewController2
        navigationController!.pushViewController(gidilecekViewController, animated: true) */
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "gofrom1to2" {
            print("Geçiş: 1'den 2'ye geçiş yapıldı")
        }
    }
}

