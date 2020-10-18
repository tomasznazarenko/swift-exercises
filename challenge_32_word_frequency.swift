// Write a function that accepts a filename on disk, loads it into a string,
// then returns the frequency of a word in that string, taking letter case into account.
//
// A file containing “Hello, world!” should return 1 for “Hello”
//
// A file containing “Hello, world!” should return 0 for “Hello,” – note the comma at the end.
//
// A file containing “The rain in Spain falls mainly on the plain” should return 1 for Spain,
// and 1 for “in”; the “in” inside rain, Spain, mainly, and plain does not count because it’s not
// a word by itself.
//
// A file containing “I’m a great coder” should return 1 for “I’m”.

import Foundation

func count(word wordToCount: String, in filename: String) -> Int {
    guard let inputString = try? String(contentsOfFile: filename) else { return 0 }
    var nonletters = CharacterSet.letters.inverted
    nonletters.remove("'")

    let allWords = inputString.components(separatedBy: nonletters)
    let wordSet = NSCountedSet(array: allWords)

    return wordSet.count(for: wordToCount)
}
