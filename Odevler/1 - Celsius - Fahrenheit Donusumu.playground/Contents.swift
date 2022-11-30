import UIKit

func donusum(celsius:Double) -> Double {
    let fahrenheit = celsius * 1.8 + 32
    return fahrenheit
}
var c = donusum(celsius: 55.4)
print("Fahrenheit Değeri = \(c)")


// Hoca Odev1 class'ı yapıp o1 nesnesi oluşturarak aynı şeyi yaptı.
// Hocanın yazdığı program

class Odev1 {
    func donustur(derece:Double) -> Double {
        let fahrenheit = derece*1.8 + 32
        return fahrenheit
    }
}
let o1 = Odev1()
let sonuc = o1.donustur(derece: 48.9)
print("Fahrenheit: \(sonuc)")
