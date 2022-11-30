//
//  ViewController.swift
//  2 - Alamofire Kullanimi
//
//  Created by Mahmut Gazi Doğan on 9.11.2022.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //kisiEkle()
        //kisiSil()
        //kisiGuncelle()
        //tumKisiler()
        aramaYap()
        
    }
    
    func kisiEkle(){
        
        let parametreler:Parameters = ["kisi_ad":"TESTALAMOFIREXXX","kisi_tel":"999999XXX"]
        
        AF.request("http://kasimadalan.pe.hu/kisiler/insert_kisiler.php" , method: .post , parameters: parametreler).responseJSON { response in
            
            if let data = response.data {
                
                do {
                    
                    if let json = try JSONSerialization.jsonObject(with: data,options: []) as? [String:Any] {
                        print(json)
                    }
                    
                } catch {
                    print(error.localizedDescription)
                }
                
            }
            
                
        }
        
    }
    
    func kisiSil(){
        
        let parametreler:Parameters = ["kisi_id":123]
        
        AF.request("http://kasimadalan.pe.hu/kisiler/delete_kisiler.php" , method: .post , parameters: parametreler).responseJSON { response in
            
            if let data = response.data {
                
                do {
                    
                    if let json = try JSONSerialization.jsonObject(with: data,options: []) as? [String:Any] {
                        print(json)
                    }
                    
                } catch {
                    print(error.localizedDescription)
                }
                
            }
            
                
        }
        
    }
    
    func kisiGuncelle(){
        
        let parametreler:Parameters = ["kisi_id":12586,"kisi_ad":"XXXXXX","kisi_tel":"X8X8X8"]
        
        AF.request("http://kasimadalan.pe.hu/kisiler/update_kisiler.php" , method: .post , parameters: parametreler).responseJSON { response in
            
            if let data = response.data {
                
                do {
                    
                    if let json = try JSONSerialization.jsonObject(with: data,options: []) as? [String:Any] {
                        print(json)
                    }
                    
                } catch {
                    print(error.localizedDescription)
                }
                
            }
            
                
        }
        
    }
    
    func tumKisiler(){
        
        AF.request("http://kasimadalan.pe.hu/kisiler/tum_kisiler.php" , method: .get).responseJSON { response in
            
            if let data = response.data {
                
                do {
                    
                    let cevap = try JSONDecoder().decode(KisiCevap.self, from: data)
                    
                    if let kisiListesi = cevap.kisiler {
                        
                        for kisi in kisiListesi {
                            
                            print("Kisi id: \(kisi.kisi_id!)")
                            print("Kisi ad: \(kisi.kisi_ad!)")
                            print("Kisi tel: \(kisi.kisi_tel!)")
                            
                        }
                        
                    
                    }
                    
            } catch {
                    print(error.localizedDescription)
                }
                
            }
            
                
        }
        
        
    }
    
    func aramaYap(){
        
        let parametreler:Parameters = ["kisi_ad":"A"]
        
        AF.request("http://kasimadalan.pe.hu/kisiler/tum_kisiler_arama.php" , method: .post , parameters: parametreler).responseJSON { response in
            
            if let data = response.data {
                
                do {
                    
                    let cevap = try JSONDecoder().decode(KisiCevap.self, from: data)
                    
                    if let kisiListesi = cevap.kisiler {
                        
                        for kisi in kisiListesi {
                            
                            print("Kisi id: \(kisi.kisi_id!)")
                            print("Kisi ad: \(kisi.kisi_ad!)")
                            print("Kisi tel: \(kisi.kisi_tel!)")
                            
                        }
                    }
                    
                } catch {
                    print(error.localizedDescription)
                }
                
            }
            
                
        }
        
    }


}

