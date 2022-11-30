import UIKit

class Matematik {
    var x = 10
    var y = 20
    
    var topla:Int {
        get {                           // İşlemin sonucunu almak için kullanılır
            return x + y                // İşlem burada gerçekleşiyor
        }
    }
}
var nesne = Matematik()
print(nesne.topla)


class Maas {
    var maas = 10000.0
    var bonus = 1.10
    
    var haftalikMaasHesaplama:Double {
        get {                               // Kendi sınıfından veri (maaş) almak için kullanılır
            return (maas*bonus)/52          // Maaş x Bonus işlemini 52 haftaya böldük ve haftalık maaşı bulduk
        }
        
        set (yeniHaftalikMaas) {            // Kendi sınıfına veri (maaş) yüklemek için kullanılır
            self.maas = yeniHaftalikMaas * 52       // self ile en üstteki maaş bilgisini kullanıyoruz
        }
    }
}

var m = Maas()
print("Haftalık Maaş   : \(m.haftalikMaasHesaplama)")
m.haftalikMaasHesaplama = 600
print("Yıllık Maaş     : \(m.maas)")
