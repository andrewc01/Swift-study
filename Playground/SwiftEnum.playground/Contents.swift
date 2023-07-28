import SwiftUI

enum Weekday {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
}

var day = Weekday.monday
day = Weekday.tuesday
day = Weekday.friday

// same as
enum Weekday2 {
    case monday, tuesday, wednesday, thursday, friday
}

var day2 = Weekday2.monday
day2 = .tuesday
day2 = .friday
