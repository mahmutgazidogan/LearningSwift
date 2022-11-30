//
//  ViewController.swift
//  3 - Firebase Kullanimi
//
//  Created by Mahmut Gazi Doğan on 10.11.2022.
//

import UIKit
import Firebase

class ViewController: UIViewController {
    
    var ref:DatabaseReference?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        ref = Database.database().reference()
        
        // ref?.child("deneme").setValue("Merhaba")  // Veri tabanına Merhaba kaydettik
        
        // kisiEkle()
        //kisiSil()
        //kisiGuncelle()
        //tumKisiler()
        //kisiEqualSorgu()
        //kisiLimitSorgu()
        kisiDegerAraligiSorgu()
            
    }
    
    func kisiEkle(){
        
        let yeniKisi = Kisiler(kisi_ad: "Talat", kisi_yas: 14)
        
        let dict:[String:Any] = ["kisi_ad":yeniKisi.kisi_ad!,"kisi_yas":yeniKisi.kisi_yas!]
        
        let newRef = ref?.child("kisiler").childByAutoId()
        
        newRef?.setValue(dict)
        
    }
    
    func kisiSil(){
        
        ref?.child("kisiler").child("-NGq4VdGjZrYbEb0IQ7z").removeValue()
        
    }
    
    func kisiGuncelle(){
        
        //let dict:[String:Any] = ["kisi_ad":"Yeni Ahmet","kisi_yas":99]    // updateChildValues(dict) yaparak alabiliriz
        ref?.child("kisiler").child("-NGq4HNnrgPI_EQfdeFC").updateChildValues(["kisi_ad":"Yeni Ahmet ","kisi_yas":99])
        
    }
    
    // VERİLERİ ALMA
    
    func tumKisiler(){
        
        ref?.child("kisiler").observe(.value, with: { snapshot in
            
            if let gelenVeriButunu = snapshot.value as? [String:AnyObject]{
                
                for gelenSatirVerisi in gelenVeriButunu {
                    
                    if let sozluk = gelenSatirVerisi.value as? NSDictionary {
                        
                        let key = gelenSatirVerisi.key
                        let kisi_ad = sozluk["kisi_ad"] as? String ?? ""
                        let kisi_yas = sozluk["kisi_yas"] as? Int ?? 0
                        
                        print("Key: \(key)")
                        print("Adı: \(kisi_ad)")
                        print("Yaşı: \(kisi_yas)")
                        print("*****************")
                        
                    }
                    
                }
                
            }
            
        })
        
    }
    
    // FİLTRELEYEREK (EŞİTLİKLE) VERİ ALMA
    
    func kisiEqualSorgu(){
        
        let sorgu = ref?.child("kisiler").queryOrdered(byChild: "kisi_ad").queryEqual(toValue: "Talat")
        
        sorgu!.observe(.value, with: { snapshot in
            
            if let gelenVeriButunu = snapshot.value as? [String:AnyObject]{
                
                for gelenSatirVerisi in gelenVeriButunu {
                    
                    if let sozluk = gelenSatirVerisi.value as? NSDictionary {
                        
                        let key = gelenSatirVerisi.key
                        let kisi_ad = sozluk["kisi_ad"] as? String ?? ""
                        let kisi_yas = sozluk["kisi_yas"] as? Int ?? 0
                        
                        print("Key: \(key)")
                        print("Adı: \(kisi_ad)")
                        print("Yaşı: \(kisi_yas)")
                        print("*****************")
                        
                    }
                    
                }
                
            }
            
        })
        
    }
    
    // SINIRLI VERİ ALMA
    
    func kisiLimitSorgu(){
        
        let sorgu = ref?.child("kisiler").queryLimited(toFirst: 1) // sondan veya baştan kaç tane istersek o kadar veri getirir
        
        sorgu!.observe(.value, with: { snapshot in
            
            if let gelenVeriButunu = snapshot.value as? [String:AnyObject]{
                
                for gelenSatirVerisi in gelenVeriButunu {
                    
                    if let sozluk = gelenSatirVerisi.value as? NSDictionary {
                        
                        let key = gelenSatirVerisi.key
                        let kisi_ad = sozluk["kisi_ad"] as? String ?? ""
                        let kisi_yas = sozluk["kisi_yas"] as? Int ?? 0
                        
                        print("Key: \(key)")
                        print("Adı: \(kisi_ad)")
                        print("Yaşı: \(kisi_yas)")
                        print("*****************")
                        
                    }
                    
                }
                
            }
            
        })
        
    }
    
    // DEĞER ARALIĞIYLA VERİ ALMA
    
    func kisiDegerAraligiSorgu(){
        
        let sorgu = ref?.child("kisiler").queryOrdered(byChild: "kisi_yas").queryStarting(atValue: 18).queryEnding(atValue: 100) // 18-100 yaşları arasındaki kişileri aldık
        
        sorgu!.observe(.value, with: { snapshot in
            
            if let gelenVeriButunu = snapshot.value as? [String:AnyObject]{
                
                for gelenSatirVerisi in gelenVeriButunu {
                    
                    if let sozluk = gelenSatirVerisi.value as? NSDictionary {
                        
                        let key = gelenSatirVerisi.key
                        let kisi_ad = sozluk["kisi_ad"] as? String ?? ""
                        let kisi_yas = sozluk["kisi_yas"] as? Int ?? 0
                        
                        print("Key: \(key)")
                        print("Adı: \(kisi_ad)")
                        print("Yaşı: \(kisi_yas)")
                        print("*****************")
                        
                    }
                    
                }
                
            }
            
        })
        
    }



}

