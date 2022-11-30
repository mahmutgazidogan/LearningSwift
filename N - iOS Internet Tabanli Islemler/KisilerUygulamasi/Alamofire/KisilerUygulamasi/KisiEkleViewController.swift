//
//  KisiEkleViewController.swift
//  KisilerUygulamasi
//
//  Created by Kasım Adalan on 29.07.2019.
//  Copyright © 2019 info. All rights reserved.
//

import UIKit
import Alamofire

class KisiEkleViewController: UIViewController {

    @IBOutlet weak var kisiAdTextfield: UITextField!
    @IBOutlet weak var kisiTelTextfield: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func ekle(_ sender: Any) {
        
        if let ad = kisiAdTextfield.text,let tel = kisiTelTextfield.text {
            kisiEkle(kisi_ad:ad,kisi_tel:tel)
        }
        
    }
    
    func kisiEkle(kisi_ad:String,kisi_tel:String){
        
        let parametreler:Parameters = ["kisi_ad":kisi_ad,"kisi_tel":kisi_tel]
        
        AF.request("http://kasimadalan.pe.hu/kisiler/insert_kisiler.php",method: .post,parameters: parametreler).responseJSON{
            response in
            
            if let data = response.data {
                
                do{
                    
                    if let json = try JSONSerialization.jsonObject(with: data,options: []) as? [String:Any] {
                        print(json)
                    }
                    
                } catch{
                    print(error.localizedDescription)
                }
                
            }
            
        }
        
    }
    

}
