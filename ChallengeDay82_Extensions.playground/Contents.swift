import UIKit



extension Int {
    // Extend Int with a times() method that runs a closure as many times as the number is high. For example, 5.times { print("Hello!") } will print “Hello” five times.
    func times(_ closure: () -> Void) {
        for _ in 0..<self {
            closure()
        }
    }
}

let myInt = 5
myInt.times {
    print("hi")
}


// Extend Array so that it has a mutating remove(item:) method. If the item exists more than once, it should remove only the first instance it finds. Tip: you will need to add the Comparable constraint to make this work!

extension Array where Element: Comparable {
    mutating func remove(item: Element) {
        // removes first instance of item if it exists
        if let idx = self.firstIndex(of: item) {
            self.remove(at: idx)
        }
    }
}

var myArr = ["a", "b", "c", "d"]
myArr.remove(item: "b")
