import UIKit

// override = metotların ezilmesi

class Hayvan {
    func sesCikar(){
        print("Sesim yok!")
    }
}
    class Memeli:Hayvan {
        
    }
    class Kedi:Memeli {
        override func sesCikar() {
            print("Miyav Miyav")
        }
    }
    class Kopek:Memeli {
        override func sesCikar() {
            print("Hav Hav")
        }
    }

var hayvan = Hayvan()
hayvan.sesCikar()

var memeli = Memeli()       // Memeli sınıfı boş olmasına rağmen üst sınıfa bağlı olduğu için Sesim Yok! yazdı
memeli.sesCikar()

var kedi = Kedi()           // override ile üst sınıfı çalıştırmayıp kendi fonksiyonunu çalıştırdı
kedi.sesCikar()

var kopek = Kopek()         // override ile üst sınıfı çalıştırmayıp kendi fonksiyonunu çalıştırdı
kopek.sesCikar()
print("--------------- \n")


// Polymorphism örneğini bu örnekler üzerinden yaptık

var hayvan1:Hayvan = Kopek()    // polymorphism'de Hayvan sınıfından nesne oluşturup köpek sınıfı gibi davrandırdık
hayvan1.sesCikar()              // oluşan hayvan1 nesnesini köpek sınıfına dahil ettik ve Hav Hav sesi çıkardı
