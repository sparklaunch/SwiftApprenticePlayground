import Foundation

// TASK 1.
protocol Area {
    var area: Double { get }
}

// TASK 2.
struct Square: Area {
    var area: Double {
        width * width
    }
    let width: Double
}

struct Triangle: Area {
    var area: Double {
        width * height / 2
    }
    let width: Double
    let height: Double
}

struct Circle: Area {
    var area: Double {
        .pi * radius * radius
    }
    let radius: Double
}

// TASK 3.
let circle = Circle(radius: 3)
let square = Square(width: 5)
let triangle = Triangle(width: 3, height: 4)

let shapes = [circle, square, triangle].compactMap {
    $0 as? Area
}
