import UIKit

class Kisiler {
    var kisiAd:String?
    var kisiNo:Int?
    
    init(kisiAd:String,kisiNo:Int) {
        self.kisiNo = kisiNo
        self.kisiAd = kisiAd
    }
}

let kisi1 = Kisiler(kisiAd:"Mahmut",kisiNo:1)
let kisi2 = Kisiler(kisiAd:"Samet",kisiNo:2)
let kisi3 = Kisiler(kisiAd:"Enes",kisiNo:3)
let kisi4 = Kisiler(kisiAd:"Furkan",kisiNo:4)
let kisi5 = Kisiler(kisiAd:"Bedir",kisiNo:5)
let kisi6 = Kisiler(kisiAd:"Kürşat",kisiNo:6)

var kisilerArray = [Kisiler]()

kisilerArray.append(kisi1)
kisilerArray.append(kisi2)
kisilerArray.append(kisi3)
kisilerArray.append(kisi4)
kisilerArray.append(kisi5)
kisilerArray.append(kisi6)

print("Önce")
for k in kisilerArray {
    print("\(k.kisiNo!) - \(k.kisiAd!)")
}

print("\nSayısal Büyükten Küçüğe Sıralama")
let siralama1 = kisilerArray.sorted(by: {$0.kisiNo! > $1.kisiNo!})

for k in siralama1 {
    print("\(k.kisiNo!) - \(k.kisiAd!)")
}

print("\nAlfabetik Baştan Sona Sıralama")
let siralama2 = kisilerArray.sorted(by: {$0.kisiAd! < $1.kisiAd!})

for k in siralama2 {
    print("\(k.kisiNo!) - \(k.kisiAd!)")
}
