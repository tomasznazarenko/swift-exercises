// Write a function that accepts two strings, and returns true if they are identical in length but
// have no more than three different letters, taking case and string order into account.

import Foundation

func isSimilar(_ first: String, to second: String) -> Bool {
    guard first.count == second.count else {
        return false
    }
    
    let firstToArray = Array<Character>(first)
    let secondToArray = Array<Character>(second)
    var differences = 0

    
    for (index, letter) in firstToArray.enumerated() {
        if letter != secondToArray[index] {
            differences += 1
        }
        if differences > 3 {
            return false
        }
    }
    
    return true
}

assert(isSimilar("Clamp", to: "Cramp") == true, "Challenge 11 failed")
assert(isSimilar("Clamp", to: "Crams") == true, "Challenge 11 failed")
assert(isSimilar("Clamp", to: "Grams") == true, "Challenge 11 failed")
assert(isSimilar("Clamp", to: "Grans") == false, "Challenge 11 failed")
assert(isSimilar("Clamp", to: "Clam") == false, "Challenge 11 failed")
assert(isSimilar("clamp", to: "maple") == false, "Challenge 11 failed")
