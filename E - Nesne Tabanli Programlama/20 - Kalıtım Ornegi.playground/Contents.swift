import UIKit

class Ev {
    var pencereSayisi:Int?
    
    init(pencereSayisi:Int) {
        self.pencereSayisi = pencereSayisi
    }
}
class Saray:Ev {
    var kuleSayisi:Int?
    
    init(kuleSayisi:Int,pencereSayisi:Int) {
        self.kuleSayisi = kuleSayisi
        super.init(pencereSayisi: pencereSayisi)
    }
}
class Villa:Ev {
    var garajVarmi:Bool?
    
    init(garajVarmi:Bool,pencereSayisi:Int) {
        self.garajVarmi = garajVarmi
        super.init(pencereSayisi: pencereSayisi)
    }
}

var topkapiSarayi = Saray(kuleSayisi:5,pencereSayisi:30)
var bogazVilla = Villa(garajVarmi: true, pencereSayisi: 10)

print("Pencere Sayısı: \(topkapiSarayi.pencereSayisi!) *** Kule Sayısı: \(topkapiSarayi.kuleSayisi!)")
print("Garaj Var mı? : \(bogazVilla.garajVarmi!) *** Pencere Sayısı: \(bogazVilla.pencereSayisi!)")


// Nesnelerin Tip dönüşümü - Yukarıdaki örnekten devam ediyoruz

var saray = Saray(kuleSayisi:2,pencereSayisi:5)     // Saray sınıfından saray nesnesi oluşturduk
if saray is Saray {                                 // is yapısı ile sarayın Saray sınıfına ait olup olmadığını kontrol ettik
    print("Saraydır")
} else {
    print("Saray değildir")
}

if bogazVilla is Saray {            // Villa ile Saray'ın kalıtımsal bağı olmadığı için bogazVilla Saray olamaz
    print("Saraydır")
} else {
    print("Saray değildir")
}

// Upcasting - Alt sınıftan üst sınıfa dönüşüm (Saraydan Eve dönüşüm)

var ev1:Ev = Saray(kuleSayisi: 2, pencereSayisi: 10) as Ev      // Sarayı Eve dönüştürdük

// Downcasting - Üst sınıftan alt sınıfa dönüşüm (as! - as?)

/* var ev2 = Ev(pencereSayisi: 40)
var saray2:Saray = ev2 as! Saray    // Evi Saraya dönüştürdük. (as! kullanımı çok sağlıklı değil) */

var saray3:Saray? = Ev(pencereSayisi: 5) as? Saray  // Evi Saraya dönüştürdük. (as? kullanımı daha sağlıklıdır çünkü optional dönecek)

