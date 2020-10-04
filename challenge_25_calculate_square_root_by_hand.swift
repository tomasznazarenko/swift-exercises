// Write a function that returns the square root of a positive integer, rounded down to the nearest
// integer, without using sqrt().

import Foundation

func squareRoot(of input: Int) -> Int {
    return Int(floor(pow(Double(input), 0.5)))
}
