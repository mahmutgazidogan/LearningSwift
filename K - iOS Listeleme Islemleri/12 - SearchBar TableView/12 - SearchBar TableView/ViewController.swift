//
//  ViewController.swift
//  12 - SearchBar TableView
//
//  Created by Mahmut Gazi Doğan on 27.10.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var tableView: UITableView!
    
    var ulkeler:[String] = [String]()
    var aramaSonucuUlkeler:[String] = [String]()
    
    var aramaYapiliyorMu = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ulkeler = ["Türkiye","Almanya","Japonya","Rusya","İtalya","Güney Kore","Fransa","Mısır","İngiltere"]
        
        searchBar.delegate = self
        
        tableView.delegate = self
        tableView.dataSource = self
        
    }


}

extension ViewController:UITableViewDataSource,UITableViewDelegate {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if aramaYapiliyorMu {
            return aramaSonucuUlkeler.count
        } else {
            return ulkeler.count
        }
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ulkelerHucre", for: indexPath)
        
        if aramaYapiliyorMu {
            cell.textLabel?.text = aramaSonucuUlkeler[indexPath.row]
        } else {
            cell.textLabel?.text = ulkeler[indexPath.row]
        }
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if aramaYapiliyorMu {
            print("Seçilen Ülke: \(aramaSonucuUlkeler[indexPath.row])")
        } else {
            print("Seçilen Ülke: \(ulkeler[indexPath.row])")
        }
        
    }
    
}

extension ViewController:UISearchBarDelegate {
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        
        print("Arama Sonucu: \(searchText)")
        
        if searchText == "" {       // Arama yapılmıyor
            aramaYapiliyorMu = false
        } else {                    // Arama yapılıyor
            aramaYapiliyorMu = true
            aramaSonucuUlkeler = ulkeler.filter({$0.lowercased().contains(searchText.lowercased())})
        }
        
        tableView.reloadData()
        
    }
    
}
