import UIKit

// RASTGELE SAYI ÜRETME
for _ in 1...10 {
    let rastgeleSayi = Int(arc4random_uniform(10))  // Rastgele sayı oluşturur (0-10 arası)
    //print(rastgeleSayi)
}


// MATEMATİKSEL İŞLEMLER
let c = ceil(6.4)       // Verilen sayıyı bir üst sayıya yuvarlar
print(c)

let f = floor(6.5)      // Verilen sayıyı bir alt sayıya yuvarlar
print(f)

let s = sqrt(4.0)       // Sayının karekökünü alır
print(s)

let p = pow(2.0,3.0)    // Sayının üssünü alır
print(p)

let a = abs(-10)        // Girilen negatif sayının mutlak değerini alır
print(a)

let mx = max(100, 200)  // Sayıların maksimumunu verir
print(mx)

let mn = min(100, 200)  // Sayıların minimumunu verir
print(mn)


// TARİHSEL - ZAMANSAL
let tarih = Date()

let takvim = Calendar.current

let yil = takvim.component(.year, from: tarih)
let ay = takvim.component(.month, from: tarih)
let gun = takvim.component(.day, from: tarih)
let saat = takvim.component(.hour, from: tarih)
let dakika = takvim.component(.minute, from: tarih)
let saniye = takvim.component(.second, from: tarih)

print(yil)
print(ay)
print(gun)
print(saat)
print(dakika)
print(saniye)


// ÖLÇÜ BİRİMLERİ

let metre = Measurement.init(value: 50, unit: UnitLength.meters)            // 50 metre
print(metre)

let kilometre = Measurement.init(value: 1, unit: UnitLength.kilometers)     // 1 kilometre
print(kilometre)

let sonuc = metre + kilometre
print(sonuc)

let a1 = sonuc.converted(to: .kilometers)  // sonucu kilometreye dönüştürdük
print(a1)

let a2 = sonuc.converted(to: .miles)
print(a2)


let frekans = Measurement.init(value: 1000, unit: UnitFrequency.kilohertz)  // 1000 kHz

let c1 = frekans.converted(to: .gigahertz)
print(c1)

let sicaklik = Measurement.init(value: 30, unit: UnitTemperature.celsius)   // 30 derece
print(sicaklik)

let d1 = sicaklik.converted(to: .fahrenheit)
print(d1)
