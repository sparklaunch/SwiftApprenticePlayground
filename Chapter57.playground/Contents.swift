import Foundation

// TASK 1.
let numbers = [1, 2, 3, 4, 5]

switch numbers.count {
case .zero:
    print("The group is empty.")
case ...3:
    print("The group has a few numbers.")
case ...10:
    print("The group has several numbers.")
default:
    print("The group has many numbers.")
}
