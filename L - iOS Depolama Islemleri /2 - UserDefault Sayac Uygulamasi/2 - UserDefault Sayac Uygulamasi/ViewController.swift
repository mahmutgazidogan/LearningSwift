//
//  ViewController.swift
//  2 - UserDefault Sayaç Uygulaması
//
//  Created by Mahmut Gazi Doğan on 28.10.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelSayac: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let d = UserDefaults.standard
        
        var sayac = d.integer(forKey: "sayac")
        sayac = sayac + 1       // uygulama her açıldığında sayaç 1 artacak
        d.set(sayac, forKey: "sayac")
        labelSayac.text = "Sayaç: \(sayac)"
        
        
    }


}

