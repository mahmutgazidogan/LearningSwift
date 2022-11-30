//
//  Kisiler.swift
//  KisilerUygulamasi
//
//  Created by Mahmut Gazi Doğan on 21.11.2022.
//  Copyright © 2022 info. All rights reserved.
//

import Foundation

class Kisiler:Codable{
    
    var kisi_id:String?
    var kisi_ad:String?
    var kisi_tel:String?
    
    init(kisi_id: String,kisi_ad: String,kisi_tel: String) {
        self.kisi_id = kisi_id
        self.kisi_ad = kisi_ad
        self.kisi_tel = kisi_tel
    }
}
