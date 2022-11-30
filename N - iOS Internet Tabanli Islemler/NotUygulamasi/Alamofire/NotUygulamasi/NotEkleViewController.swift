//
//  NotEkleViewController.swift
//  NotUygulamasi
//
//  Created by Kasım Adalan on 30.07.2019.
//  Copyright © 2019 info. All rights reserved.
//

import UIKit
import Alamofire

class NotEkleViewController: UIViewController {
    @IBOutlet weak var textfieldDersAdi: UITextField!
    
    @IBOutlet weak var textfieldNot1: UITextField!
    @IBOutlet weak var textfieldNot2: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    @IBAction func notEkle(_ sender: Any) {
        
        if let ad = textfieldDersAdi.text,let not1 = textfieldNot1.text,let not2 = textfieldNot2.text {
            
            if let n1 = Int(not1),let n2 = Int(not2) {
                notEkle(ders_adi:ad,not1:n1,not2:n2)
            }
            
        }
        
    }
    
    func notEkle(ders_adi:String,not1:Int,not2:Int){
        
        let parametreler:Parameters = ["ders_adi":ders_adi,"not1":not1,"not2":not2]
        
        AF.request("http://kasimadalan.pe.hu/notlar/insert_not.php",method: .post,parameters: parametreler).responseJSON{
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
