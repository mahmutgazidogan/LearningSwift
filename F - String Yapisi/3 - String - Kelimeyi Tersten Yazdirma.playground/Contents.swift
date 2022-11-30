import UIKit

var str = "Merhaba"

var harfler = [Character]() // Karakter içeren bir dizi oluşturduk

for harf in str {
    print(harf)
    harfler.append(harf)
}
print(harfler)  // harfleri tek tek harfler dizisine ekledik

for i in stride(from: (harfler.count-1), through: 0, by: -1){
    print(harfler[i],terminator: "")   // harfler dizisini tersten yazdırdık
}
