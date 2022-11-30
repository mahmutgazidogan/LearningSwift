//
//  ViewController2.swift
//  2 - Notification Center Uygulama
//
//  Created by Mahmut Gazi Doğan on 4.11.2022.
//

import UIKit

class ViewController2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func gonder(_ sender: Any) {
        
        let kisi = Kisiler(kisi_ad: "Ahmet", kisi_yas: 18)
        NotificationCenter.default.post(name: .bildirimAdi, object: nil,userInfo: ["mesaj":"merhaba","tarih":Date(),"nesne":kisi])
        
        dismiss(animated: true)
        
    }
    
    
}
