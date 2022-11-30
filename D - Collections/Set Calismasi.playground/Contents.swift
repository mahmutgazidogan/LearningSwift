import UIKit

var dizi1 = Set <Int>()

var dizi2:Set = ["bursa","istanbul","ankara","ankaraz"]         // Aynı ifadeyi bir daha kaydedemeyiz ve rastgele sıralama yapar

var dizi3:Set <Float> = [10.0,20.0,30.0]


var meyveler:Set = ["Çilek","Muz","Elma","Kivi","Kiraz"]

for (indeks,meyve) in meyveler.enumerated() {
    print("\(indeks) \(meyve)")
}


meyveler.insert("Karpuz")
meyveler.insert("Armut")
meyveler.insert("Muz")          // Dizide Muz olduğu için tekrar eklenmedi

print(meyveler)

meyveler.isEmpty
meyveler.count
meyveler.first                  
meyveler.contains("Muz")        // İfadenin dizide olup olmadığını kontrol ediyor
meyveler.max()
meyveler.min()

meyveler.removeAll()
