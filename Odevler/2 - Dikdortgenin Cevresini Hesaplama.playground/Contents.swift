import UIKit
class hesaplama {
    func cevreHesabi(kisaKenar a:Int,uzunKenar b:Int) -> Int {
        let cevre = 2 * (a + b)
        return cevre
    }
}
let h = hesaplama()
let sonuc = h.cevreHesabi(kisaKenar: 47, uzunKenar: 79)
print("Dikdörtgenin Çevresi = \(sonuc) cm")


// Hocanın yazdığı program
class Odev2 {
    func cevre(kisaKenar:Int,uzunKenar:Int){
        let cevreHesabi = 2*kisaKenar + 2*uzunKenar
        print("Dikdörtgen Çevresi = \(cevreHesabi)")
    }
}
let o2 = Odev2()
o2.cevre(kisaKenar: 67, uzunKenar: 86)
