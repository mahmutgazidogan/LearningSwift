import UIKit

func toplamVariadic(sayilar:Int...) -> Int {        // Variadic yapıp ... ile istediğimiz kadar veri girebiliyoruz
    var toplam = 0
    for s in sayilar {
        toplam = toplam + s
    }
    return toplam
}
var v1 = toplamVariadic(sayilar: 24,454,231,65,45,37,97)
print(v1)
