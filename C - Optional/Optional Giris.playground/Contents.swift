import UIKit

/*var str:String?
str = "Ahmet"

if str != nil {
    print(str!)
} else{
    print("str nil değer içeriyor")
}*/

/*var str:String?
str = "merhaba"
if let temp = str {
    print(temp)
} else {
    print("str nil değer içeriyor")
}*/

/*var yazi = "48"
if let sayi = Int(yazi) {
    print(sayi)
} else {
    print("String ifade sayısal veriden farklı içeriğe sahip")
}*/

var str:String?
str = "merhaba"

if var temp = str{
    print(temp)
    temp = "hello"
    print(temp)
} else {
    print("str nil değer içeriyor")
}
