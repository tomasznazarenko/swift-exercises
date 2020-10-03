// Write a function that counts from 1 through 100, and prints “Fizz” if the counter is
// evenly divisible by 3, “Buzz” if it’s evenly divisible by 5,
// “Fizz Buzz” if it’s even divisible by three and five, or the counter number for all other cases.

import Foundation

func fizzBuzz() {
    for n in 1...100 {
        switch (n % 3 == 0, n % 5 == 0) {
        case (true, false):
            print("Fizz")
        case (false, true):
            print("Buzz")
        case (true, true):
            print("Fizz Buzz")
        default:
            print(String(n))
        }
    }
}

fizzBuzz()
