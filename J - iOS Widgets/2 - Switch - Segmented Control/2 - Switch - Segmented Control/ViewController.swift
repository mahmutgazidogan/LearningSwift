//
//  ViewController.swift
//  2 - Switch - Segmented Control
//
//  Created by Mahmut Gazi Doğan on 19.10.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var uiswitch: UISwitch!
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func switchKonumDegistir(_ sender: UISwitch) {
        
        if sender.isOn {
            print("Switch açık")
        } else {
            print("Switch kapalı")
        }
        
    }
    
    @IBAction func segmentedDegisimKontrol(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            print("Segmented açık seçildi")
        }
        if sender.selectedSegmentIndex == 1 {
            print("Segmented kapat seçildi")
        }
    }
    
    
    @IBAction func tikla(_ sender: Any) {
        print("Switch Durum: \(uiswitch.isOn)")
    }
    
}

