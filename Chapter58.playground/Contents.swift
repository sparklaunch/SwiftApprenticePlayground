import Foundation

// TASK 1.
let names: [String?] = ["Michelle", nil, "Brandon", "Christine", nil, "David"]

for case .some(let name) in names {
    print(name)
}
