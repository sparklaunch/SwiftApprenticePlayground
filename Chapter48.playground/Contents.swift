import Foundation

// TASK 1.
enum Coin: Int {
    case penny = 1
    case nickel = 5
    case dime = 10
    case quarter = 25
}

let coinPurse: [Coin] = [.penny, .quarter, .nickel, .dime, .penny, .dime, .quarter]

func calculateCents(in purse: [Coin]) -> Int {
    purse.reduce(into: 0) { result, coin in
        result += coin.rawValue
    }
}

calculateCents(in: coinPurse)

// TASK 2.
enum Month: Int {
    case january = 1, february, march, april, may, june, july, august, september, october, november, december
    var monhtsUntilSummer: Int {
        let juneRawValue = Self.june.rawValue
        let selfRawValue = self.rawValue
        if juneRawValue < selfRawValue {
            return juneRawValue - selfRawValue + 12
        } else {
            return juneRawValue - selfRawValue
        }
    }
}

let march = Month.march
march.monhtsUntilSummer

let november = Month.november
november.monhtsUntilSummer

let july = Month.july
july.monhtsUntilSummer

// TASK 3.
enum Direction {
    case north
    case south
    case east
    case west
}

let movements: [Direction] = [.north, .north, .west, .south, .west, .south, .south, .east, .east, .south, .east]

var location = (x: 0, y: 0)

movements.forEach { direction in
    switch direction {
    case .north:
        location.y += 1
    case .south:
        location.y -= 1
    case .east:
        location.x += 1
    case .west:
        location.x -= 1
    }
}

print(location)
