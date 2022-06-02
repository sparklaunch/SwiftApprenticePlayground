import Foundation

// TASK 1.
protocol Pet {
    var name: String { get set }
}

class Cat: Pet {
    var name: String
    init(name: String) {
        self.name = name
    }
}

class Dog: Pet {
    var name: String
    init(name: String) {
        self.name = name
    }
}

class Keeper<Animal: Pet> {
    private var pets: [Animal] = []
    var name: String
    init(name: String) {
        self.name = name
    }
    func lookAfter(_ pets: [Animal]) {
        self.pets += pets
    }
    func countAnimals() -> Int {
        self.pets.count
    }
    func animalAtIndex(_ index: Int) -> Animal {
        self.pets[index]
    }
}

let christine = Keeper<Cat>(name: "Christine")

christine.lookAfter([.init(name: "Wyatt"), .init(name: "Rusty"), .init(name: "Corgi")])
christine.lookAfter(Array<Cat>(repeating: .init(name: "CloneCat"), count: 50))

christine.countAnimals()

christine.animalAtIndex(50)
