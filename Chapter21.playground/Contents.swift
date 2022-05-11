// TASK 1.
let array1 = [Int]()
// let array2 = []
let array3: [String] = []

let array4 = [1, 2, 3]

print(array4[0])
// print(array4[5])
array4[1...2]
//array4[0] = 4
//array4.append(4)

var array5 = [1, 2, 3]

array5[0] = array5[1]
array5[0...1] = [4, 5]
// array5[0] = "Six"
// array5 += 6

for item in array5 {
    print(item)
}

// TASK 2.
func removingOnce(_ item: Int, from array: [Int]) -> [Int] {
    var arrayCopy = array
    guard let firstIndex = array.firstIndex(of: item) else {
        fatalError("Not found!!")
    }
    arrayCopy.remove(at: firstIndex)
    return arrayCopy
}

removingOnce(3, from: [1, 2, 3, 4, 5, 3, 2, 3])

// TASK 3.
func removing(_ item: Int, from array: [Int]) -> [Int] {
    var arrayCopy = array
    arrayCopy.removeAll { number in
        number == item
    }
    return arrayCopy
}

removing(3, from: [1, 2, 3, 4, 5, 4, 3, 2, 1])

// TASK 4.
func reversed(_ array: [Int]) -> [Int] {
    var reversed: [Int] = []
    for index in stride(from: array.count - 1, through: .zero, by: -1) {
        reversed.append(array[index])
    }
    return reversed
}

reversed([1, 2, 3, 4, 5])

// TASK 5.
func middle(_ array: [Int]) -> Int? {
    guard !array.isEmpty else {
        return nil
    }
    let middleIndex = (array.count - 1) / 2
    return array[middleIndex]
}

middle([1, 3, 5])
middle([1, 2, 4, 6])
middle([])

// TASK 6.
func minMax(of numbers: [Int]) -> (min: Int, max: Int)? {
    guard !numbers.isEmpty else {
        return nil
    }
    var min = numbers.first!, max = numbers.first!
    for number in numbers {
        if min > number {
            min = number
        }
        if max < number {
            max = number
        }
    }
    return (min: min, max: max)
}

minMax(of: [3, 2, 1, 6, 5, 4])

// TASK 7.
// let dict1: [Int, Int] = [:]
// let dict2 = [:]
let dict3: [Int: Int] = [:]

let dict4 = ["One": 1, "Two": 2, "Three": 3]

// dict4[1]
dict4["One"]
// dict4["Zero"] = 0
// dict4[0] = "Zero"

var dict5 = ["NY": "New York", "CA": "California"]

dict5["NY"]

dict5["NY"]
dict5["WA"] = "Washington"
dict5["CA"] = nil

// TASK 8.
for (_, value) in dict5 where value.count > 8 {
    print(value)
}

// TASK 9.
func merging(_ dict1: [String: String], with dict2: [String: String]) -> [String: String] {
    var dictCopy = dict1
    for (key, value) in dict2 {
        dictCopy.updateValue(value, forKey: key)
    }
    return dictCopy
}

let dict6 = ["CA": "California", "WA": "Washington", "NY": "New York"]
let dict7 = ["CA": "Possibly California", "MA": "Maine", "VA": "Virginia"]

merging(dict6, with: dict7)

// TASK 10:
func occurrencesOfCharacters(in text: String) -> [Character: Int] {
    var letterTable: [Character: Int] = [:]
    for letter in text {
        letterTable[letter, default: 0] += 1
    }
    return letterTable
}

occurrencesOfCharacters(in: "Hello, World!!")

// TASK 11.
func isInvertible(_ dictionary: [String: Int]) -> Bool {
    let values = Array(dictionary.values).sorted()
    let set = Set(values)
    let sortedSet = Array(set).sorted()
    return sortedSet == values
}

isInvertible(["First": 1, "Second": 2, "Third": 3])
isInvertible(["First": 1, "Second": 2, "Third": 3, "Fourth": 1])

// TASK 12.
var nameTitleLookup: [String: String?] = ["Mary": "Engineer", "Patrick": "Intern", "Ray": "Hacker"]

nameTitleLookup.updateValue(nil, forKey: "Patrick")
nameTitleLookup.removeValue(forKey: "Ray")

print(nameTitleLookup)
