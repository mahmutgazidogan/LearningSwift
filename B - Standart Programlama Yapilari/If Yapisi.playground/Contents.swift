import UIKit

var yas = 19
var isim = "Mehmet"
 

// Örnek 1: if

if yas >= 18 {
    print("Reşitsiniz")
}


// Örnek 2: else

if yas >= 18 {
    print("Reşitsiniz")
}
else{
    print("Reşit değilsiniz")
}


// Örnek 3: String kıyaslama

if isim == "Ahmet" {
    print("Merhaba Ahmet")
}
else{
    print("Tanınmayan kişi")
}

// Örnek 4: else if

if isim == "Ahmet" {
    print("Merhaba Mehmet")
}
else if isim == "Mehmet"{
    print("Merhaba Mehmet")
}
else {
    print("Tanınmayan kişi")
}


// Örnek 5: Çoklu şart - and

var kullaniciAdi = "admin"
var sifre = 1234

if sifre == 1234 && kullaniciAdi == "admin" {
    print("Hoşgeldiniz")
}
else {
    print("Hatalı giriş")
}


// Örnek 6: Çoklu şart - or

var sinif = 10

if sinif == 9 || sinif == 10 || sinif == 11 || sinif == 12 {
    print("AYT sınavına hazırlanabilirsin")
}


// Örnek 7: Ternary Conditional: Üçlü şart

var a = 10
var b = 20

a == b ? print("Eşit") : print("Eşit değil")
