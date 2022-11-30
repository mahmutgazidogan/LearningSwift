//
//  ViewController3.swift
//  3 - Show Segue Çalışması
//
//  Created by Mahmut Gazi Doğan on 11.10.2022.
//

import UIKit

class ViewController3: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func goto1(_ sender: Any) {
        /* let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let gidilecekViewController = storyboard.instantiateViewController(withIdentifier: "sayfa1") as! ViewController
        navigationController!.pushViewController(gidilecekViewController, animated: true)*/
    }
    
    @IBAction func goto2(_ sender: Any) {
       /* let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let gidilecekViewController = storyboard.instantiateViewController(withIdentifier: "sayfa2") as! ViewController2
        navigationController!.pushViewController(gidilecekViewController, animated: true) */
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "gofrom3to1" {
            print("Geçiş: 3'ten 1'e geçiş yapıldı")
        }
        if segue.identifier == "gofrom3to2" {
            print("Geçiş: 3'ten 2'ye geçiş yapıldı")
        }
    }

}
