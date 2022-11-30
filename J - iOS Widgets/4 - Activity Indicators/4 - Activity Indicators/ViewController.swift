//
//  ViewController.swift
//  4 - Activity Indicators
//
//  Created by Mahmut Gazi Doğan on 19.10.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var indicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        indicator.isHidden = true
    }

    @IBAction func basla(_ sender: Any) {
        print("İndikatör başlatıldı")
        indicator.startAnimating()
        indicator.isHidden = false
    }
    
    @IBAction func dur(_ sender: Any) {
        print("İndikatör durduruldu")
        indicator.stopAnimating()
        indicator.isHidden = true
    }
}


