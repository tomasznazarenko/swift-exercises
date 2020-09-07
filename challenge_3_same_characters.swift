// Write a function that accepts two String parameters, and returns true if they contain the same
// characters in any order taking into account letter case.

import Foundation

func has(_ text_1: String, hasSameCharactersAs text_2: String) -> Bool {
    text_1.sorted() == text_2.sorted()
}

assert(has("abca", hasSameCharactersAs: "abca") == true, "Challenge 3 failed.")
assert(has("abc", hasSameCharactersAs: "cba") == true, "Challenge 3 failed.")
assert(has("a1 b2", hasSameCharactersAs: "b1 a2") == true, "Challenge 3 failed.")
assert(has("abc", hasSameCharactersAs: "abca") == false, "Challenge 3 failed.")
assert(has("abc", hasSameCharactersAs: "ABC") == false, "Challenge 3 failed.")
assert(has("abc", hasSameCharactersAs: "cbAa") == false, "Challenge 3 failed.")
assert(has("abcc", hasSameCharactersAs: "abca") == false, "Challenge 3 failed.")
