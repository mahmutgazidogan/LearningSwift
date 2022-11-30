import UIKit

func islem (sayilar:[Int]) -> (toplam:Int,carpma:Int) {
    var toplam = 0
    var carpma = 1
    for s in sayilar {
        toplam = toplam + s
        carpma = carpma * s
    }
    return (toplam,carpma)          // 2 değeri döndürdük
}

var dizi = [1,3,5,7,9,11,17,23,31]      // Sayılar dizisine eleman tanımladık
let a = islem(sayilar: dizi)            // Dizi elemanlarını işlem fonksiyonuna soktuk

print("Toplamları = \(a.toplam)")
print("Çarpımları = \(a.carpma)")
