import Foundation

// TASK 1.
struct TV {
    let width: Double
    let height: Double
    var diagonal: Int {
        return Int((width * width + height * height).squareRoot().rounded())
    }
}

let mine = TV(width: 24, height: 21)
mine.diagonal
