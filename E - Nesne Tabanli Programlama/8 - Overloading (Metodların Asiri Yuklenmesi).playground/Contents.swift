import UIKit

class hesaplayici {
    func topla (sayi1:Int,sayi2:Int){
        print("Toplam = \(sayi1 + sayi2)")
    }
    
    func topla (sayi1:Double,sayi2:Int){
        print("Toplam = \(sayi1 + Double(sayi2))")
    }
    func topla (sayi1:Int,sayi2:Double){
        print("Toplam = \(Double(sayi1) + sayi2)")
    }
    func topla (sayi1:Double,sayi2:Double,ad:String){
        print("Toplayan kişi: \(ad)  Toplam = \(sayi1 + sayi2)")
    }
}
var h = hesaplayici()
h.topla(sayi1: 25, sayi2: 77)
h.topla(sayi1: 57.0, sayi2: 99)
h.topla(sayi1: 53, sayi2: 68.4)
h.topla(sayi1:25.7, sayi2: 59.2, ad: "Mahmut")
