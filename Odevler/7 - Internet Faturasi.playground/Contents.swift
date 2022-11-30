import UIKit

class Odev7 {
    func internetFaturasi(kotaMiktari:Int) -> Int {
        let kota = kotaMiktari
        var tutar = 0
        if kota > 50 {
            let kotaAsimi = kota - 50
            tutar = 100 + kotaAsimi*4
        } else {
            tutar = 100
        }
        return tutar
    }
}
let o7 = Odev7()
let sonuc = o7.internetFaturasi(kotaMiktari:80)
print("Fatura tutarı: \(sonuc) TL ")
