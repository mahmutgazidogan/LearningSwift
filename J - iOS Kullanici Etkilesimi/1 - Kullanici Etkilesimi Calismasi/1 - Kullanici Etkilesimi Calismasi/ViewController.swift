//
//  ViewController.swift
//  1 - Kullanıcı Etkileşimi Çalışması
//
//  Created by Mahmut Gazi Doğan on 21.10.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelSonuc: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    @IBAction func basitAlertGoster(_ sender: Any) {
        
        let alertController = UIAlertController(title: "Başlık", message: "Mesaj", preferredStyle: .alert)
        
        let iptalAction = UIAlertAction(title: "İptal", style: .cancel){
            action in
            print("İptal Tıklandı")
        }
        alertController.addAction(iptalAction)  // İptal butonu işlevsel hale geldi
        
        
        let tamamAction = UIAlertAction(title: "Tamam", style: .destructive){
            action in
            print("Tamam Tıklandı")
        }
        alertController.addAction(tamamAction)  // Tamam butonu işlevsel hale geldi
        
        self.present(alertController,animated: true)
        
    }
    
    @IBAction func ozelAlertGoster(_ sender: Any) {
        
        let alertController = UIAlertController(title: "Başlık", message: "Mesaj", preferredStyle: .alert)
        alertController.addTextField { textfield in
            textfield.placeholder = "E-mail"
            textfield.keyboardType = .emailAddress
        }
        alertController.addTextField { textfield in
            textfield.placeholder = "Şifre"
            textfield.isSecureTextEntry = true
        }
        let kaydetAction = UIAlertAction(title: "Kaydet", style: .destructive){
            action in
            print("Kaydet Tıklandı")
            
        let alinanEmail = (alertController.textFields![0] as UITextField).text!
        let alinanSifre = (alertController.textFields![1] as UITextField).text!
        self.labelSonuc.text = "E-mail: \(alinanEmail) - Şifre: \(alinanSifre)"
            
        }
        alertController.addAction(kaydetAction)  // Kaydet butonu işlevsel hale geldi
        self.present(alertController, animated: true)
        
        
    }
    
    @IBAction func actionSheetGoster(_ sender: Any) {
        
        let alertController = UIAlertController(title: "Başlık", message: "Mesaj", preferredStyle: .actionSheet)
        
        let iptalAction = UIAlertAction(title: "İptal", style: .cancel){
            action in
            print("Action Sheet: İptal Tıklandı")
        }
        alertController.addAction(iptalAction)  // İptal butonu işlevsel hale geldi
        
        
        let tamamAction = UIAlertAction(title: "Tamam", style: .destructive){
            action in
            print("Action Sheet: Tamam Tıklandı")
        }
        alertController.addAction(tamamAction)  // Tamam butonu işlevsel hale geldi
        
        self.present(alertController,animated: true)
        
    }
    
}

