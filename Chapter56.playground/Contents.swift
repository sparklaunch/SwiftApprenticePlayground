import Foundation
import CoreGraphics

// TASK 1.
extension Array {
    subscript(index index: Int) -> (String, String)? {
        guard let value = self[index] as? Int else {
            return nil
        }
        switch (value >= 0, abs(value) % 2) {
        case (true, 0):
            return ("positive", "even")
        case (true, 1):
            return ("positive", "odd")
        case (false, 0):
            return ("negative", "even")
        case (false, 1):
            return ("negative", "odd")
        default:
            return nil
        }
    }
}

let numbers = [-2, -1, 0, 1, 2]

numbers[index: 0]
numbers[index: 3]

// TASK 2.
extension String {
    subscript(index: Int) -> Character {
        guard self.indices.count > index else {
            fatalError("Index out of range!!")
        }
        return self[self.index(self.startIndex, offsetBy: index)]
    }
}

"Hello, World!!"[3]
"Random Access String"[19]

// TASK 3.
precedencegroup ExponentiationPrecedence {
    associativity: left
    higherThan: MultiplicationPrecedence
}

infix operator **: ExponentiationPrecedence

func **<Type: BinaryFloatingPoint>(lhs: Type, rhs: Int) -> Type {
    guard rhs >= .zero else {
        fatalError("Exponent cannot be below zero!!")
    }
    if rhs == .zero {
        return 1.0
    }
    var result = lhs
    for _ in 1..<rhs {
        result *= lhs
    }
    return result
}

let exponent = 2
let baseDouble = 2.0
var resultDouble = baseDouble ** exponent

let baseFloat: Float = 2.0
var resultFloat = baseFloat ** exponent

let baseCG: CGFloat = 2.0
var resultCG = baseCG ** exponent

// TASK 4.
infix operator **=

func **=<Type: BinaryFloatingPoint>(lhs: inout Type, rhs: Int) {
    guard rhs >= .zero else {
        fatalError("Exponent cannot be below zero!!")
    }
    if rhs == .zero {
        lhs = 1.0
    }
    for _ in 1..<rhs {
        lhs = lhs ** rhs
    }
}

resultDouble **= exponent
resultFloat **= exponent
resultCG **= exponent

resultDouble
resultFloat
resultCG
