import UIKit

var sayilar = [1,2,3,4,5]

for (indeks,s) in sayilar.enumerated() {        // Sayıları sırasıyla aldık
    let sonuc = s * 2                           // Sayıları sırayla 2'yle çarptık
    sayilar[indeks] = sonuc                     // Yeni sayıları kendi indekslerine atadık
}

print(sayilar)
