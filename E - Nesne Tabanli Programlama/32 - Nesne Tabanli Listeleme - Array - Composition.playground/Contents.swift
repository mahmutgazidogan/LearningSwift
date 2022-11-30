import UIKit

class Adres {
    var il:String?
    var ilce:String?
    
    init(il:String,ilce:String) {
        self.il = il
        self.ilce = ilce
    }
}

class Personel {
    var personelNo:Int?
    var personelIsim:String?
    var personelAdres:Adres?
    
    init(personelNo:Int,personelIsim:String,personelAdres:Adres) {
        self.personelNo = personelNo
        self.personelIsim = personelIsim
        self.personelAdres = personelAdres
    }
}

var adres1 = Adres(il: "Adıyaman", ilce: "Merkez")
var adres2 = Adres(il: "Ankara" , ilce: "Mamak")
var adres3 = Adres(il: "İstanbul", ilce: "Kadıköy")
var adres4 = Adres(il: "Hatay", ilce: "İskenderun")

var personel1 = Personel(personelNo: 124, personelIsim: "Mahmut",personelAdres: adres1)
var personel2 = Personel(personelNo: 94, personelIsim: "Oğuzhan",personelAdres: adres2)
var personel3 = Personel(personelNo: 147, personelIsim: "Çağatay",personelAdres: adres3)
var personel4 = Personel(personelNo: 36, personelIsim: "Barış",personelAdres: adres4)

var personelListesi = [Personel]()

personelListesi.append(personel1)
personelListesi.append(personel2)
personelListesi.append(personel3)
personelListesi.append(personel4)
let siralama1 = personelListesi.sorted(by: {$0.personelNo! < $1.personelNo!})
for p in siralama1 {
    print("\n~~~~~~~~~~~~~\n")
    print("Personel No: \(p.personelNo!)")
    print("Personel İsim: \(p.personelIsim!)")
    print("Personel Adres")
    print("Personel İl: \(p.personelAdres!.il!)")
    print("Personel İlçe: \(p.personelAdres!.ilce!)")
}
