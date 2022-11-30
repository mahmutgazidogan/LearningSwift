//
//  ViewControllerB.swift
//  5 - Sayfalar Arası Geçiş
//
//  Created by Mahmut Gazi Doğan on 12.10.2022.
//

import UIKit

class ViewControllerB: UIViewController {

    @IBOutlet weak var etiket: UILabel!
    
    var mesaj:String?
    var kisi = Kisiler()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("Kisi id : \(kisi.kisiId!) Kişi ad : \(kisi.kisiAd!)")
        etiket.text = mesaj!
    }
    

    
}
