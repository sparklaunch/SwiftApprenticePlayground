import Foundation

// TASK 1.
struct Circle {
    var radius = 0.0
    var circumference: Double {
        Double.pi * radius * 2
    }
}

let circle = Circle(radius: 5)
circle.circumference
