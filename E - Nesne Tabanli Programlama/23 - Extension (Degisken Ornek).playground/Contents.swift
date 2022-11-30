import UIKit

extension Double {
    var km:Double { return self*1000 }      // return ile değer döndürdük, self ile dışarıdaki değeri aldık 
    var m:Double  { return self }
    var cm:Double { return self/100 }
    var mm:Double { return self/1000 }
}
print("25 km \(25.km) metredir")
print("15 cm \(15.cm) metredir")

var sayi = 18.0
print("18 mm \(sayi.mm) metredir")
