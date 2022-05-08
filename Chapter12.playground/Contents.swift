// TASK 1.
var sum = 0

for i in 0...5 {
    sum += i
}

print(sum)

// TASK 2.
var aLotOfAs = ""

while aLotOfAs.count < 10 {
    aLotOfAs += "a"
}

print(aLotOfAs.count)

// TASK 3.
let coordinates = [(1, 5, 0), (2, 2, 2), (3, 0, 1), (3, 2, 5), (0, 2, 4)]

for coordinate in coordinates {
    switch coordinate {
    case let (x, y, z) where x == y && y == z:
        print("x = y = z")
    case (_, _, 0):
        print("On the x/y plane.")
    case (_, 0, _):
        print("On the x/z plane.")
    case (0, _, _):
        print("On the y/z plane.")
    default:
        print("Nothing espécial")
    }
}

// TASK 4.
let neverEmpty = 0...0

for _ in neverEmpty {
    print("A closed range can never be empty.")
}

// TASK 5.
for i in 0...10 {
    print("\(10 - i)…")
}

print("Boom!!")

// TASK 6.
for i in 0...10 {
    print(Double(i) / 10.0)
}
