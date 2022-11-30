//
//  ViewController.swift
//  FilmlerUygulamasi
//
//  Created by Kasım Adalan on 30.07.2019.
//  Copyright © 2019 info. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    @IBOutlet weak var kategoriTableView: UITableView!
    
    var kategorilerListe = [Kategoriler]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        kategoriTableView.delegate = self
        kategoriTableView.dataSource = self
        
        tumKategorilerAl()
        
    }
    
    func tumKategorilerAl(){
        
        AF.request("http://kasimadalan.pe.hu/filmler/tum_kategoriler.php",method: .get).responseJSON{   // kategorileri alıyoruz
            response in
            
            if let data = response.data {       // json parse yapıyoruz
                
                do{
                    
                    let cevap = try JSONDecoder().decode(KategoriCevap.self, from: data)
                    
                    if let gelenKategoriListesi = cevap.kategoriler {
                        
                        self.kategorilerListe = gelenKategoriListesi        // tableview'i besleyen listeye cevabı gönderdik
                        
                    }
                    
                    DispatchQueue.main.async {
                        
                        self.kategoriTableView.reloadData()     // veri alındı, arayüz güncelleniyor
                        
                    }
                    
                } catch{
                    print(error.localizedDescription)
                }
                
            }
            
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {     // gidilecek VC'ye kategorilerListesini indeksiyle gönderiyoruz
        
        let indeks = sender as? Int
        
        let gidilecekVC = segue.destination as! FilmViewController
        gidilecekVC.kategori = kategorilerListe[indeks!]
        
    }


}

extension ViewController:UITableViewDelegate,UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return kategorilerListe.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let kategori = kategorilerListe[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "kategoriHucre", for: indexPath) as! KategoriHucreTableViewCell
        
        cell.labelKategoriAd.text = kategori.kategori_ad
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "toFilm", sender: indexPath.row)
    }
}
