import Foundation

// TASK 1.
enum Month {
    case january, february, march, april, may, june, july, august, september, october, november, december
    var semester: String {
        switch self {
        case .december, .january, .february:
            return "Winter"
        case .march, .april, .may:
            return "Spring"
        case .june, .july, .august:
            return "Summer"
        case .september, .october, .november:
            return "Autumn"
        }
    }
}

let october = Month.october
october.semester
