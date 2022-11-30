import UIKit


class matematik {
    func topla(sayi1:Int,sayi2:Int){
        let toplam = sayi1 + sayi2
        print("Toplama = \(toplam)")
    }
    func cikar(sayi1:Double,sayi2:Double) -> Double {
        return sayi1 - sayi2
    }
    func carp(sayi1:Int,sayi2:Int,isim:String){
        let carp = sayi1 * sayi2
        print("Çarpımı yapan kişi: \(isim) ******  Çarpım = \(carp)")
    }
    func bol(sayi1:Double,sayi2:Double,ad:String) -> String {
        return "Bölmeyi yapan kişi: \(ad) ****** Bölüm = \(sayi1 / sayi2)"
    }
}

var m = matematik()
m.topla(sayi1: 30, sayi2: 40)
m.carp(sayi1: 27, sayi2: 33, isim:"Mahmut")

var cikarma = m.cikar(sayi1: 152, sayi2: 78)
print("Çıkarma = \(cikarma)")
print(m.bol(sayi1: 879, sayi2: 37, ad: "Mahmut"))
