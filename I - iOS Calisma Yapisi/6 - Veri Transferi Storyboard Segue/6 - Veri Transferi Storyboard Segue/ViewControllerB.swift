//
//  ViewControllerB.swift
//  6 - Veri Transferi Storyboard Segue
//
//  Created by Mahmut Gazi Doğan on 14.10.2022.
//

import UIKit

class ViewControllerB: UIViewController {

    @IBOutlet weak var etiketB: UILabel!
    
    var mesajB:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        etiketB.text = mesajB!
    }
    

    

}
