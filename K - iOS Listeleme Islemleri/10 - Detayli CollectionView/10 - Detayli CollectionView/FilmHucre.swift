//
//  FilmHucre.swift
//  10 - Detaylı CollectionView
//
//  Created by Mahmut Gazi Doğan on 27.10.2022.
//

import UIKit

protocol FilmHucreProtocol {
    func sepeteEkle(indexPath:IndexPath)
}

class FilmHucre: UICollectionViewCell {
    
    @IBOutlet weak var filmImageView: UIImageView!
    
    @IBOutlet weak var filmAdiLabel: UILabel!
    
    @IBOutlet weak var filmFiyatLabel: UILabel!
    
    var hucreProtocol:FilmHucreProtocol?
    var indexPath:IndexPath?
    
    
    
    @IBAction func sepeteEkleButon(_ sender: Any) {
        hucreProtocol?.sepeteEkle(indexPath: indexPath!)
    }
    
    
}
