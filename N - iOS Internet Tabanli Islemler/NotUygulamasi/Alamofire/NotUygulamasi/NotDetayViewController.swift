//
//  NotDetayViewController.swift
//  NotUygulamasi
//
//  Created by Kasım Adalan on 30.07.2019.
//  Copyright © 2019 info. All rights reserved.
//

import UIKit
import Alamofire

class NotDetayViewController: UIViewController {
    @IBOutlet weak var textfieldDersAdi: UITextField!
    
    @IBOutlet weak var textfieldNot1: UITextField!
    @IBOutlet weak var textfieldNot2: UITextField!
    
    var not:Notlar?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let n = not {
            textfieldDersAdi.text = n.ders_adi
            textfieldNot1.text = n.not1
            textfieldNot2.text = n.not2
        }
        
        
    }
    
    @IBAction func notSil(_ sender: Any) {
        
        if let n = not {
            if let nid = Int(n.not_id!) {
                notSil(not_id: nid)
            }
            
        }
        
    }
    
    @IBAction func notGuncelle(_ sender: Any) {
        
        if let n = not,let ad = textfieldDersAdi.text,let not1 = textfieldNot1.text,let not2 = textfieldNot2.text {
            
            if let nid = Int(n.not_id!),let n1 = Int(not1),let n2 = Int(not2) {
                notGuncelle(not_id:nid,ders_adi:ad,not1:n1,not2:n2)
            }
            
        }
        
    }
    
    func notGuncelle(not_id:Int,ders_adi:String,not1:Int,not2:Int){
        
        let parametreler:Parameters = ["not_id":not_id,"ders_adi":ders_adi,"not1":not1,"not2":not2]
        
        AF.request("http://kasimadalan.pe.hu/notlar/update_not.php",method: .post,parameters: parametreler).responseJSON{
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
    
    func notSil(not_id:Int){
        
        let parametreler:Parameters = ["not_id":not_id]
        
        AF.request("http://kasimadalan.pe.hu/notlar/delete_not.php",method: .post,parameters: parametreler).responseJSON{
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
