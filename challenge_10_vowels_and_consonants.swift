// Given a string in English, return a tuple containing the number of vowels and consonants.
// Tip: Vowels are the letters, A, E, I, O, and U; consonants are the letters B, C, D, F, G, H, J, K, L, M, N, P, Q, R, S, T, V, W, X, Y, Z.

import Foundation

func count_vowels_consonant(in input: String) -> (vowels: Int, consonants: Int) {
    let vowels = "AEIOU".lowercased()
    let consonants = "BCDFGHJKLMNPQRSTVWXYZ".lowercased()
    
    var vowelCount: Int = 0
    var consonantCount: Int = 0
    
    for letter in input.lowercased() {
        if vowels.contains(letter) {
            vowelCount += 1
        }
        else if consonants.contains(letter) {
            consonantCount += 1
        }
    }
    
    return (vowelCount, consonantCount)
}

assert(count_vowels_consonant(in: "Swift Coding Challenges") == (6, 15), "Challenge 10 failed")
assert(count_vowels_consonant(in: "Mississippi") == (4, 7), "Challenge 10 failed")
