import UIKit

enum Hatalar:Error {    // Hata sınıfı oluşturduk
    case sifiraBolunmeHatasi
}

func bolme(s1:Int,s2:Int) throws -> Int {
    if s2 == 0 {
        throw Hatalar.sifiraBolunmeHatasi
    }
    return s1 / s2
}
var s1 = 10
var s2 = 0

// do try catch ile çözüm

do {
    let sonuc = try bolme(s1: s1, s2: s2)   // Yukarıdaki s1 s2 verileri alındı
    print(sonuc)
} catch Hatalar.sifiraBolunmeHatasi {
    print("Sayı sıfıra bölünemez")
}

// Optional olarak çözüm
let sonuc1 = try? bolme(s1: 10, s2: 0)  // Yukarıda tanımlanan s1 s2 de kullanılabilir

if sonuc1 == nil {
    print("Hata oluştuğu için sonuç nil'dir")
} else {
    print("Hata yok. Sonuç: \(sonuc1!)")
}
