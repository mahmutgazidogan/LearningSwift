import UIKit

class Ogrenci{
    var ad:String?
    var no:Int?
    var sinif:String?
    
    init(ad:String,no:Int,sinif:String){
        self.ad = ad
        self.no = no
        self.sinif = sinif
    }
}

var o1 = Ogrenci(ad: "Ahmet", no: 100, sinif:"11F")
var o2 = Ogrenci(ad: "Zeynep", no: 90, sinif:"10C")
var o3 = Ogrenci(ad: "Ceyda", no: 130, sinif:"12A")
var o4 = Ogrenci(ad: "Mehmet", no: 150, sinif:"9B")
var o5 = Ogrenci(ad: "Yasin", no: 110, sinif:"11F")

var ogrenciListesi = [Ogrenci]()

ogrenciListesi.append(o1)
ogrenciListesi.append(o2)
ogrenciListesi.append(o3)
ogrenciListesi.append(o4)
ogrenciListesi.append(o5)

for ogrenci in ogrenciListesi {
    print("\t")
    print("Öğrenci adı      : \(ogrenci.ad!)")
    print("Öğrenci no       : \(ogrenci.no!)")
    print("Öğrencinin Sınıfı: \(ogrenci.sinif!)")
}
