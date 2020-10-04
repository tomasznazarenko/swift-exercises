// Create a function that accepts any positive integer and
// returns the next highest and next lowest number that has the same number of ones in its binary representation.
// If either number is not possible, return nil for it.

import Foundation

func countBinaryOnes(_ number: Int) -> (nextHighest: Int?, nextLowest: Int?) {
    
    func ones(in number: Int) -> Int{
        let currentBinary = String(number, radix: 2)
        return currentBinary.filter { $0 == "1" }.count
    }
    
    let targetOnes = ones(in: number)
    var nextHighest: Int? = nil
    var nextLowest: Int? = nil
    
    for i in number + 1...Int.max {
        if ones(in: i) == targetOnes {
            nextHighest = i
            break
        }
    }
    
    for i in (0 ..< number).reversed() {
        if ones(in: i) == targetOnes {
            nextLowest = i
            break
        }
    }
    
    return (nextHighest, nextLowest)
}

assert(countBinaryOnes(12) == (17, 10), "Challenge 21 failed")
assert(countBinaryOnes(28) == (35, 26), "Challenge 21 failed")
