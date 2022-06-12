import Foundation

// TASK 1.
enum ConversionError: Error {
    case notValidNumber
}

extension Int {
    static func evenFrom(string: String) throws -> Int {
        guard let number = Double(string) else {
            throw ConversionError.notValidNumber
        }
        return Int((number / 2).rounded(.down) * 2)
    }
}

do {
    try Int.evenFrom(string: "6")
    try Int.evenFrom(string: "7.2")
    try Int.evenFrom(string: "8.0")
    try Int.evenFrom(string: "Wow")
} catch ConversionError.notValidNumber {
    print("The number is not valid.")
}

// TASK 2.
enum DivisionError: Error {
    case notDivisible(by: Int)
}

func divide(_ number: Int, by another: Int) throws -> Int {
    switch number.quotientAndRemainder(dividingBy: another) {
    case (_, let remainder) where remainder != 0:
        throw DivisionError.notDivisible(by: another)
    case (let quotient, _):
        return quotient
    }
}

do {
    try divide(6, by: 3)
    try divide(7, by: 3)
} catch DivisionError.notDivisible(by: let number) {
    print("The number is not divisible by \(number)!!")
}
