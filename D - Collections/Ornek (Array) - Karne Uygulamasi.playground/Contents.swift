import UIKit

var notlar = [Int]()
var dersler = [String]()

dersler.append("Fizik")
notlar.append(20)

dersler.append("Tarih")
notlar.append(80)

dersler.append("Matematik")
notlar.append(100)

dersler.append("Biyoloji")
notlar.append(40)

dersler.append("Kimya")
notlar.append(60)

var toplam = 0

for i in 0...(notlar.count-1) {
    print("\(dersler[i]): \(notlar[i])")
    toplam = toplam + notlar[i]
}

print("************** \nOrtalama: \(toplam/dersler.count)")
