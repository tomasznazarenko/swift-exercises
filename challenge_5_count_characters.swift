// Write a function that accepts a string, and returns how many times a specific character appears,
// taking case into account. Solve this without using a for-in loop.

import UIKit

func count(character char: Character, in text: String) -> Int {
    return text.filter { $0 == char }.count
}

assert(count(character: "a", in: "The rain in Spain") == 2, "Challenge 5 failed.")
assert(count(character: "i", in: "Mississippi") == 4, "Challenge 5 failed.")
assert(count(character: "s", in: "super Superman") == 1, "Challenge 5 failed.")
assert(count(character: "i", in: "Hello, World") == 0, "Challenge 5 failed.")
