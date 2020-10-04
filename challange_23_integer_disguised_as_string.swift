//Write a function that accepts a string and returns true if it contains only numbers, i.e. the digits 0 through 9.

import Foundation

func isNumbersOnly(text: String) -> Bool {
    return text.rangeOfCharacter(from: CharacterSet.decimalDigits.inverted) == nil
}

assert(isNumbersOnly(text: "01010101") == true, "Challenge failed")
assert(isNumbersOnly(text: "123456789") == true, "Challenge failed")
assert(isNumbersOnly(text: "9223372036854775808") == true, "Challenge failed")
assert(isNumbersOnly(text: "1.01") == false, "Challenge failed")
