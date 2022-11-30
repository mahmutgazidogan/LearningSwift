//
//  AnasayfaVC.swift
//  3 - UserDefault Login Uygulaması
//
//  Created by Mahmut Gazi Doğan on 28.10.2022.
//

import UIKit

class AnasayfaVC: UIViewController {

    @IBOutlet weak var labelSonuc: UILabel!
    
    let d = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.hidesBackButton = true
        
        let ka = d.string(forKey: "kullaniciAdi")   ?? "bos"
        labelSonuc.text = ka
        
    }

    @IBAction func cikisYap(_ sender: Any) {
        
        d.removeObject(forKey: "kullaniciAdi")  // çıkışa basınca kullanıcı adını temizledi
        d.removeObject(forKey: "sifre")     // çıkışa basınca şifreyi temizledi
        exit(-1)    // çıkışa basınca uygulamayı kapattı
    }

}
