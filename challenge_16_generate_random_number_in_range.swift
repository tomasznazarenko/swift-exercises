//Write a function that accepts positive minimum and maximum integers, and returns a random
//number between those two bounds, inclusive.

import Foundation

func generateRandomNumber(min: Int, max: Int) -> Int {
    return Int.random(in: min...max)
}
