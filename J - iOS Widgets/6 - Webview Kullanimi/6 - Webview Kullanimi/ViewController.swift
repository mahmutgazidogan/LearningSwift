//
//  ViewController.swift
//  6 - Webview Kullanımı
//
//  Created by Mahmut Gazi Doğan on 19.10.2022.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    @IBOutlet weak var webview: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }

    @IBAction func girisYap(_ sender: Any) {
        let url = URL(string: "https://www.youtube.com/watch?v=FVY4be1yFFY&ab_channel=MangaVEVO")!
        webview.load(URLRequest(url: url))
        
    }
    
}

