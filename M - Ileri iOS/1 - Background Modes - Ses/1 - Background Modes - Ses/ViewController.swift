//
//  ViewController.swift
//  1 - Background Modes - Ses
//
//  Created by Mahmut Gazi Doğan on 4.11.2022.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var sesOynatici:AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        do{
            
            let dosyaYolu = Bundle.main.path(forResource: "videoplayback", ofType: ".mp4")
            sesOynatici = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: dosyaYolu!))
            sesOynatici.prepareToPlay()
            
        } catch{
            print(error.localizedDescription)
        }
        
    }

    @IBAction func basla(_ sender: Any) {
        sesOynatici.play()
        print("Müzik oynatılıyor")
    }
    
    @IBAction func dur(_ sender: Any) {
        sesOynatici.stop()
        print("Müzik duraklatıldı")
    }
    
}

