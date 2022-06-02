import Foundation

// TASK 2.
public class Doctor: ClassyPerson {
    public override var fullName: String {
        "Dr. \(firstName) \(lastName)"
    }
    public override init(firstName: String, lastName: String) {
        super.init(firstName: firstName, lastName: lastName)
    }
}
