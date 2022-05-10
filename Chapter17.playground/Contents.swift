// TASK 1.
var name: String? = "Ray"
// var age: Int = nil
let distance: Float = 26.7
var middleName: String? = nil

// TASK 2.
func divideIfWhole(_ number: Int, by divisor: Int) -> Int? {
    let (quotient, remainder) = number.quotientAndRemainder(dividingBy: divisor)
    if remainder != 0 {
        return nil
    } else {
        return quotient
    }
}

if let count = divideIfWhole(10, by: 2) {
    print("Yep, it divides \(count) times.")
} else {
    print("Not divisible :[.")
}

if let count = divideIfWhole(10, by: 3) {
    print("Yep, it divides \(count) times.")
} else {
    print("Not divisible :[.")
}

// TASK 3.
print("It divides \(divideIfWhole(10, by: 2) ?? 0) times.")
print("It divides \(divideIfWhole(10, by: 3) ?? 0) times.")

// TASK 4.
let number: Int??? = 10

print(number!!!)

if let number = number {
    if let number = number {
        if let number = number {
            print(number)
        }
    }
}

func printNumber(_ number: Int???) {
    guard let number = number else {
        return
    }
    guard let number = number else {
        return
    }
    guard let number = number else {
        return
    }
    print(number)
}

printNumber(number)
