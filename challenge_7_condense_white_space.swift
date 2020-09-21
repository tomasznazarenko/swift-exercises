// Write a function that returns a string with any consecutive spaces replaced with a single space.

import Foundation

func condenseWhiteSpace(in text: String) -> String {
    return text.replacingOccurrences(of: " +", with: " ", options: .regularExpression, range: nil)
}

assert(condenseWhiteSpace(in: "a   b   c") == "a b c", "challange 7 failed")
assert(condenseWhiteSpace(in: "    a") == " a", "challange 7 failed")
assert(condenseWhiteSpace(in: "abc") == "abc", "challange 7 failed")
