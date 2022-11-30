//
//  ViewController.swift
//  1 - Görsel Nesnelerin Swift Sınıfına Bağlanması
//
//  Created by Mahmut Gazi Doğan on 5.10.2022.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var etiket: UILabel!
    
    @IBOutlet var etiketler: [UILabel]!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        etiket.text = "MERHABA"
        
        etiketler[0].text = "HEY 1"
        etiketler[1].text = "HEY 2"
        
    }

    
    @IBAction func tiklan(_ sender: Any) {
        
        etiket.text = "BUTON TIKLANDI"
        etiketler[0].text = "HEY 10"
        etiketler[1].text = "HEY 20"
    }
    
}

 
