// Write a function that accepts an integer as its parameter and returns true if the number is prime.
// A number is considered prime if it is greater than one and has no positive divisors other than 1 and itself.

import Foundation

func isPrime(_ number: Int) -> Bool {
    guard number > 1 else { return false }
    
    for divisor in 2..<number {
        if number % divisor == 0 {
            return false
        }
    }
    
    return true
}

//func isPrimie(_ number: Int) -> Bool {
//    guard number >= 2 else { return false }
//    guard number != 2 else { return true }
//
//    let max = Int(ceil(sqrt(Double(number))))
//
//    for i in 2 ... max {
//        if number % i == 0 {
//            return false
//        }
//    }
//
//    return true
//}

assert(isPrime(11) == true, "Challenge 20 has failed.")
assert(isPrime(13) == true, "Challenge 20 has failed.")
assert(isPrime(4) == false, "Challenge 20 has failed.")
assert(isPrime(9) == false, "Challenge 20 has failed.")
assert(isPrime(16777259) == true, "Challenge 20 has failed.")
