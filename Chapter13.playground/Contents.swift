// TASK 1.
func printFullName(firstName: String, lastName: String) {
    print("\(firstName) \(lastName)")
}

printFullName(firstName: "Jinwook", lastName: "Kim")

// TASK 2.
func printFullName(_ firstName: String, _ lastName: String) {
    print("\(firstName) \(lastName)")
}

printFullName("Jinwook", "Kim")

// TASK 3.
func calculateFullName(firstName: String, lastName: String) -> String {
    firstName + " " + lastName
}

let fullName: String = calculateFullName(firstName: "Jinwook", lastName: "Kim")

// TASK 4.
func calculateFullName(firstName: String, lastName: String) -> (fullName: String, length: Int) {
    let fullName = firstName + " " + lastName
    return (fullName: fullName, length: fullName.count)
}

let (myFullName, length) = calculateFullName(firstName: "Jinwook", lastName: "Kim")

print("I'm \(myFullName) and the length of my full name is \(length).")
