import Foundation

// TASK 1.
public struct Person {
    private(set) var firstName: String
    private(set) var lastName: String
    public var fullName: String {
        "\(firstName) \(lastName)"
    }
    public init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
}
