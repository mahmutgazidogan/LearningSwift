//
//  Tahmin Ekranı VC.swift
//  9 - Sayı Tahmin Et
//
//  Created by Mahmut Gazi Doğan on 20.10.2022.
//

import UIKit

class Tahmin_Ekran__VC: UIViewController {

    @IBOutlet weak var labelKalanHak: UILabel!
    @IBOutlet weak var labelYardim: UILabel!
    @IBOutlet weak var textfieldGirdi: UITextField!
    
    var rastgeleSayi:Int?
    var kalanHak = 5
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        rastgeleSayi = Int(arc4random_uniform(100))
        print("Rastgele sayı: \(rastgeleSayi!)")

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let gelenVeri = sender as? Bool {
            let gidilecekVC = segue.destination as! Sonuc__Ekran__VC
            gidilecekVC.sonuc = gelenVeri
        }
    }
    
    @IBAction func tahminEt(_ sender: Any) {
        
        labelYardim.isHidden = false
        kalanHak = kalanHak - 1
        
        if let veri = textfieldGirdi.text {
            
            if let tahmin = Int(veri){
                    
                    if tahmin == rastgeleSayi! {
                        // Doğru bildiniz
                        // Sayfa geçişi
                        
                        let sonuc = true
                        performSegue(withIdentifier: "tahminTosonuc", sender: sonuc)
                        return
                        
                    }
                    if tahmin > rastgeleSayi! {
                        // Azaltın
                        labelYardim.text = "Azalt"
                        labelKalanHak.text = "Kalan Hak: \(kalanHak)"
                    }
                    if tahmin < rastgeleSayi! {
                        // Arttırın
                        labelYardim.text = "Arttır"
                        labelKalanHak.text = "Kalan Hak: \(kalanHak)"
                    }
            
                    
                
                if(kalanHak == 0){
                    let sonuc = false
                    performSegue(withIdentifier: "tahminTosonuc", sender: sonuc)
                }
                
                textfieldGirdi.text = ""
                
            }
        }
        
        
        
    }
    
}
