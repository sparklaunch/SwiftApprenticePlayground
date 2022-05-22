import Foundation

// TASK 1.
class Person {
    let name: String
    init(name: String) {
        self.name = name
    }
}

func memberOf(person: Person, group: [Person]) -> Bool {
    group.contains {
        $0 === person
    }
}

let group: [Person] = [
    .init(name: "James"),
    .init(name: "Amanda"),
    .init(name: "Joey"),
    .init(name: "Ted"),
    .init(name: "Jake")
]

let john: Person = .init(name: "John")

var anotherGroup = group
anotherGroup.append(john)

memberOf(person: john, group: group)
memberOf(person: john, group: anotherGroup)
