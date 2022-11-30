import UIKit

// break

for i in 1...5 {
    if i == 3 {
        break    // çalışmayı keser
    }
    print("Döngü 1: \(i)")
}

// continue

for i in 1...5 {
    if i == 3 {
        continue   // şartın sağlandığı sayıyı pas geçer.
    }
    print("Döngü 2: \(i)")
}
