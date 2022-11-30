import UIKit

class dersNotlar {
    var ders:String?
    var not:Int?
    
    init(ders:String,not:Int) {
        self.ders = ders
        self.not = not
    }
}
let dn1 = dersNotlar(ders: "Tarih", not: 55)
let dn2 = dersNotlar(ders: "Matematik", not: 45)
let dn3 = dersNotlar(ders: "Fizik", not: 75)
let dn4 = dersNotlar(ders: "Kimya", not: 20)
let dn5 = dersNotlar(ders: "Biyoloji", not: 40)

var dersNotlariListesi = [dersNotlar]()

dersNotlariListesi.append(dn1)
dersNotlariListesi.append(dn2)
dersNotlariListesi.append(dn3)
dersNotlariListesi.append(dn4)
dersNotlariListesi.append(dn5)
var toplam = 0
for dn in dersNotlariListesi {
    print("\(dn.ders!): \(dn.not!)")
    toplam = toplam + dn.not!
}

let ortalama = toplam / dersNotlariListesi.count
print("~~~~~~~~~~~~~~~~~~~~~~~~~")
print("Ortalama = \(ortalama)")

if ortalama >= 50 {
    print("Sınıfı geçtiniz")
} else {
    print("Sınıf tekrarı yapınız")
}
