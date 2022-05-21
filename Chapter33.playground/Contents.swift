import Foundation

// TASK 1.
let months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]

struct SimpleDate {
    let month: String
    var monthsUntilWinterBreak: Int {
        months.firstIndex(of: "December")! - months.firstIndex(of: month)!
    }
}

let myDate = SimpleDate(month: "October")

myDate.monthsUntilWinterBreak
