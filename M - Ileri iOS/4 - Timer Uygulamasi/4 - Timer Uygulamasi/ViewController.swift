//
//  ViewController.swift
//  4 - Timer Uygulamasi
//
//  Created by Mahmut Gazi Doğan on 7.11.2022.
//

import UIKit

class ViewController: UIViewController {
    
    var sayici:Timer?
    var sayac1:Int = 1
    var sayac2:Int = 5

    @IBOutlet weak var ciktiLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ciktiLabel.text = ""
       
    }

    @IBAction func basla(_ sender: Any) {
        
        sayici = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(geriSay), userInfo: nil, repeats: true)
    }
    
    @objc func ileriSay(){
        ciktiLabel.text = String(sayac1)
        sayac1 += 1
        
        if sayac1 > 6 {
            sayici?.invalidate()    // sayici durdurulur
            ciktiLabel.text = "Süre bitti"
            sayac1 = 1
        }
        
    }
    
    @objc func geriSay(){
        ciktiLabel.text = String(sayac2)
        sayac2 -= 1
        
        if sayac2 < 0 {
            sayici?.invalidate()    // sayici durdurulur
            ciktiLabel.text = "Süre bitti"
            sayac2 = 5
        }
        
    }
    
}

