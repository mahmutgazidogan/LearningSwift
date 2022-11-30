import UIKit

class Odev5 {
    func icAciHesabi(kenarSayisi:Int) -> (Int,Int) {
        let toplam = (kenarSayisi-2)*180
        return (toplam,kenarSayisi)
    }
}
let o5 = Odev5()
let sonuc = o5.icAciHesabi(kenarSayisi: 4)
print("Kenar Sayısı : \(sonuc.1), İç Açı Toplamı : \(sonuc.0)")     // 1. indisten kenar sayısını, 0. indisten açı toplamını aldık
