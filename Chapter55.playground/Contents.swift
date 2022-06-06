import Foundation

// TASK 1.
let baseString = "abc"
let times = 5

infix operator **

func **(base: String, times: Int) -> String {
    String(repeating: base, count: times)
}

var multipliedString = baseString ** times

print(multipliedString)

// TASK 2.
infix operator **=

func **=(lhs: inout String, rhs: Int) {
    lhs = String(repeating: lhs, count: rhs)
}

multipliedString **= times

print(multipliedString)
