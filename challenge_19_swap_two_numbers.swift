// Swap two positive variable integers, a and b, without using a temporary variable.

import Foundation

var a = 1
var b = 2

(a, b) = (b, a)

print(a)
print(b)


// swap(&a, &b)


// a = a + b  // 3
// b = a - b  // 1
// a = a - b  // 2
