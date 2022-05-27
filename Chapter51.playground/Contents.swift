import Foundation

// TASK 1.
class Keeper<Animal> {
    var name: String
    var morningCare: Animal
    var afternoonCare: Animal
    init(name: String, morningCare: Animal, afternoonCare: Animal) {
        self.name = name
        self.morningCare = morningCare
        self.afternoonCare = afternoonCare
    }
}

class Dog {
    let name: String
    init(name: String) {
        self.name = name
    }
}

let anna = Keeper(name: "Anna", morningCare: Dog(name: "Rusty"), afternoonCare: Dog(name: "Wyatt"))

// TASK 2.
class Cat {
    let name: String
    init(name: String) {
        self.name = name
    }
}

// let emma = Keeper(name: "Emma", morningCare: Dog(name: "Rusty"), afternoonCare: Cat("Corgi"))

// TASK 3.
let todd = Keeper(name: "Todd", morningCare: "Rusty", afternoonCare: "Wyatt")
