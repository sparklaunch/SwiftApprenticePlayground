import Foundation

struct Location {
    let x: Int
    let y: Int
}

// TASK 1.
func distance(from source: Location, to target: Location) -> Double {
    let distanceX = Double(source.x - target.x)
    let distanceY = Double(source.y - target.y)
    return (distanceX * distanceX + distanceY * distanceY).squareRoot()
}

// TASK 2.
struct DeliveryArea {
    let center: Location
    var radius: Double = 2.5
    func contains(_ location: Location) -> Bool {
        let distanceFromCenter = distance(from: center, to: location)
        return distanceFromCenter < radius
    }
}

// TASK 3.
extension DeliveryArea {
    func overlaps(with area: DeliveryArea) -> Bool {
        let linearDistance = distance(from: center, to: area.center)
        return radius + area.radius < linearDistance
    }
}
