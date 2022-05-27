import Foundation

// TASK 1.
protocol Cleanable {
    func clean() -> Void
}

protocol Feedable {
    func feed() -> Void
}

protocol Cageable: Cleanable {
    var isCaged: Bool { get set }
}

protocol Tankable: Cleanable {
    var isInTank: Bool { get set }
}

protocol Walkable {
    func exercise() -> Void
}

struct Dog: Feedable, Walkable {
    func feed() {
        print("Feeding dogs with doggy gums…")
    }
    func exercise() {
        print("Walking dogs in the park…")
    }
}

struct Cat: Feedable, Walkable {
    func feed() {
        print("Feeding cats with fish…")
    }
    func exercise() {
        print("Walking cats in the park…")
    }
}

struct Fish: Feedable, Tankable {
    var isInTank = true
    func feed() {
        print("Feeding fish with fish feeds…")
    }
    func clean() {
        print("Cleaning the fish tank…")
    }
}

struct Bird: Feedable, Cageable {
    var isCaged = true
    func feed() {
        print("Feeding birds with fish…")
    }
    func clean() {
        print("Cleaning the bird cage…")
    }
}

// TASK 2.
let feedableAnimals: [Feedable] = [Dog(), Cat(), Fish(), Bird()]
let cageableAnimals: [Cageable] = [Bird(), Bird(), Bird()]
let cleanableAnimals: [Cleanable] = [Bird(), Fish()]
let walkableAnimals: [Walkable] = [Dog(), Cat()]
let tankableAnimals: [Tankable] = [Fish(), Fish(), Fish()]

// TASK 3.
for feedableAnimal in feedableAnimals {
    feedableAnimal.feed()
}

for cageableAnimal in cageableAnimals {
    print(cageableAnimal.isCaged ? "It's caged. It can't fly out." : "It's free!")
}

for cleanableAnimal in cleanableAnimals {
    cleanableAnimal.clean()
}

for walkableAnimal in walkableAnimals {
    walkableAnimal.exercise()
}

for tankableAnimal in tankableAnimals {
    print(tankableAnimal.isInTank ? "It's safely inside a tank. It can't hurt people." : "It's free!")
}
