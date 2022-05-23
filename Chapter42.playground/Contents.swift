import Foundation

// TASK 1.
class A {
    init() {
        print("I'm A!")
    }
}

class B: A {
    override init() {
        print("I'm B!")
        super.init()
        print("I'm B!")
    }
}

class C: B {
    override init() {
        print("I'm C!")
        super.init()
        print("I'm C!")
    }
}

let c = C()

// TASK 2.
class D {
    init() {
        print("I'm D!")
    }
    deinit {
        print("D deinitialized…")
    }
}

class E: D {
    override init() {
        print("I'm E!")
        super.init()
        print("I'm E!")
    }
    deinit {
        print("E deinitialized…")
    }
}

class F: E {
    override init() {
        print("I'm F!")
        super.init()
        print("I'm F!")
    }
    deinit {
        print("F deinitialized…")
    }
}

do {
    let f = F()
}

// TASK 3.
class G {
    init() {
        print("I'm G!")
    }
}

class H: G {
    override init() {
        print("I'm H!")
        super.init()
        print("I'm H!")
    }
}

class I: H {
    override init() {
        print("I'm I!")
        super.init()
        print("I'm I!")
    }
}

let i = I()

i as G

// TASK 4.
struct Grade {
    let gradeLetter: String
    let gradePoint: Double
}

enum Sport {
    case baseball
    case basketball
    case football
    case tennis
    case swimming
}

class Person {
    let firstName: String
    let lastName: String
    var fullName: String {
        "\(firstName) \(lastName)"
    }
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
}

class Student: Person {
    var grades: [Grade] = []
    override init(firstName: String, lastName: String) {
        super.init(firstName: firstName, lastName: lastName)
    }
}

class StudentAthlete: Student {
    var sports: [Sport] = []
    override init(firstName: String, lastName: String) {
        super.init(firstName: firstName, lastName: lastName)
    }
}

class StudentBaseballPlayer: StudentAthlete {
    let position: String
    let number: String
    let battingAverage: Double
    init(firstName: String, lastName: String, position: String, number: String, battingAverage: Double) {
        self.position = position
        self.number = number
        self.battingAverage = battingAverage
        super.init(firstName: firstName, lastName: lastName)
    }
}

let aaron = StudentBaseballPlayer(firstName: "Aaron", lastName: "Schrödinger", position: "Pitcher", number: "8", battingAverage: 0.5)
