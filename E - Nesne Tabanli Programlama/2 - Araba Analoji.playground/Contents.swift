import UIKit

class Araba {
    var renk:String?                    // Özellik tanımladık
    var hiz:Int?                        // Özellik tanımladık
    var calisiyorMu:Bool?               // Özellik tanımladık
    
    func calistir() {
        calisiyorMu = true
    }
    
    func durdur() {
        calisiyorMu = false
        hiz = 0
    }
    
    func hizlan(kacKm:Int) {
        hiz! += kacKm               // hiz = hiz + kacKm
    }
    
    func yavasla(kacKm:Int) {
        hiz! -= kacKm               // hiz = hiz - kacKm
    }
    
    func bilgiAl() {
        print("Renk         : \(renk!)")
        print("Hız          : \(hiz!)")
        print("Çalışıyor mu?: \(calisiyorMu!)")
    }
}

var bmw = Araba()
bmw.hiz = 180
bmw.renk = "Kırmızı"

bmw.calistir()              // bmw'yi çalıştırdık
bmw.bilgiAl()               // bmw'nin durumunun bilgisini aldık

bmw.durdur()                // bmw'yi durdurduk
bmw.calistir()              // hızlandırmak istediğimizde önce bmw'yi çalıştırmamız gerekiyor
bmw.bilgiAl()               // bmw'nin yeni durumunun bilgisini aldık

bmw.hizlan(kacKm: 50)
bmw.bilgiAl()

bmw.yavasla(kacKm: 20)
bmw.bilgiAl()


var sahin = Araba()         // Şahin tanımladık
sahin.renk = "Beyaz"        // Özellik tanımladık
sahin.hiz = 100             //    ""       ""
sahin.calistir()
sahin.bilgiAl()

sahin.hizlan(kacKm: 50)
sahin.bilgiAl()

