import Foundation

// TASK 1.
func printLetterCount(_ string: String) {
    var letterCount: [Character: Int] = [:]
    for letter in string {
        letterCount[letter, default: 0] += 1
    }
    let sorted = letterCount.sorted {
        $1.value < $0.value
    }
    for (letter, count) in sorted {
        print("\(letter): \(Array(repeating: "#", count: count).joined())")
    }
}

printLetterCount("Mississippi")

// TASK 2.
func printNumberOfWords(in string: String) {
    var count = 1
    for letter in string where letter == " " {
        count += 1
    }
    print("There are \(count) words in total.")
}

printNumberOfWords(in: "The quick brown fox jumps over the lazy dog.")

// TASK 3.
func formatName(_ name: String) -> String {
    let splittedName = name.split(separator: ",").reversed()
    let joinedName = splittedName.joined(separator: " ")
    let trimmedName = joinedName.trimmingCharacters(in: .whitespaces)
    return trimmedName
}

print(formatName("Galloway, Matt"))

// TASK 4.
extension String {
    func myComponents(separatedBy separator: String) -> [String] {
        let target = self
        var result: [String] = []
        var distance = 0
        var remainder = ""
        for (count, index) in target.indices.enumerated() where count <= target.count - separator.count {
            let upperIndex = target.index(index, offsetBy: separator.count)
            let indexRange = index..<upperIndex
            let slice = String(target[indexRange])
            if slice == separator {
                remainder = String(target[upperIndex...])
                let sliceIndex = target.index(index, offsetBy: -distance)..<index
                let sliceResult = String(target[sliceIndex])
                result.append(sliceResult)
                distance = -separator.count
            }
            distance += 1
        }
        result.append(remainder)
        return result
    }
}

"Mississippi".myComponents(separatedBy: "ss")
"The quick brown fox jumps over the lazy dog.".myComponents(separatedBy: " ")

// TASK 5.
extension String {
    func reversingWords() -> String {
        let target = self
        var distance = 0
        var slices: [String] = []
        for index in target.indices {
            if target[index] == " " {
                let lowerIndex = target.index(index, offsetBy: -distance)
                let slice = String(target[lowerIndex..<index].reversed())
                slices.append(slice)
                distance = 0
            }
            distance += 1
        }
        slices.append(String(target.suffix(distance).reversed()))
        return slices.joined(separator: " ")
    }
}

"The quick brown fox jumps over the lazy dog.".reversingWords()
"My dog is called Rover".reversingWords()
