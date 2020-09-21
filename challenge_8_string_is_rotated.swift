// Write a function that accepts two strings, and returns true if one string is rotation of the other, taking letter case into account.
// Tip: A string rotation is when you take a string, remove some letters from its end, then append them to the front. For example, “swift” rotated by two characters would be “ftswi”.

import Foundation

func isRotated(_ text: String, rotatedText rotated: String) -> Bool {
    guard text.count == rotated.count else { return false }
    let combined = text + text
    return combined.contains(rotated)
}

assert(isRotated("abcde", rotatedText: "eabcd") == true, "challenge 8 failed")
assert(isRotated("abcde", rotatedText: "cdeab") == true, "challenge 8 failed")
assert(isRotated("abcde", rotatedText: "abced") == false, "challenge 8 failed")
assert(isRotated("abc", rotatedText: "a") == false, "challenge 8 failed")
