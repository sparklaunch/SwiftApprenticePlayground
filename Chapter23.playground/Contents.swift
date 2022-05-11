// TASK 1.
func repeatTask(times: Int, task: () -> Void) {
    for _ in 0..<times {
        task()
    }
}

repeatTask(times: 10) {
    print("Swift Apprentice is a great book!")
}

// TASK 2.
func mathSum(length: Int, series: (Int) -> Int) -> Int {
    (1...length).map(series).reduce(0, +)
}

func fibonacci(_ number: Int) -> Int {
    if number == 1 || number == 2 {
        return 1
    }
    return fibonacci(number - 1) + fibonacci(number - 2)
}

mathSum(length: 10) {
    $0 * $0
}
mathSum(length: 10, series: fibonacci)

// TASK 3.
let appRatings = [
    "Calendar Pro": [1, 5, 5, 4, 2, 1, 5, 4],
    "The Messenger": [5, 4, 2, 5, 4, 1, 1, 2],
    "Socialise": [2, 1, 2, 2, 1, 2, 4, 2],
    "Weather+": [1, 1, 2, 1, 1, 3, 3, 2]
]

var averageRatings: [String: Double] = [:]

appRatings.forEach { (appName, ratings) in
    let doubledRatings = ratings.map(Double.init)
    averageRatings.updateValue(doubledRatings.reduce(0.0, +) / Double(ratings.count), forKey: appName)
}

let goodApps = averageRatings.filter { (appName, averageRating) in
    averageRating > 3
}.map { (appName, averageRating) in
    appName
}

print(goodApps)
