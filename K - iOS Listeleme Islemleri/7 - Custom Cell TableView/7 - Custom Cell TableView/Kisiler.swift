//
//  Kisiler.swift
//  7 - Custom Cell TableView
//
//  Created by Mahmut Gazi Doğan on 25.10.2022.
//

import Foundation

class Kisiler {
    var kisiId:Int?
    var kisiAd:String?
    var kisiTel:String?
    
    init() {
        
    }
    
    init(kisiId:Int,kisiAd:String,kisiTel:String){
        self.kisiId = kisiId
        self.kisiAd = kisiAd
        self.kisiTel = kisiTel
    }
}
