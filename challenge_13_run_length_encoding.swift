// Write a function that accepts a string as input, then returns how often each letter is repeated in
// a single run, taking case into account.

import Foundation

func getRunLengthEncoding(_ input: String) -> String {
    var output = ""
    var letterCounter = 0
    let letterArray = Array<Character>(input)
    
    for i in 0..<letterArray.count {
        letterCounter += 1
        
        if i + 1 == letterArray.count || letterArray[i] != letterArray[i + 1] {
            output += "\(letterArray[i])\(letterCounter)"
            letterCounter = 0
        }
    }
    return output
}

assert(getRunLengthEncoding("aabbcc") == "a2b2c2", "Challenge 13 failed")
assert(getRunLengthEncoding("aaabaaabaaa") == "a3b1a3b1a3", "Challenge 13 failed")
assert(getRunLengthEncoding("aaAAaa") == "a2A2a2", "Challenge 13 failed")
