// TASK 1.
let coordinates = (2, 3)

// TASK 2.
let namedCoordinate = (row: 2, column: 3)

// TASK 3.
let character: Character = "🐶"
let string: String = "Dog"
let string2: String = "🐶"

// TASK 4.
let tuple = (day: 15, month: 8, year: 2015)
let day = tuple.day

// TASK 5.
var name = "Matt"
name += " Galloway"

print(name)

// TASK 6.
let tuple2 = (100, 1.5, 10)
let value = tuple2.1

print(type(of: value))

// TASK 7.
let tuple3 = (day: 15, month: 8, year: 2015)
let month = tuple3.month

print(month)

// TASK 8.
let number = 10
let multiplier = 5
let summary = "\(number) multiplied by \(multiplier) equals \(number * multiplier)"

print(summary)

// TASK 9.
let a = 4
let b: Int32 = 100
let c: UInt8 = 12

let sum = a + Int(b) - Int(c)

print(sum)

// TASK 10.
let difference = Double.pi - Double(Float.pi)

print(difference)
