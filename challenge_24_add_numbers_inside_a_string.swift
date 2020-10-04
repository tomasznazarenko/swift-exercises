// Given a string that contains both letters and numbers, write a function that pulls out all the
// numbers then returns their sum.

import Foundation

func addNumbers(inside string: String) -> Int {
    var currentNumber = ""
    var sum = 0
    
    for letter in string {
        let stringLetter = String(letter)
        
        if Int(stringLetter) != nil {
            currentNumber += stringLetter
        } else {
            sum += Int(currentNumber) ?? 0
            currentNumber = ""
        }
    }
    
    sum += Int(currentNumber) ?? 0
    return sum
}

assert(addNumbers(inside: "a1b2c3") == 6, "Challenge failed")
assert(addNumbers(inside: "a10b20c30") == 60, "Challenge failed")
assert(addNumbers(inside: "h8ers") == 8, "Challenge failed")
