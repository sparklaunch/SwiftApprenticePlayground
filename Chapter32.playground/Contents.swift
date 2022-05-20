import Foundation

// TASK 1.
struct IceCream {
    var name: String = "Cherry Bullet"
    lazy var ingredients: [String] = {
        ["Cherries", "Sprinkles", "Cinnamons"]
    }()
}

var cherryBulletIceCream = IceCream()
cherryBulletIceCream.ingredients

// TASK 2.
struct FuelTank {
    var level: Double {
        didSet {
            if level < 0 {
                level = 0
            } else if level > 1 {
                level = 1
            }
        }
    }
    var lowFuel: Bool {
        level < 0.1
    }
    init(level: Double) {
        if level < 0 {
            self.level = 0
        } else if level > 1 {
            self.level = 1
        } else {
            self.level = level
        }
    }
}

struct Car {
    let make: String
    let color: String
    let fuelTank: FuelTank
}

let myCar = Car(make: "Chevrolet", color: "Aquamarine", fuelTank: .init(level: 0.3))
myCar.fuelTank.lowFuel

let emptyCar = Car(make: "Nissan", color: "Yellow", fuelTank: .init(level: 0.04))
emptyCar.fuelTank.lowFuel

let overCar = Car(make: "Lamborghini", color: "Red", fuelTank: .init(level: 1.3))
overCar.fuelTank.level
