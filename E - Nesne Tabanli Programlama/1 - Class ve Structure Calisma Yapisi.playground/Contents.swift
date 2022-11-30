import UIKit

struct Urun {
    var ad:String?
    var fiyat:Double?
}

class Araba {
    var renk:String?
    var kapasite:Int?
}

var laptop = Urun()

var bmw = Araba()

laptop.ad = "macbook"
laptop.fiyat = 11987.67

print(laptop.ad!)
print(laptop.fiyat!)

laptop.fiyat = 10000.99         // Macbook'un fiyatını güncelledik
print(laptop.fiyat!)


bmw.renk = "Kırmızı"
bmw.kapasite = 4

print(bmw.renk!)                // Optional'i bu şekilde de çözebiliriz
print(bmw.kapasite!)            //     ""           ""           ""

if let temp = bmw.renk {            // Optional'i çözdük
    print(temp)
}


var tv = Urun()
tv.ad = "Samsung"
tv.fiyat = 8623.32

var limuzin = Araba()
limuzin.renk = "Beyaz"
limuzin.kapasite = 8

print(tv.ad!)
print(tv.fiyat!)

print(limuzin.renk!)
print(limuzin.kapasite!)

