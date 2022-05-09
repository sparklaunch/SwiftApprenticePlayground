import Foundation

// TASK 1.
for index in stride(from: 10, to : 22, by: 4) {
    print(index)
}

for index in stride(from: 10, through: 22, by: 4) {
    print(index)
}

for index in stride(from: 10.0, through: 9.0, by: -0.1) {
    print(index)
}

// TASK 2.
func isNumberDivisible(_ number: Int, by divisor: Int) -> Bool {
    number % divisor == 0
}

func isPrime(_ number: Int) -> Bool {
    guard number > 0 else {
        return false
    }
    let upper = Int(sqrt(Double(number)).rounded(.down))
    for i in 1...upper where i != 1 && i != number {
        if isNumberDivisible(number, by: i) {
            return false
        }
    }
    return true
}

isPrime(6)
isPrime(13)
isPrime(8893)

// TASK 3.
func fibonacci(_ number: Int) -> Int {
    guard number > 0 else {
        return 0
    }
    if number == 1 || number == 2 {
        return 1
    }
    return fibonacci(number - 2) + fibonacci(number - 1)
}

fibonacci(1)
fibonacci(2)
fibonacci(3)
fibonacci(4)
fibonacci(5)
fibonacci(10)
