import UIKit

func hesapla (sayi1 s1:Int,sayi2 s2:Int) -> Int {       // sayi1 ve sayi2 global, s1 ve s2 lokal    ***(Geri dönüşü Int? ile optional yapabilirdim)
    let sonuc = s1*2 + s2*4                 // sayi1 ve sayi2 olarak tanımlasak bile s1 ve s2 olarak işlem yapabiliriz
    return sonuc
}

var a = hesapla(sayi1: 27, sayi2: 34)       // işlemde global şekilde (sayi1 sayi2) veri girişi bekleniyor
print("Sonuç = \(a)")                       // işlemi normal şekilde yazdırdık. ***(Veri optional gelseydi \(a!) olarak yazdırabilirdim)
