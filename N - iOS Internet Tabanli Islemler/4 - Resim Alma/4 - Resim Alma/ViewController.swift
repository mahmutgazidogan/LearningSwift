//
//  ViewController.swift
//  4 - Resim Alma
//
//  Created by Mahmut Gazi Doğan on 14.11.2022.
//

import UIKit

// URL ile resim gösterme

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func buton1Tiklandi(_ sender: Any) {
        
        if let url = URL(string: "http://kasimadalan.pe.hu/filmler/resimler/django.png") {
            
            DispatchQueue.global().async {
                let data = try? Data(contentsOf: url)
                DispatchQueue.main.async {
                    self.imageView.image = UIImage(data: data!)
                }
            }
            
        }
        
    }
    
    @IBAction func buton2Tiklandi(_ sender: Any) {
        
        if let url = URL(string: "http://kasimadalan.pe.hu/filmler/resimler/interstellar.png") {
            
            DispatchQueue.global().async {
                let data = try? Data(contentsOf: url)
                DispatchQueue.main.async {
                    self.imageView.image = UIImage(data: data!)
                }
            }
            
        }
        
    }
    
}

