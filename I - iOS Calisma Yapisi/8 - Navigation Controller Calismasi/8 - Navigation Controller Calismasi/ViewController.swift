//
//  ViewController.swift
//  8 - Navigation Controller Çalışması
//
//  Created by Mahmut Gazi Doğan on 17.10.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // self.navigationItem.title = "Başlık Kod ile"
        // self.navigationItem.prompt = "Açıklama Kod ile"
        // self.navigationItem.largeTitleDisplayMode = .automatic
        
        // let resim = UIImage(named: "navBaslik")
        // self.navigationItem.titleView = UIImageView(image: resim)
    }

    @IBAction func playTikla(_ sender: Any) {
        print("Play tıklandı")
    }
    @IBAction func kalpTikla(_ sender: Any) {
        print("Kalp tıklandı")
    }
    @IBAction func segmentTiklandi(_ sender: UISegmentedControl) {
        
        switch sender.selectedSegmentIndex {
        case 0:
            print("First tıklandı")
        case 1:
            print("Second tıklandı")
        default:
            break
        }
    }
    
}

