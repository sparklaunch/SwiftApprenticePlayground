// TASK 1.

import Darwin
let myAge = 31
var dogs = 0

dogs += 1

// TASK 2.
var age: Int = 16

print(age)

age = 30

print(age)

// TASK 3.
let x: Int = 46
let y: Int = 10

let answer1: Int = (x * 100) + y
let answer2: Int = (x * 100) + (y * 100)
let answer3: Int = (x * 100) + (y / 10)

print(answer1)
print(answer2)
print(answer3)

// TASK 4.
let withoutParentheses = 8 - 4 * 2 + 6 / 3 * 4
let withParentheses = ((8 - (4 * 2)) + ((6 / 3) * 4))

print(withoutParentheses)
print(withParentheses)

// TASK 5.
let rating1 = 3.1
let rating2 = 5.2
let rating3 = 4.4

let averageRating = (rating1 + rating2 + rating3) / 3

print(averageRating)

// TASk 6.
let voltage = 220.0
let current = 15.0

let power = voltage * current

print(power)

// TASk 7.
let resistance = power / current.squareRoot()

print(resistance)

// TASK 8.
let randomNumber = arc4random()

let diceRoll = randomNumber % 6 + 1

print(diceRoll)

// TASK 9.
let a = 1.0
let b = 4.0
let c = 3.0

let root1 = (-b + sqrt(b * b - 4 * a * c)) / (2 * a)
let root2 = (-b - sqrt(b * b - 4 * a * c)) / (2 * a)

print(root1)
print(root2)
