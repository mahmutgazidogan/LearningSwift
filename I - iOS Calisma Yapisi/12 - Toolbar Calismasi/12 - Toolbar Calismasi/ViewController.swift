//
//  ViewController.swift
//  12 - Toolbar Çalışması
//
//  Created by Mahmut Gazi Doğan on 18.10.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var etiket: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func geriButon(_ sender: Any) {
        etiket.text = "Geri"
    }
    
    @IBAction func oynatButon(_ sender: Any) {
        etiket.text = "Oynat"
    }
    
    @IBAction func homeButon(_ sender: Any) {
        etiket.text = "Home"
    }
}

