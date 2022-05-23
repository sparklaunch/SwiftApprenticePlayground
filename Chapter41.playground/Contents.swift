import Foundation

// TASK 1.
struct Grade {
    let gradeLetter: String
    let gradePoint: Double
}

class Student {
    static var graduates: [String] = []
    let firstName: String
    let lastName: String
    var fullName: String {
        "\(firstName) \(lastName)"
    }
    var grades: [Grade] = []
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
    func recordGrade(_ grade: Grade) {
        grades.append(grade)
    }
    deinit {
        print("Congratz! \(fullName) is now a graduate!")
        Self.graduates.append(fullName)
    }
}

var ray: Student? = Student(firstName: "Ray", lastName: "Wenderlich")
var cate: Student? = Student(firstName: "Cate", lastName: "Catterwaul")

Student.graduates

ray = nil

Student.graduates

cate = nil

Student.graduates
