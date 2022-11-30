import UIKit

class Asinifi {
    static var x = 10           // static metodu çok kullanmıyoruz, performans anlamında sıkıntı yapabilir
    static func metod(){
        print("Merhaba")
    }
}
print(Asinifi.x)        // A sınıfındaki x değişkenine doğrudan erişim sağlıyor
Asinifi.metod()         // A sınıfı metodunu çalıştırıyor
