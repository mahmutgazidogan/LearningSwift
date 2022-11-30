import UIKit

var sayilar = [Int]()

for _ in 1...10 {
    let rastgeleSayi = arc4random_uniform(10)       // Rastgele sayıyı ürettik (Unit32 türünde)
    sayilar.append(Int(rastgeleSayi))               // Unit32 türündeki sayıları Int'e dönüştürdük
}

sayilar.sort()          // Sayıları küçükten büyüğe sıraladık. Çok gerekli değil
print(sayilar)
