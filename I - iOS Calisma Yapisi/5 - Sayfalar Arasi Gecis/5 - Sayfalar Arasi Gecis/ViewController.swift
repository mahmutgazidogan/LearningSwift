//
//  ViewController.swift
//  5 - Sayfalar Arası Geçiş
//
//  Created by Mahmut Gazi Doğan on 12.10.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var girdiAlani: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func gonder(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let gidilecekViewController = storyboard.instantiateViewController(withIdentifier: "sayfaB") as! ViewControllerB
        
        let gonderilecekMesaj = girdiAlani.text
        gidilecekViewController.mesaj = gonderilecekMesaj!
        
        let gidecekKisi = Kisiler(kisiId: 850, kisiAd: "Mahmut")
        gidilecekViewController.kisi = gidecekKisi
        
        // Modal geçiş
        // self.present(gidilecekViewController, animated: true,completion: nil) 
        
        // Navigation geçişi
        self.navigationController?.pushViewController(gidilecekViewController, animated: true)
        
    }
    
}



