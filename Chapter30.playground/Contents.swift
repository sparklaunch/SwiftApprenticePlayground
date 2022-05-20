import Foundation

// TASK 1.
struct LightBulb {
    static let maxCurrent = 40
    var current = 0 {
        didSet {
            if current > Self.maxCurrent {
                print("The current is too high! Defaulting to zero…")
                current = 0
            }
        }
    }
}

var light = LightBulb()

light.current = 40
light.current = 50
