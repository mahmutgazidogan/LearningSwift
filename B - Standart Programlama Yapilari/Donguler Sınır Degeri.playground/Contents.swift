import UIKit

// 3 ile 6 arasında çalışan bir döngü

for i in 3...6 {
    print("Döngü 1: \(i)")
}


var sayac = 3
while sayac < 7 {
    print("Döngü 2: \(sayac)")
    sayac += 1
}


// 0 ile 8 arasında 2şer artan

for i in stride(from: 0, through: 8, by: 2){
    print("Döngü 3: \(i)")
    
}

var sayac1 = 0

while sayac1 < 9 {
    print("Döngü 4: \(sayac1)")
    sayac1 += 2 // sayac1 = sayac1 + 2
}


// 8'den 0'a 2şer azalan

for i in stride(from: 8, through: 0, by: -2){
    print("Döngü 5: \(i)")
}

var sayac2 = 8

while sayac2 > -1 {
    print("Döngü 6: \(sayac2)")
    sayac2 -= 2 // sayac2 = sayac2 - 2
}
