import UIKit
/*
let queue = DispatchQueue(label: "etiket")
queue.sync {                // sync olduğu için önce thread, sonra main çalışır
    for i in 1...10 {
        print("Thread: \(i)")
    }
}

for i in 100...110 {
    print("Main: \(i)")     // Önce thread, sonra main çalıştı. .async olsa karma çalışacaktı
}
*/

// Öncelik sırasını değiştirelim
let queue1 = DispatchQueue(label: "etiket1",qos: DispatchQoS.userInitiated) // yüksek öncelikli
let queue2 = DispatchQueue(label: "etiket2",qos: DispatchQoS.background)   // düşük     ""

queue1.async {
    for i in 1...10 {
        print("A: \(i)")    // A önceliği yüksek olduğundan A çoğunlukla önce çalıştı
    }
}
queue2.async {
    for i in 100...110 {    // B önceliği düşük olduğundan B sonra çalıştı
        print("B: \(i)")
    }
}

for i in 1000...1010 {
    print("Main: \(i)")     // Main en öncelikli olduğu için çoğunlukla önce çalışır
}
