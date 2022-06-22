import Foundation

// TASK 1.
protocol TeamRecord {
    var wins: Int { get }
    var losses: Int { get }
}

extension CustomStringConvertible where Self: TeamRecord {
    var description: String {
        "\(wins) - \(losses)"
    }
}

struct Team: TeamRecord, CustomStringConvertible {
    let wins: Int
    let losses: Int
}

let team = Team(wins: 10, losses: 5)

print(team)
