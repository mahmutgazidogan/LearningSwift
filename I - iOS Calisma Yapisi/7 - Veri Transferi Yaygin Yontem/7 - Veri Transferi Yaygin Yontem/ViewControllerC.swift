//
//  ViewControllerC.swift
//  7 - Veri Transferi Yaygın Yöntem
//
//  Created by Mahmut Gazi Doğan on 17.10.2022.
//

import UIKit

class ViewControllerC: UIViewController {

    @IBOutlet weak var etiketC: UILabel!
    
    var mesajC:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        etiketC.text = mesajC
        
    }

}
