// Write a function that accepts a String as its only parameter, and returns true if the string reads
// the same when reversed, ignoring case.


import Foundation

func isPalindrome(_ text: String) -> Bool {
    String(text.lowercased().reversed()) == text.lowercased()
}

assert(isPalindrome("rotator") == true, "Challenge 2 failed")
assert(isPalindrome("Rats live on no evil star") == true, "Challenge 2 failed")
assert(isPalindrome("Never odd or even") == false, "Challenge 2 failed")
assert(isPalindrome("Hello, world") == false, "Challenge 2 failed")
