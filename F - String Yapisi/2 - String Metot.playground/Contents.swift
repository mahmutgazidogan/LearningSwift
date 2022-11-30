import UIKit

var str1 = "Merhaba"

if str1.contains("e"){      // contains ile stringde harf veya hece aradık
    print("içeriyor")
} else {
    print("içermiyor!")
}


str1.insert("w", at: str1.index(str1.startIndex,offsetBy: 4))   // Stringin 4. indeksine w ekledik
print(str1)

str1.remove(at: str1.index(str1.startIndex,offsetBy: 2))    // 2. indeksi yani r'yi sildik
print(str1)
