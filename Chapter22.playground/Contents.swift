// TASK 1.
let names = ["Bob", "Anne", "Todd", "Ben", "Dan", "Denis", "Janice"]

let concatenated = names.reduce(into: "") { (result, this) in
    result += this
}

print(concatenated)

// TASK 2.
let concatenatedLongNames = names.filter { $0.count > 4 }.reduce(into: "") { (result, this) in
    result += this
}

print(concatenatedLongNames)

// TASK 3.
let namesAndAges = [
    "Jinwook": 31,
    "Janice": 33,
    "Anne": 37,
    "Denis": 28
]

let youngPeople = namesAndAges.filter { (name, age) in
    age < 18
}

print(youngPeople)

// TASK 4.
let adultNames = namesAndAges.filter { (name, age) in
    age >= 18
}.map { (name, age) in
    name
}

print(adultNames)
