import Foundation

// TASK 1.
class Logger {
    static let shared = Logger(string: "Hello, World!!")
    let string: String
    private init(string: String) {
        self.string = string
    }
    func log() {
        print(string)
    }
}

let logger = Logger.shared
let anotherLogger = Logger.shared

logger.log()
anotherLogger.log()

logger === anotherLogger

// TASK 2.
class Stack<Type> {
    private var elements: [Type] = []
    var count: Int {
        elements.count
    }
    func push(_ element: Type) {
        elements.append(element)
    }
    func peek() -> Type? {
        elements.last
    }
    func pop() -> Type? {
        if elements.isEmpty {
            return nil
        }
        return elements.removeLast()
    }
}

let numbers = Stack<Int>()

numbers.peek()
numbers.pop()
numbers.count
numbers.push(3)
numbers.push(5)
numbers.push(7)
numbers.count
numbers.peek()
numbers.pop()
numbers.peek()

// TASK 3.
func battle(_ one: GameCharacter, vs another: GameCharacter) {
    repeat {
        another.hitPoints -= one.attackPoints
        if another.hitPoints <= 0 {
            print("\(another.name) defeated!!")
            break
        }
        one.hitPoints -= another.attackPoints
        if one.hitPoints <= 0 {
            print("\(one.name) defeated!!")
            break
        }
    } while true
}

let elf = GameCharacterFactory.make(ofType: .elf)
let giant = GameCharacterFactory.make(ofType: .giant)
let wizard = GameCharacterFactory.make(ofType: .wizard)

battle(elf, vs: giant)
battle(wizard, vs: giant)
battle(wizard, vs: elf)
