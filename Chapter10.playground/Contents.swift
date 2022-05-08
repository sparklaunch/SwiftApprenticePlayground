import Foundation

// TASK 1.
let range = 1...10

for number in range {
    print(number * number)
}

// TASK 2.
var count = 1

while count <= 10 {
    print(sqrt(Double(count)))
    count += 1
}

// TASK 3.
var sum = 0

for row in 0..<8 where row % 2 != 0 {
    for column in 0..<8 {
        sum += row * column
    }
}

print(sum)
