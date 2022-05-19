import Foundation

// TASK 1.
struct Fruit: Identifiable {
    let id: UUID = .init()
    let name: String
    let weight: Double
}

extension Fruit: Hashable {
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}

let apple = Fruit(name: "Apple", weight: 0.3)
let pear = Fruit(name: "Pear", weight: 0.5)
let orange = Fruit(name: "Orange", weight: 0.4)

struct Facility {
    var truck: [Fruit] = []
    var inventory: [Fruit: Int] = [:]
    mutating func createTruck(from fruits: Fruit...) {
        var truck: [Fruit] = []
        for _ in 1...100 {
            truck.append(fruits.randomElement() ?? apple)
        }
        self.truck = truck
    }
    mutating func sortFruits() {
        var inventory: [Fruit: Int] = [:]
        for fruit in truck {
            inventory[fruit, default: .zero] += 1
        }
        self.inventory = inventory
    }
    func printWeights() {
        for (fruit, count) in inventory {
            let weight = fruit.weight * Double(count)
            print("There are \(count) \(fruit.name.lowercased())s in the inventory and they weigh \(weight.formatted())kg")
        }
    }
}

var facility = Facility()

facility.createTruck(from: apple, pear, orange)
facility.sortFruits()
facility.printWeights()

// TASK 2.
struct TShirt {
    let size: ClothingSize
    let color: ClothingColor
    let material: ClothingMaterial
    func calculateCost() -> Double {
        let basePrice = 10.0
        return basePrice + 10 * size.rawValue + 10 * material.rawValue
    }
}

enum ClothingSize: Double, CaseIterable {
    case small = 0.7
    case medium = 1.0
    case large = 1.2
    case extraLarge = 1.5
    case extraExtraLarge = 1.8
}

enum ClothingColor: String, CaseIterable {
case blue = "Blue"
case brown = "Brown"
case pink = "Pink"
}

enum ClothingMaterial: Double, CaseIterable {
    case wool = 0.8
    case denim = 1.8
    case polyesther = 0.5
    case nylon = 1.5
}

let kinkyShirt = TShirt(size: .medium, color: .pink, material: .nylon)
print("Kinky Shirt costs $\(kinkyShirt.calculateCost()).")

let plainShirt = TShirt(size: .large, color: .blue, material: .polyesther)
print("Plain Shirt costs $\(plainShirt.calculateCost()).")

// TASK 3.
struct Location {
    let x: Int
    let y: Int
    func from(offsetBy offset: Location) -> Self {
        return Self.init(x: x + offset.x, y: y + offset.y)
    }
}

extension Location: Equatable {
    static func ==(lhs: Self, rhs: Self) -> Bool {
        return lhs.x == rhs.x && lhs.y == rhs.y
    }
}

struct Ship {
    let origin: Location
    let direction: Direction
    let length: Int
    var occupiedGrids: [Location] {
        var grids: [Location] = [origin]
        for i in 1..<length {
            switch direction {
            case .horizontal:
                grids += [origin.from(offsetBy: .init(x: i, y: .zero))]
            case .vertical:
                grids += [origin.from(offsetBy: .init(x: .zero, y: i))]
            }
        }
        return grids
    }
    func guess(_ location: Location, for ship: Ship) {
        if ship.occupiedGrids.contains(where: { $0 == location }) {
            print("Hit!")
        } else {
            print("Miss!")
        }
    }
}

enum Direction {
    case horizontal
    case vertical
}

let ship = Ship(origin: .init(x: 3, y: 3), direction: .horizontal, length: 5)
let enemyShip = Ship(origin: .init(x: 8, y: 8), direction: .vertical, length: 3)

ship.guess(.init(x: 5, y: 5), for: enemyShip)
ship.guess(.init(x: 8, y: 10), for: enemyShip)
