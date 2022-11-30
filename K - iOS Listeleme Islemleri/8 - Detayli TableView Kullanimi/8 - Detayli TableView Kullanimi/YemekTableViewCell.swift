//
//  YemekTableViewCell.swift
//  8 - Detaylı TableView Kullanımı
//
//  Created by Mahmut Gazi Doğan on 26.10.2022.
//

import UIKit

protocol YemekTableViewCellProtocol {
    func siparisVer(indexPath:IndexPath)
}

class YemekTableViewCell: UITableViewCell {
    
    @IBOutlet weak var yemekResimImageView: UIImageView!
    @IBOutlet weak var labelYemekAdi: UILabel!
    @IBOutlet weak var labelYemekFiyat: UILabel!
    
    var hucreProtocol:YemekTableViewCellProtocol?
    var indexPath:IndexPath?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }

    @IBAction func siparisVerButon(_ sender: Any) {
    
        hucreProtocol?.siparisVer(indexPath: indexPath!)
        
    }
    
}
