import UIKit

var isimler = ["Ahmet", "Mehmet", "Zeynep", "Serhat", "Kadir", "Ahmet"]
var kontrolİsim = "Ahmet"

for i in isimler {

    if i == kontrolİsim {
        print("Bu isim dizide mevcuttur")
        break
    }
    else {
        print("Bu isim dizide yoktur")
        break
    }
    
}
