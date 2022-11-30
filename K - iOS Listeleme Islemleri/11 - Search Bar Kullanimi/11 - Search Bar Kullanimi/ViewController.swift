//
//  ViewController.swift
//  11 - Search Bar Kullanımı
//
//  Created by Mahmut Gazi Doğan on 27.10.2022.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var searchBar: UISearchBar!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        searchBar.delegate = self
        
        searchBar.scopeButtonTitles = ["Birinci","İkinci"]
    }


}

extension ViewController:UISearchBarDelegate{
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        print("Arama Sonuç: \(searchText)")
    }
    
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        print("Cancel seçildi")
    }
    func searchBar(_ searchBar: UISearchBar, selectedScopeButtonIndexDidChange selectedScope: Int) {
        if selectedScope == 0 {
            print("Birinci seçildi")
        }
        if selectedScope == 1 {
            print("İkinci seçildi")
        }
    }
}
