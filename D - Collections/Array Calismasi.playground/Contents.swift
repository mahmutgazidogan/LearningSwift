import UIKit

var dizi1 = [Int]()
var dizi2:[Float] = [10.0,20.0,30.0]
var dizi3 = [Int](repeating: 0, count: 3)       // [0, 0, 0]

var meyveler:[String] = ["Çilek","Muz","Elma","Kivi","Kiraz"]

var str = meyveler[3]

for (indeks,meyve) in meyveler.enumerated() {           // Meyveler dizisini numaralandırdık
    print("İndeks: \(indeks) Eleman: \(meyve)")
}

meyveler.append("Karpuz")       // En sona Karpuz ekledik
meyveler += ["Mandalina"]       // En sona Mandalina ekledik
meyveler[2] = "Ananas"          // Elmanın yerine Ananas yazdırdık
print(meyveler)

meyveler.insert("Portakal", at: 3)      // Ananas ile Kivi arasına Portakal yazdırdık
meyveler.isEmpty        // Meyveler dizisinin dolu olup olmadığını kontrol ediyor (dolu olduğu için false)
meyveler.count          // Meyveler dizisinin eleman sayısını verir
meyveler.first          // Meyveler dizisinin ilk elemanını verir
meyveler.last           // Meyveler dizisinin son elemanını verir

meyveler.contains("Kiraz")      // Meyvelerde Kiraz olup olmadığını kontrol ediyor
meyveler.max()
meyveler.min()
meyveler.reverse()              // Meyveleri ters çevirdik
meyveler.sort()                 // Meyveleri alfabetik sıraladık
meyveler.remove(at: 2)          // Meyvelerden Kirazı sildik
print(meyveler)

meyveler.removeAll()            // Bütün meyveleri sildik
