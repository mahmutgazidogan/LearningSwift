import UIKit

var isim = "Mahmut Gazi Doğan"
var son = 10

/*for i in 1...son{
    print("\(i). \(isim)")
}*/

var harfSayisi = isim.count // .count ile isimdeki harfleri saydırıp o kadar tekrar ettirdik

for i in 1...harfSayisi{ // üst sınır olarak da harfSayisi değişkenini yaptık
    print("\(i). \(isim)")
}
