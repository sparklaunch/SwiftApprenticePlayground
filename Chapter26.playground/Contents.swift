import Foundation

// TASK 1.
struct Location {
    let x: Int
    let y: Int
}

struct DeliveryArea {
    let center: Location
    var radius: Double = 2.5
}

let restaurantArea = DeliveryArea(center: .init(x: 3, y: 3))
let otherRestaurantArea = DeliveryArea(center: .init(x: 8, y: 8))

func isInDeliveryRange(location: Location) -> Bool {
    let deliveryDistance = distance(from: location, to: restaurantArea.center)
    let secondDeliveryDistance = distance(from: location, to: otherRestaurantArea.center)
    return deliveryDistance < restaurantArea.radius || secondDeliveryDistance < otherRestaurantArea.radius
}

func distance(from source: Location, to target: Location) -> Double {
    let distanceX = Double(source.x - target.x)
    let distanceY = Double(source.y - target.y)
    return (distanceX * distanceX + distanceY * distanceY).squareRoot()
}

isInDeliveryRange(location: .init(x: 5, y: 5))
isInDeliveryRange(location: .init(x: 3, y: 4))
