// Write a function that returns true if it is given a string that is an English pangram, ignoring
// letter case.
// Tip: A pangram is a string that contains every letter of the alphabet at least once.

import Foundation

func isPanagram(_ text: String) -> Bool {
    let letters = Set(text.lowercased()).filter { ("a"..."z").contains($0) }
    let lettersInAlphabetCount = 26
    return letters.count == lettersInAlphabetCount
}

assert(isPanagram("The quick brown fox jumps over the lazy dog") == true, "challenge 9 failed")
assert(isPanagram("The quick brown fox jumped over the lazy dog") == false, "challenge 9 failed")
