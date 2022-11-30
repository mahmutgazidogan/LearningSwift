import UIKit

var okul:[Int:String] = [154:"Ahmet", 67:"Mehmet",871:"Zeynep",45:"Ahmet"]

var sonuc1 = okul.filter({$0.key > 70})     // key'i 70'ten büyük olanları yazdırdı
print(sonuc1)

var sonuc2 = okul.filter({$0.value == "Ahmet"})     // Value (değeri) Ahmet olanları getirdi
print(sonuc2)

var sonuc3 = okul.filter({$0.value == "Ahmet" && $0.key > 70})      // 2 Ahmet'ten key'i 70'ten büyük olanı seçti
print(sonuc3)
