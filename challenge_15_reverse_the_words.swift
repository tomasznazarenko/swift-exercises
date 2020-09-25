// Write a function that returns a string with each of its words reversed but in the original order, without using a loop.

import Foundation

func reverseWords(_ string: String) -> String {
    return string.components(separatedBy: " ")
        .map { String($0.reversed()) }
        .joined(separator: " ")
}

assert(reverseWords("Swift Challenges") == "tfiwS segnellahC" , "Challenge 15 failed.")
assert(reverseWords("The quick brown fox") == "ehT kciuq nworb xof" , "Challenge 15 failed.")
