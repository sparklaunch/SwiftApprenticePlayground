import Foundation

// TASK 1.
struct Math {
    static func triangleNumber(for n: Int) -> Int {
        (1...n).reduce(0, +)
    }
}

Math.triangleNumber(for: 3)
