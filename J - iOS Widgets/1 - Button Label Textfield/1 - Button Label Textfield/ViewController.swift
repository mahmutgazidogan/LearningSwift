//
//  ViewController.swift
//  1 - Button Label Textfield
//
//  Created by Mahmut Gazi Doğan on 19.10.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var etiket: UILabel!
    
    @IBOutlet weak var textfield: UITextField!
    
    @IBOutlet weak var textview: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func tikla(_ sender: Any) {
        if let alinanVeri = textfield.text {
            if let sayi = Int(alinanVeri) {      // String-Int dönüşümü
                let islem = sayi*2
                etiket.text = String(islem)      // Int-String dönüşüm
            }
        }
        
        if let veri = textview.text {
            print(veri)
        }
        
    }
    
}

