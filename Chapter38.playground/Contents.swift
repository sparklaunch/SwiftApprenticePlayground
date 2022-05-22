import Foundation

// TASK 1.
enum Grade: Double, CaseIterable {
    case f = 0.0
    case d0 = 1.0
    case cMinus = 1.7
    case c0 = 2.0
    case cPlus = 2.3
    case bMinus = 2.7
    case b0 = 3.0
    case bPlus = 3.3
    case aMinus = 3.7
    case a0 = 4.0
    case aPlus = 4.3
}

struct Class {
    let name: String
    let credit: Int
    let grade: Grade
}

class Student {
    var gpa: Double {
        let credits = classes.reduce(into: 0) { result, value in
            result += value.credit
        }
        let grades = classes.reduce(into: 0.0) { result, value in
            result += value.grade.rawValue * Double(value.credit)
        }
        return grades / Double(credits)
    }
    let name: String
    let classes: [Class]
    init(name: String, classes: [Class]) {
        self.name = name
        self.classes = classes
    }
}

let jane = Student(name: "Jane", classes: [
    .init(name: "English", credit: 3, grade: .a0),
    .init(name: "Math", credit: 3, grade: .aMinus),
    .init(name: "Society", credit: 2, grade: .aPlus),
    .init(name: "Science", credit: 3, grade: .bPlus)
])

jane.gpa
