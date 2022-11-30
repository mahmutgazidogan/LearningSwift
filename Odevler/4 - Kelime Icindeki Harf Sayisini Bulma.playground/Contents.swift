import UIKit

class Odev4 {
    func harfHesabi(harf:Character,kelime:String) {     // Harfi Character olarak tanımlıyoruz
        var sonuc = 0
        for k in kelime {   // Ankara, a
            if k == harf {
                sonuc = sonuc + 1
            }
        }
        print("Harf Sayısı: \(sonuc)")
    }
}
let o4 = Odev4()
o4.harfHesabi(harf:"a",kelime:"ankara")
