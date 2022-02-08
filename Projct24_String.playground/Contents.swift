import UIKit


extension String {
    func splitToLines() -> [String] {
        // makes String.subsequence.  Will loop and make [String]
        let splits = self.split(separator: "\n")
        var output = [String]()
        for split in splits {
            output.append(String(split))
        }
        return output
    }
}


let string = "this\nis\na\ntest"
string.splitToLines()

