//
//  Kişiler.swift
//  4 - Kod ile Segue Geçişi
//
//  Created by Mahmut Gazi Doğan on 12.10.2022.
//

import Foundation

class Kisiler {
    var kisiId:Int?
    var kisiAd:String?
    
    init() {
        
    }
    
    init(kisiId:Int,kisiAd:String) {
        self.kisiAd = kisiAd
        self.kisiId = kisiId
    }
}
