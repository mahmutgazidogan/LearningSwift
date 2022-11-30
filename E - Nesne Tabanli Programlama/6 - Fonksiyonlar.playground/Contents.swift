import UIKit

// Void türünde (Geriye değer döndürmeyen)
func selamla(){
    let sonuc = "Merhaba Ahmet"     // Parametreyi içeriden verdik
    print(sonuc)
}
selamla()

// Geriye değer döndüren
func selamla1() -> String {
    let sonuc = "Merhaba Ahmet"
    return sonuc
}
var gelenVeri = selamla1()
print(gelenVeri)


// Dışarıdan parametre alan
func selamla2 (isim:String){
    let sonuc = "Merhaba \(isim)"
    print(sonuc)
}
selamla2(isim: "Ahmet")         // Parametreyi dışarıdan verdik

// Örnek 1: Void (Geri değer döndürmeden)
func toplama(){
    let toplam = 30 + 40
    print("Toplam= \(toplam)")
}
toplama()

// Örnek 2: Geriye değer döndüren
func toplama1() -> Int {
    let toplam = 30 + 40
    return toplam
}
var t1 = toplama1()
print("Toplama1= \(t1)")

// Örnek 3: Dışarıdan parametre alan
func toplama2 (sayi1:Int,sayi2:Int) -> Int {
    let toplam = sayi1 + sayi2
    return toplam
}
var t2 = toplama2(sayi1: 50, sayi2: 80)
print("Toplama2= \(t2)")
