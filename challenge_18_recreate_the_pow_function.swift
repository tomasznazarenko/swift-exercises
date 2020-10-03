// Create a function that accepts positive two integers, and raises the first to the power of the
// second.

import Foundation

func raise(_ number: Int, toPower power: Int) -> Int {
    guard number > 0, power > 0 else { return 0 }
    var returnValue = number
    
    (1...power).forEach { _ in
        returnValue *= number
    }
    
    return returnValue
}

//func raise(_ number: Int, toPower power: Int) -> Int {
//    guard power > 0 else { return 0 }
//    if power == 1 { return number }
//
//    return number * raise(number, toPower: power - 1)
//}

assert(raise(4, toPower: 3) == 64, "Cahllenge 18 failed.")
assert(raise(2, toPower: 8) == 256, "Cahllenge 18 failed.")
