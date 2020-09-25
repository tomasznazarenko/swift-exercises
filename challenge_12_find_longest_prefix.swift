// Write a function that accepts a string of words with a similar prefix, separated by spaces, and
// returns the longest substring that prefixes all words.

import Foundation

func find_longest_prefix(in input: String) -> String {
    let words = input.components(separatedBy: " ")
    guard let first = words.first else { return "" }
    
    var currentPrefix = ""
    var longestPrefix = ""
    
    for letter in first {
        currentPrefix.append(letter)
        
        for word in words {
            if !word.hasPrefix(currentPrefix) {
                return longestPrefix
            }
        }
        
        longestPrefix = currentPrefix
    }
    return longestPrefix
}

assert(find_longest_prefix(in: "swift switch swill swim") == "swi", "Challenge 12 failed")
assert(find_longest_prefix(in: "flip flap flop") == "fl", "Challenge 12 failed")
