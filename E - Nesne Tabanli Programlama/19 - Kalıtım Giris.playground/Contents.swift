import UIKit

class Arac {                // Üst sınıflar superclass olur. Alt sınıfa erişemez
    var renk:String?
    var vites:String?
    
    init(renk:String,vites:String){
        self.renk = renk
        self.vites = vites
    }
}
class Araba:Arac {          // Üst sınıfa bağlı alt sınıflar subclass olur. Üst sınıfa erişir, alt sınıfa erişemez
    var kasaTipi:String?
    
    init (kasaTipi:String,renk:String,vites:String){
        self.kasaTipi = kasaTipi
        super.init(renk: renk, vites: vites)
    }
}
class Nissan:Araba {        // Üst sınıfa erişir, alt sınıfa erişemez
    var model:Int?
    
    init (model:Int,kasaTipi:String,renk:String,vites:String){
        self.model = model
        super.init(kasaTipi:kasaTipi,renk:renk,vites:vites)
    }
}
var araba = Araba(kasaTipi: "Sedan", renk: "Füme", vites: "Otomatik")   // Araba classında kasa tipi - renk - vites bilgilerine ulaşabildik
print(araba.kasaTipi!,araba.renk!,araba.vites!)

var arac = Arac(renk: "Yeşil", vites: "Manuel")         // Araç classında sadece renk - vites bilgilerine ulaşabildik
print(arac.renk!,arac.vites!)

var nissan = Nissan(model: 2019, kasaTipi: "SUV", renk: "Lacivert", vites: "Otomatik")      // Nissan classında model - kasa tipi - renk - vites bilgilerine ulaştık
print(nissan.model!,nissan.kasaTipi!,nissan.renk!,nissan.vites!)

// Sınıflar çalışırken bağlı olduğu sınıflar önce çalışır. super.init ile bağlı olduğu sınıfı çalıştırıp akışına devam eder
