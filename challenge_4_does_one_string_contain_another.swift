// Write your own version of the contains() method on String that ignores letter case, and
// without using the existing contains() method.

import Foundation

extension String {
    func fuzzyContains(_ text: String) -> Bool {
        self.range(of: text, options: .caseInsensitive) != nil
    }
}

assert("Hello, world".fuzzyContains("Hello") == true, "Challenge 4 failed.")
assert("Hello, world".fuzzyContains("WORLD") == true, "Challenge 4 failed.")
assert("Hello, world".fuzzyContains("Goodbye") == false, "Challenge 4 failed.")
