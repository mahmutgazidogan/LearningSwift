import UIKit

class Odev3 {
    func faktoriyelHesabi(sayi:Int) -> Int {
        var faktoriyel = 1
        for i in 1...sayi {             // 1'den istenen sayıya kadar tek tek çarpıyor
        faktoriyel = faktoriyel*i       // faktoriyel *= i
        }
        return faktoriyel
    }
}
let o3 = Odev3()
let sonuc = o3.faktoriyelHesabi(sayi:6)
print("Sayının Faktöriyeli = \(sonuc)")
