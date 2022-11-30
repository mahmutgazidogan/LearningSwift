//
//  ViewController.swift
//  3 - UserDefault Login Uygulaması
//
//  Created by Mahmut Gazi Doğan on 28.10.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textfieldKullaniciAdi: UITextField!
    @IBOutlet weak var textfieldSifre: UITextField!
    
    let d = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let ka = d.string(forKey: "kullaniciAdi") ?? "bos"
        let s = d.string(forKey: "sifre") ?? "bos"
        
        if ka != "bos" && s != "bos" {
            performSegue(withIdentifier: "girisToanasayfa", sender: nil)
        }
        
        
    }
    
    @IBAction func girisYap(_ sender: Any) {
        
        if let ka = textfieldKullaniciAdi.text , let s = textfieldSifre.text {
            
            if ka == "admin" && s == "123456" {
                
                d.setValue(ka, forKey: "kullaniciAdi")
                d.setValue(s, forKey: "sifre")
                performSegue(withIdentifier: "girisToanasayfa", sender: nil)
                
            } else {
                print("Hatali Giriş")
            }
            
        }
    }
        override func viewWillAppear(_ animated: Bool) {
            navigationController?.isNavigationBarHidden = true
        }
        override func viewWillDisappear(_ animated: Bool) {
            navigationController?.isNavigationBarHidden = false
        }
        
}
    

