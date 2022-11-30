import UIKit

class Odev6 {
    func maasHesabi(gunSayisi:Int) -> Int {
        let calismaSaati = gunSayisi*8
        var maas = 0
        if calismaSaati > 160 {
            let fazlaMesai = calismaSaati - 160     // mesai saatini bulmak için çalışma saatinden ham maaş saatini çıkardık
            maas = calismaSaati*10 + fazlaMesai*20  // mesaili maaşı hesapladık
        } else {
            maas = calismaSaati*10
        }
        return maas
    }
}
let o6 = Odev6()
let sonuc = o6.maasHesabi(gunSayisi: 15)
print(("Toplam Maaş = \(sonuc) Türk Lirası"))

