import Foundation

// Difficulty: Easy
// Write a function that accepts a String as its only parameter, and returns true if the string has
// only unique letters, taking letter case into account.

func challange1(input: String) -> Bool {
    return input.count == Set(input).count
}

assert(challange1(input: "No duplicates") == true, "Challange 1 failed")
assert(challange1(input: "abcdefghijklmnopqrstuvwxyz") == true, "Challange 1 failed")
assert(challange1(input: "AaBbCc") == true, "Challange 1 failed")
assert(challange1(input: "Hello, world") == true, "Challange 1 failed")
