// Write a function that prints all possible permutations of a given input string.

import Foundation

func find_permutations(of string: String, current: String = "") {
    let length = string.count
    let strArray = Array<Character>(string)
    
    if length == 0 {
        // There's nothing left to re-arrange; print the result.
        print(current)
    } else {
        // Loop through every character.
        for i in 0..<length {
            // get the letters before me
            let left = String(strArray[0..<i])
            
            // get the letters after me
            let right = String(strArray[i+1..<length])
            
            // put those two together and carry on
            find_permutations(of: left + right, current: current + String(strArray[i]))
        }
    }
}

find_permutations(of: "wombat") // The string “wombat” should print 720 permutations (6 x 5 x 4 x 3 x 2 x 1)
