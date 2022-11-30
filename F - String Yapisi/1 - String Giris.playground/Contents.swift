import UIKit

// Tanımlama

let stringA = "Merhaba" // Değişken oluşturma gibi

let stringB = String("Merhaba Nesne") // Nesne oluşturma gibi

let stringC = """
Merhaba nasılsınız

Bu bir swift eğitimidir
Umarım faydalı oluyordur...
"""     // """ ... """ arasına metin şeklinde string girilebilir

print(stringA)
print(stringB)
print(stringC)

// Boş Kontrolü

var str1 = "a"
if str1.isEmpty {
    print("str1 boştur")
} else {
    print("str1 boş değildir")
}

var str2 = String()
if str2.isEmpty {
    print("str1 boştur")
} else {
    print("str1 boş değildir")
}


// Veri Ekleme \()

let a = 20
let b = 100
let str3 = "\(a) x \(b) = \(a*b)"
print(str3)

// String Birleştirme (tavsiye edilmiyor)
let str4 = "Merhaba"
let str5 = " Dünya"
let sonuc = str4 + str5
print(sonuc)

// String Boyutu Bulma
let str6 = "Merhaba Swift !"
print("\(str6) boyutu : \(str6.count) karakterdir")


// String Karşılaştırma
let str7 = "Merhaba"
let str8 = "Merhaba"

if str7 == str8 {
    print("\(str7) ve \(str8) eşittir\n")
} else {
    print("\(str7) ve \(str8) eşit değildir\n")
}

// String Parçalama
let str9 =  "Merhaba"

for harf in str9 {
    print(harf,terminator: " ") // terminator ile karakterlerin sonuna boşluk veya harf ekleyebiliriz
    
}
