import Foundation

// TASK 1.
struct Grade {
    let gradeLetter: String
    let gradePoint: Double
}

final class Student {
    let firstName: String
    let lastName: String
    var grades: [Grade] = []
    required init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
    convenience init(transfer: Student) {
        self.init(firstName: transfer.firstName, lastName: transfer.lastName)
    }
    convenience init() {
        self.init(firstName: "John", lastName: "Doe")
    }
    func recordGrade(_ grade: Grade) {
        grades.append(grade)
    }
}

let jesse = Student(firstName: "Jesse", lastName: "Catterwaul")
let anotherJesse = Student(transfer: jesse)
let anonymous = Student()
