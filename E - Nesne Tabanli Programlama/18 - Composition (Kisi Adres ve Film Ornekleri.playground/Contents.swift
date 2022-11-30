import UIKit

// Kişi ve adres örneği

class Kisiler {
    var ad:String?
    var yas:Int?
    var adres:Adres?
    
    init (ad:String,yas:Int,adres:Adres){
        self.ad = ad
        self.yas = yas
        self.adres = adres
    }
    
}

class Adres {
    var il:String?
    var ilce:String?
    var mahalle:String?
    var site:String?
    var blok:Character?
    var evNo:Int?
    
    init (il:String,ilce:String,mahalle:String,site:String,blok:Character,evNo:Int){
        self.il = il
        self.ilce = ilce
        self.mahalle = mahalle
        self.site = site
        self.blok = blok
        self.evNo = evNo
    }
}
let adres = Adres(il: "Adıyaman", ilce: "Merkez",mahalle: "Altınşehir mh.",site: "Manas Evleri Uygur Sitesi",blok: "H",evNo: 28)
let kisi = Kisiler(ad: "Mahmut Doğan", yas: 27, adres: adres)

print("Kişinin Adı: \(kisi.ad!)")
print("Kişinin Yaşı: \(kisi.yas!)")
print("İl: \(kisi.adres!.il!)")
print("İlçe: \(kisi.adres!.ilce!)")
print("Mahalle: \(kisi.adres!.mahalle!)")
print("Site: \(kisi.adres!.site!)")
print("Blok: \(kisi.adres!.blok!) Blok")
print("Daire No: \(kisi.adres!.evNo!)")
print("***********************************************")


// Kategori - Film - Yönetmen Örneği

class Kategoriler {
    var kategori_id:Int?
    var kategori_ad:String?
    
    init (kategori_id:Int,kategori_ad:String) {
        self.kategori_id = kategori_id
        self.kategori_ad = kategori_ad
    }
}

class Yonetmenler {
    var yonetmen_id:Int?
    var yonetmen_ad:String?
    
    init (yonetmen_id:Int,yonetmen_ad:String) {
        self.yonetmen_id = yonetmen_id
        self.yonetmen_ad = yonetmen_ad
    }
}

class Filmler {
    var film_id:Int?
    var film_ad:String?
    var film_yil:Int?
    var kategori:Kategoriler?
    var yonetmen:Yonetmenler?
    
    init (film_id:Int,film_ad:String,film_yil:Int,kategori:Kategoriler,yonetmen:Yonetmenler) {
        self.film_id = film_id
        self.film_ad = film_ad
        self.film_yil = film_yil
        self.kategori = kategori
        self.yonetmen = yonetmen
    }
}

var k1 = Kategoriler(kategori_id: 1, kategori_ad: "Dram")
var k2 = Kategoriler(kategori_id: 2, kategori_ad: "Komedi")
var k3 = Kategoriler(kategori_id: 3, kategori_ad: "Bilim-Kurgu")

var y1 = Yonetmenler(yonetmen_id: 1, yonetmen_ad: "Nuri Bilge Ceylan")
var y2 = Yonetmenler(yonetmen_id: 2, yonetmen_ad: "Quentin Tarantino")
var y3 = Yonetmenler(yonetmen_id: 3, yonetmen_ad: "Cristopher Nolan")

var f1 = Filmler(film_id: 1, film_ad: "Ahlat Ağacı", film_yil: 2014, kategori: k1, yonetmen: y1)
var f2 = Filmler(film_id: 2, film_ad: "Inception", film_yil: 2013, kategori: k3, yonetmen: y3)
var f3 = Filmler(film_id: 3, film_ad: "Pulp Fiction", film_yil: 1999, kategori: k2, yonetmen: y2)

print("Film ID: \(f1.film_id!)")
print("Film Adı: \(f1.film_ad!)")
print("Film Yılı: \(f1.film_yil!)")
print("Kategorisi: \(f1.kategori!.kategori_ad!)")
print("Yönetmeni: \(f1.yonetmen!.yonetmen_ad!)")
