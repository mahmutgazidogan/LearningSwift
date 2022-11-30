//
//  ViewController.swift
//  5 - ImageView
//
//  Created by Mahmut Gazi Doğan on 19.10.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func resim1Tikla(_ sender: Any) {
        print("2x resmi seçildi")
        imageView.image = UIImage(named: "resim")
    }
    
    @IBAction func resim2Tikla(_ sender: Any) {
        print("Steve Jobs resmi seçildi")
        imageView.image = UIImage(named: "stevejobs")
    }
    
}

