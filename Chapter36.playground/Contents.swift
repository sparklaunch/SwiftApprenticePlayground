import Foundation

// TASK 1.
class SimplePerson {
    var firstName: String
    var lastName: String
    var fullName: String {
        "\(firstName) \(lastName)"
    }
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
}

let chris = SimplePerson(firstName: "Chris", lastName: "Belanger")
let homeOwner = chris

homeOwner.lastName = "Wenderlich"

homeOwner.fullName
chris.fullName
