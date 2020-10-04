// Create a function that subtracts one positive integer from another, without using -.

import Foundation

func substract(_ substract: Int, from: Int)  -> Int {
    return from + (~substract + 1)
}

assert(substract(5, from: 9) == 4, "Challenge failed")
assert(substract(10, from: 30) == 20, "Challenge failed")
