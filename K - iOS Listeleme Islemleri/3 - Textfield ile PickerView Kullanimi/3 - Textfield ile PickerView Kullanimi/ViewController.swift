//
//  ViewController.swift
//  3 - Textfield ile PickerView Kullanımı
//
//  Created by Mahmut Gazi Doğan on 25.10.2022.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {

    @IBOutlet weak var textfieldUlke: UITextField!
    
    var pickerView:UIPickerView?
    var ulkeler:[String] = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ulkeler = ["Türkiye","Almanya","Japonya","Rusya","İtalya"]
        pickerView = UIPickerView()
        pickerView?.dataSource = self
        pickerView?.delegate = self
        
        textfieldUlke.inputView = pickerView
        
        let toolbar = UIToolbar()
        toolbar.tintColor = UIColor.red
        toolbar.sizeToFit()
        
        let tamamButon = UIBarButtonItem(title: "Tamam", style: .plain, target: self, action: #selector(ViewController.tamamTikla))
        
        let boslukButon = UIBarButtonItem(systemItem: .flexibleSpace)

        let iptalButon = UIBarButtonItem(title: "İptal", style: .plain, target: self, action: #selector(self.iptalTikla))
        
        toolbar.setItems([iptalButon,boslukButon,tamamButon], animated: true)
        
        textfieldUlke.inputAccessoryView = toolbar
    }
        
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return ulkeler.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return ulkeler[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        textfieldUlke.text = ulkeler[row]
    }
    
    @objc func tamamTikla(){
        
        view.endEditing(true)
    }
    
    @objc func iptalTikla(){
        textfieldUlke.text = ""
        textfieldUlke.placeholder = "Ülke Seç"
        view.endEditing(true)
    }
    
}

