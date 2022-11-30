import UIKit

class Personel {
    func iseAlindi(){
        print("Personel mutlu")
    }
}
class Mudur:Personel {
    func iseAl(p:Personel){     // Personel türünden bir girdi bekliyoruz
        p.iseAlindi()
    }
    func terfiEttir(p:Personel){
       // (p as! Ogretmen).maasArttir()       // Downcasting yaparak personeli öğretmen yaptık ve maaş arttırımı tanımladık
        
        if p is Ogretmen {                    // personelin öğretmen olmasını kontrol ettik, öğretmense terfi alabilir
            (p as! Ogretmen).maasArttir()     // Downcasting (Personelden öğretmene dönüşüm - üstten alta) yaparak personeli öğretmen yaptık ve maaş arttırımı tanımladık
        }
        if p is Isci {
            print("İşçiler terfi edilemez")
        }
    }
}
class Isci:Personel {
}
class Ogretmen:Personel {
    func maasArttir(){
        print("Maaş arttı, öğretmen mutlu")     //
    }
    }

var isci:Personel = Isci()              // polymorphism yaparak alınan personeli işçi olarak gösterdik
var ogretmen:Personel = Ogretmen()      // polymorphism yaparak alınan personeli öğretmen olarak gösterdik

var mudur = Mudur()         // müdür nesnesi oluşturduk ve işe alım yapacağız
mudur.iseAl(p: isci)        // işçi aldık
mudur.iseAl(p: ogretmen)    // öğretmen aldık

mudur.terfiEttir(p: ogretmen)   // öğretmeni terfi ettirip maaşını arttırdık
mudur.terfiEttir(p: isci)       // işçinin terfi edilme hakkını tanımlamadığımız için terfi olmadı
