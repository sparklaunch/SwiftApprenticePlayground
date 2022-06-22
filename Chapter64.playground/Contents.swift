import Foundation

// TASK 1.
extension CustomStringConvertible {
    var description: String {
        "Remember to implement CustomStringConvertible!"
    }
}

struct MyStruct: CustomStringConvertible {}

print(MyStruct())
