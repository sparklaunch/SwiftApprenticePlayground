// TASK 1.
let age = 31

switch age {
case 0...2:
    print("Infant")
case 3...12:
    print("Child")
case 13...19:
    print("Teenager")
case 20...39:
    print("Adult")
case 40...60:
    print("Middle-aged")
case 61...:
    print("Elderly")
default:
    print("Invalid Age!!")
}

// TASK 2.
let jinwook = (name: "Jinwook Kim", age: 31)

switch jinwook {
case let (name, 0...2):
    print("\(name) is an infant.")
case let (name, 3...12):
    print("\(name) is a child.")
case let (name, 13...19):
    print("\(name) is a teenager.")
case let (name, 20...39):
    print("\(name) is an adult.")
case let (name, 40...60):
    print("\(name) is a middle-aged.")
case let (name, 61...):
    print("\(name) is an elderly.")
case let (name, _):
    print("\(name) is an alien.")
}
