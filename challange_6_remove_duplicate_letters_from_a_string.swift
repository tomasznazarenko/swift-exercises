// Write a function that accepts a string as its input, and returns the same string just with duplicate letters removed.

import Foundation

func removeDuplicateLetters(from text: String) -> String {
    let no_duplicates = NSOrderedSet(array: Array(text))
    let characters = no_duplicates.array as! Array<Character>
    return String(characters)
}

assert(removeDuplicateLetters(from: "wombat") == "wombat", "challange 6 failed")
assert(removeDuplicateLetters(from: "hello") == "helo", "challange 6 failed")
assert(removeDuplicateLetters(from: "Mississippi") == "Misp", "challange 6 failed")
