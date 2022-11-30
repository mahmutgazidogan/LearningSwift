import UIKit

var dersler = ["Kimya","Matematik","Edebiyat"]
var notlar = [50,80,70]

var dersNotlari = Dictionary(uniqueKeysWithValues: zip(notlar, dersler))        // Derslerle notları birleştirdik
print(dersNotlari)


var urunFiyatlari:[Double:String] = [15.99:"Kitap", 59.99:"T-Shirt",239.99:"Saat"]
var fiyatlar = [Double](urunFiyatlari.keys)                  // Hazır dictionary'i fiyatlar ve ürünler olarak ayrıştırdık
var urunler = [String](urunFiyatlari.values)                 //    ""     ""         ""

print(fiyatlar)
print(urunler)
