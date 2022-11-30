//
//  ViewControllerB.swift
//  7 - Veri Transferi Yaygın Yöntem
//
//  Created by Mahmut Gazi Doğan on 17.10.2022.
//

import UIKit

class ViewControllerB: UIViewController {

    @IBOutlet weak var etiketB: UILabel!
    
    var mesajB:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        etiketB.text = mesajB
    }
    


}
