import UIKit

func kisiTanima (ad:String){
    if ad == "Ahmet" {
        print("Merhaba Ahmet")
    } else {
        print("Tanınmayan kişi")
    }
}

kisiTanima(ad:"Ahmetx")


func kisiTanima1(ad:String){
    guard ad == "Ahmet" else {  // Guard, if'in tersi şeklinde çalışır, olumsuzda devreye girer
        print("Tanınmayan kişi")
        return
    }
        print("Merhaba Ahmet")
}
kisiTanima1(ad:"Ahmet")


// Optional ifadelerde otomatik unwrapp yapar

func buyukHarfYap(str:String?){
    if let temp = str {
        print(temp.uppercased())
    } else {
        print("str nil'dir")
    }
}
buyukHarfYap(str: "Ahmet")


func buyukHarfYap1(str:String?){
    guard let temp = str else {     // Optionalde otomatik unwrapp yapıyor
        print("str nil'dir")
        return
    }
        print(temp.uppercased())
}
buyukHarfYap1(str: nil) // nil değer yolladık
