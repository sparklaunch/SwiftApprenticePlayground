// TASK 1.
var counter = 0

while counter < 10 {
    print("counter is \(counter)")
    counter += 1
}

// TASK 2.
var counter2 = 0
var roll = 0

repeat {
    roll = Int.random(in: 0...5)
    counter2 += 1
    print("After \(counter2) rolls, roll is \(roll)")
} while roll != 0
