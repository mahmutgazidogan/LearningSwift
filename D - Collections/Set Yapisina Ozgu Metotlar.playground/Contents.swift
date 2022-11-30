import UIKit

let tekler:Set = [1,3,5,7,9]
let ciftler:Set = [0,2,4,6,8]
let asal:Set = [2,3,5,7]

let dizi = tekler.union(ciftler)     // çiftleri tekler kümesiyle birleştirdi (rastgele)
print(dizi)

let dizi1 = tekler.intersection(ciftler).sorted()       // teklerle çiftlerin kesişimini (ortak elemanları) verir
print(dizi1)

let dizi2 = tekler.subtracting(asal).sorted()           // tekler ve asalların kesişimindekileri çıkarıp teklerde geriye kalanları yazar ve sıralar
print(dizi2)

let dizi3 = tekler.symmetricDifference(asal).sorted()       // teklerle asalların kesişimindekileri çıkarıp iki kümede kalanları yazar ve sıralar
print(dizi3)
