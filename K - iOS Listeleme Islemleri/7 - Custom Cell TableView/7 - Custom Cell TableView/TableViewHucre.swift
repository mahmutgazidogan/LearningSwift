//
//  TableViewHucre.swift
//  7 - Custom Cell TableView
//
//  Created by Mahmut Gazi Doğan on 25.10.2022.
//

import UIKit

protocol TableViewHucreProtocol {
    func hucreUzerindekiButonTiklandi(indexPath:IndexPath)
}

class TableViewHucre: UITableViewCell {

    @IBOutlet weak var kisiAdLabel: UILabel!
    
    var hucreProtocol:TableViewHucreProtocol?
    var indexPath:IndexPath?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

       
    }
    @IBAction func butonTikla(_ sender: Any) {
        hucreProtocol?.hucreUzerindekiButonTiklandi(indexPath: indexPath!)
    }
    
}
