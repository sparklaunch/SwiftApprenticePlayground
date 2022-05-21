import Foundation

// TASK 1.
struct Circle {
    var radius = 0.0
    var area: Double {
        get {
            .pi * radius * radius
        }
        set {
            let factor = newValue / area
            radius *= factor.squareRoot()
        }
    }
    mutating func grow(byFactor factor: Int) {
        area *= Double(factor)
    }
}

var circle = Circle(radius: 3.0)
circle.area
circle.grow(byFactor: 3)
circle.area

// TASK 2.
let months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]

struct SimpleDate {
    var month: String
    var day: Int
    var date: Date {
        get {
            let dateComponents = DateComponents(month: (months.firstIndex(of: month) ?? .zero) + 1, day: day)
            let date = Calendar.current.date(from: dateComponents)
            return date ?? .init()
        }
        set {
            let dateComponents = Calendar.current.dateComponents([.month, .day], from: newValue)
            month = months[(dateComponents.month ?? 1) - 1]
            day = dateComponents.day ?? 1
        }
    }
    mutating func advance() {
        date.addTimeInterval(86400)
    }
}

var date = SimpleDate(month: "December", day: 31)
date.advance()
date.month
date.day

// TASK 3.
struct Math {
    static func isEven(_ number: Int) -> Bool {
        number % 2 == .zero
    }
    static func isOdd(_ number: Int) -> Bool {
        number % 2 != .zero
    }
}

Math.isOdd(3)
Math.isOdd(4)
Math.isEven(5)
Math.isEven(6)

// TASK 4.
extension Int {
    func isEven() -> Bool {
        self % 2 == .zero
    }
    func isOdd() -> Bool {
        self % 2 != .zero
    }
}

3.isEven()
4.isEven()
5.isOdd()
6.isOdd()

// TASK 5.
extension Int {
    func primeFactors() -> [Int] {
        var primes: [Int] = []
        var number = self
        for i in 2...Int(number / 2) {
            if number % i == .zero {
                primes.append(i)
                number /= i
            }
        }
        if self % 2 != .zero {
            primes.append(self)
        }
        return primes
    }
}

7.primeFactors()
12.primeFactors()
30.primeFactors()
156.primeFactors()
