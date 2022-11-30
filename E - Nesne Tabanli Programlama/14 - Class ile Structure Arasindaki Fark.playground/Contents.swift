import UIKit

class Ogrenci {         // class yapısında hafızadaki değişiklik herkesi etkiler
    var ad:String?
}

var ogrenci1 = Ogrenci()
ogrenci1.ad = "Ahmet"

var ogrenci2 = ogrenci1     // ogrenci1 değeri Ahmet iken Mehmet'e dönüştü
ogrenci2.ad = "Mehmet"
print(ogrenci1.ad!)         //   " "     ""     ""   ""     ""       ""
print(ogrenci2.ad!)


struct Kopek {              // struct yapısında atadığımız değerler, hafızada yeni yer oluştururlar
    var renk:String?
}

var kopek1 = Kopek()
kopek1.renk = "Siyah"       // kopek1'in rengi siyah

var kopek2 = kopek1         // kopek2'nin rengi beyaz ve kopek1'e atadık ama kopek1'in rengi değişmedi
kopek2.renk = "Beyaz"

print(kopek1.renk!)
print(kopek2.renk!)

