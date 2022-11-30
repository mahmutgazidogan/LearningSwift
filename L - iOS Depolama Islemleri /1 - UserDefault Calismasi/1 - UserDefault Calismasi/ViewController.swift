//
//  ViewController.swift
//  1 - UserDefault Çalışması
//
//  Created by Mahmut Gazi Doğan on 28.10.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Veri kaydetme
        
        let d = UserDefaults.standard   // d ile UserDefaults işlemlerini kullanabiliriz artık
        
        d.set("Ahmet", forKey: "ad")
        d.set(18, forKey: "yas")
        d.set(1.78, forKey: "boy")
        d.set(true, forKey: "medeniDurum")
        
        let arkadasListesi = ["ali","mehmet","ece"]
        d.set(arkadasListesi, forKey: "liste")
        
        let sehirlerListesi:[String:String] = ["16":"Bursa","34":"İstanbul"]
        d.set(sehirlerListesi, forKey: "dict")
        
        // Veri okuma
        
        let ad = d.string(forKey: "ad") ?? "isim yok"   // ?? işareti varsayılan değeri temsil eder
        let yas = d.integer(forKey: "yas")
        let boy = d.double(forKey: "boy")
        let medeniDurum = d.bool(forKey: "medeniDurum")
        
        print(ad)
        print(yas)
        print(boy)
        print(medeniDurum)
        
        let liste = d.array(forKey: "liste") as? [String] ?? [String]()
        print(liste[0])
        
        let dict = d.dictionary(forKey: "dict") as? [String:String] ?? [String:String]()
        print(dict["16"]!)
        
        // Veri silme
        
        // d.removeObject(forKey: "ad")
        // let adx = d.string(forKey: "ad") ?? "isim yok"
        // print(adx)
        
        // Veri güncelleme
        
        d.set("yeni Ahmet", forKey: "ad")
        let adx = d.string(forKey: "ad") ?? "isim yok"
        print(adx)
        
    }


}

