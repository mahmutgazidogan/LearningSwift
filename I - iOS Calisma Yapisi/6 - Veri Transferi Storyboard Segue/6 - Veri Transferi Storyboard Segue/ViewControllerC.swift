//
//  ViewControllerC.swift
//  6 - Veri Transferi Storyboard Segue
//
//  Created by Mahmut Gazi Doğan on 14.10.2022.
//

import UIKit

class ViewControllerC: UIViewController {

    @IBOutlet weak var etiketC: UILabel!
    
    var mesajC:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        etiketC.text = mesajC!
        
    }
    

   
}
