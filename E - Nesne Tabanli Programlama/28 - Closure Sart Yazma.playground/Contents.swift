import UIKit

var sayilar:[Int] = [4,-3,22,-16,37,61]     // bir sayıyı diğeriyle karşılaştırıp sıralayacağız
let siralama1 = sayilar.sorted(by: {sayi1,sayi2 in sayi1 > sayi2}) // Büyükten küçüğe sıraladık
let siralama2 = sayilar.sorted(by: {n1,n2 in n1 < n2})  // Küçükten büyüpe sıraladık. Üsttekini kısalttık
let siralama3 = sayilar.sorted(by: {$0 > $1})           // Büyükten küçüğe filtreleme gibi sıraladık
let siralama4 = sayilar.sorted(by: < )      // Sadece karşılaştırma operatörüyle de küçükten büyüğe sıralayabiliriz
print(siralama1)
print(siralama2)
print(siralama3)
print(siralama4)
