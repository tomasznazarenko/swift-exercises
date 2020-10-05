// Write a function that accepts a filename on disk, then prints its last N lines in reverse order, all on a single line separated by commas.

import Foundation

func printReversed(filename: String, lineCount: Int) {
    guard let fileURL = Bundle.main.url(forResource: "File", withExtension: nil),
          let input = try? String(contentsOf: fileURL) else {
        print("error")
        return
    }
    var lines = input.components(separatedBy: "\n")
    guard lines.count > 0 else { return }
    
    lines.reverse()
    
    var output = [String]()

    for i in 0...min(lines.count, lineCount) {
        output.append(lines[i])
    }
    
    print(output.joined(separator: ", "))
}

printReversed(filename: "File", lineCount: 3)
