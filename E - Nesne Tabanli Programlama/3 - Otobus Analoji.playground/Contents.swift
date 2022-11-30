import UIKit

class Otobus {
    var kapasite:Int?
    var nereden:String?
    var nereye:String?
    var mevcutYolcu:Int?
    
    func yolcuAl(yolcu:Int) {
        mevcutYolcu! += yolcu
    }
    
    func yolcuIndir(yolcu:Int) {
        mevcutYolcu! -= yolcu
    }
    
    func bilgiAl() {
        print("Kapasite     : \(kapasite!)")
        print("Nereden      : \(nereden!)")
        print("Nereye       : \(nereye!)")
        print("Yolcu Sayısı : \(mevcutYolcu!)")
    }
}

var kamilKoc = Otobus()

kamilKoc.kapasite = 50
kamilKoc.nereden = "Bursa"
kamilKoc.nereye = "Ankara"
kamilKoc.mevcutYolcu = 10
kamilKoc.bilgiAl()

kamilKoc.yolcuAl(yolcu: 10)             // Otobüse 10 yolcu aldık
kamilKoc.bilgiAl()

kamilKoc.yolcuIndir(yolcu: 5)           // Otobüsten 5 yolcu indirdik
kamilKoc.bilgiAl()
