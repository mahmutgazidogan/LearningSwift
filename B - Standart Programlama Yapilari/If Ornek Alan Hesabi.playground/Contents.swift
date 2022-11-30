import UIKit


print("Çember Alanı (1)")
print("Dikdörtgen Alanı (2)")

let secim = 2
let kisaKenar = 10
let uzunKenar = 20
let yariCap = 4.0

print("Seçiminiz: \(secim)")

if secim == 1 {
    print("Dikdörtgen Alanı")
    print("Kısa kenar: \(kisaKenar)")
    print("Uzun kenar: \(uzunKenar)")
    let alan = kisaKenar * uzunKenar
    print("Sonuç: \(alan)")
}

if secim == 2 {
    print("Çember Alanı")
    print("Yarıçap: \(yariCap)")
    let alan = 3.14 * yariCap * yariCap
    print("Sonuç: \(alan)")
}
