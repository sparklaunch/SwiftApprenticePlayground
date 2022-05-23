import Foundation

// TASK 1.
enum Month: Int {
    case january = 1, february, march, april, may, june, july, august, september, october, november, december
    var monthsUntilWinterBreak: Int {
        Self.december.rawValue - self.rawValue
    }
}

let october = Month.october
october.monthsUntilWinterBreak

let january = Month.january
january.monthsUntilWinterBreak

let december = Month.december
december.monthsUntilWinterBreak
