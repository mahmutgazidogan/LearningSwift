import UIKit

var sayilar = [1,4,67,42,89,90,54,12,65,73,64,87]

var tekler = [Int]()
var ciftler = [Int]()

for s in sayilar {
    let sonuc = s % 2           // Sayıların 2'ye bölümünden kalanı buluyoruz
    
    if sonuc == 0 {
        ciftler.append(s)       // Çift olanları ciftler dizinine
    }
    
    if sonuc == 1 {
        tekler.append(s)        // Tek olanları tekler dizinine
}
}

print("Tek Sayılar: \(tekler) \nÇift Sayılar: \(ciftler)")
