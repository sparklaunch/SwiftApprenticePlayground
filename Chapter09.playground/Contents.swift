// TASK 1.
let firstName = "Matt"
var lastName = ""

if firstName == "Matt" {
    lastName = "Galloway"
} else if firstName == "Ray" {
    lastName = "Wenderlich"
}

let fullName = firstName + " " + lastName

print(fullName)

// TASK 2.
let answer = true && true
let answer2 = false || false
let answer3 = (true && 1 != 2) || (4 > 3 && 100 < 1)
let answer4 = ((10 / 2) > 3) && ((10 % 2) == 0)

// TASK 3.
var nextPosition = 1

repeat {
    let diceRoll = Int.random(in: 1...6)
    nextPosition += diceRoll
    if nextPosition == 3 {
        print("Found a ladder!")
        nextPosition = 15
    }
    if nextPosition == 7 {
        print("Found a ladder!")
        nextPosition = 12
    }
    if nextPosition == 11 {
        print("Yikes, snake!")
        nextPosition = 2
    }
    if nextPosition == 17 {
        print("Yikes, snake!")
        nextPosition = 9
    }
} while nextPosition <= 20

print(nextPosition)

// TASK 4.
enum Month: String, CaseIterable {
    case january, february, march, april, may, june, july, august, september, october, november, december
}
let month: Month = Month.allCases.randomElement() ?? .february
let year = Int.random(in: 1000...3000)
var isLeapYear = false
var daysInMonth = 30

if year.isMultiple(of: 400) && !year.isMultiple(of: 100) && year.isMultiple(of: 4) {
    print("\(year) is a leap year")
    isLeapYear = true
} else {
    print("\(year) is not a leap year")
    isLeapYear = false
}

switch month {
case .january, .march, .may, .july, .august, .october, .december:
    daysInMonth = 31
case .april, .june, .september, .november:
    daysInMonth = 30
case .february:
    daysInMonth = isLeapYear ? 29 : 28
}

print("\(month.rawValue) of \(year) has \(daysInMonth) days.")

// TASK 5.
let number = Int.random(in: 2...10000)
var powerOfTwo = 1

while powerOfTwo <= number {
    powerOfTwo *= 2
}

print(powerOfTwo)

// TASK 6.
let depth = Int.random(in: 1...10)

let triangular = (depth * (depth + 1)) / 2

print(triangular)

// TASK 7.
let depth2 = Int.random(in: 1...10)

var previous = 1
var current = 1

if depth2 <= 2 {
    current = 1
}
else {
    for _ in 0..<(depth2 - 2) {
        let temporary = current
        current += previous
        previous = temporary
    }
}

print("\(depth2)'s Fibonacci: \(current)")
