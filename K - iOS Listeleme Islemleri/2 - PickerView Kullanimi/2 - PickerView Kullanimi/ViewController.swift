//
//  ViewController.swift
//  2 - PickerView Kullanımı
//
//  Created by Mahmut Gazi Doğan on 24.10.2022.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {

    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var labelSonuc: UILabel!
    
    var ulkeler:[String] = [String]()

    var secilenUlke:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ulkeler = ["Türkiye","Almanya","Japonya","Rusya","İtalya"]
        
        pickerView.delegate = self
        pickerView.dataSource = self
        
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1    // Sütun sayısı verdik
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return ulkeler.count    // Dizideki ülke sayısı kadar yer açar
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return ulkeler[row]     // üst satırdaki row ile dizideki elemanları aldık
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        labelSonuc.text = ulkeler[row]
        
        secilenUlke = ulkeler[row]
    }

    @IBAction func goster(_ sender: Any) {
        print(secilenUlke!)
    }
    
}

