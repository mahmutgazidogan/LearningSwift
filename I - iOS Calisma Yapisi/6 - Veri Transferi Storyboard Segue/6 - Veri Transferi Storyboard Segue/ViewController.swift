//
//  ViewController.swift
//  6 - Veri Transferi Storyboard Segue
//
//  Created by Mahmut Gazi Doğan on 14.10.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var girdiAlani: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let gidecekMesaj = girdiAlani.text!
        
        if segue.identifier == "aTob" {
            print("a'dan b'ye geçiş")
            let gidilecekVC = segue.destination as! ViewControllerB
            gidilecekVC.mesajB = gidecekMesaj
        }
        
        if segue.identifier == "aToc" {
            print("a'dan c'ye geçiş")
            let gidilecekVC = segue.destination as! ViewControllerC
            gidilecekVC.mesajC = gidecekMesaj
        }
    }

}

