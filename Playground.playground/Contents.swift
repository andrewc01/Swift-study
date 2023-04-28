import SwiftUI

var name = "Ted"
name = "Rebecca"

let user = "Daphne"
print(user)

let actor = "Tom Cruise"

let quote = "He tapped a sign saying \"Believe\" and walked away"

let movie = """
A day in
the life of an
Apple engineer
"""

print(actor.count)

print(quote.hasPrefix("He"))
print(quote.hasSuffix("Away"))

let score = 10
let higherScore = score + 10
let halvedScore = score / 2

var counter = 10
counter += 5

let number = 120
print(number.isMultiple(of: 3))

let id = Int.random(in: 1...1000)

let goodDogs = true
let gameOver = false
var isSaved = false
isSaved.toggle()

let name_1 = "Taylor"
let age = 26
let message = "I'm \(name_1) and I'm \(age) years old."
print(message)

var colors = ["Red", "Green", "Blue"]
let nubmers = [4, 8, 15, 16]
var readings = [0.1, 0.5, 0.8]

print(colors[0])
print(readings[2])

colors.append("Black")
colors.remove(at: 0)
print(colors.count)

print(colors.contains("Octarine"))

let employee = [
    "name": "Taylor",
    "job": "Singer"
]

print(employee["job", default: "Unknown"])

var numbers = Set([1, 1, 3, 5, 7, 9])
print(numbers)

numbers.insert(10)
numbers.contains(11)

enum Weekday {
    case monday, tuesday, wednesday, thursday, friday
}

var day = Weekday.monday
day = .friday

var score_1: Double = 0

let player_1: String = "Roy"
let luckyNumber: Int = 13
let pi: Double = 3.141
var isEnabled: Bool = true

var albums: Array<String> = ["Red", "Fearless"]
var user_1: Dictionary<String, String> = ["id": "@twostraws"]
var books: Set<String> = Set(["The Bluest Eye", "Foundation"])

var teams: [String] = [String]()
var clues = [String]()

enum UIStyle {
    case light, dark, system
}

var style: UIStyle = .light


let age_1 = 16

if age_1 < 12 {
    print("You can't vote.")
} else if age_1 < 18 {
    print("You can vote soon.")
} else {
    print("You can vote now.")
}

let temp = 26

if temp > 20 && temp < 30 {
    print("It's a nice day.")
}

enum Weather {
    case sun, rain, wind
}

let forecast = Weather.sun

switch forecast {
case .sun:
    print("A nice day.")
case .rain:
    print("Pack an umbrella")
default:
    print("Should be okay.")
}

let age_2 = 18
let canVote = age_2 >= 18 ? "Yes" : "No"
print(canVote)


let platforms = ["iOS", "macOS", "tvOS", "watchOS"]

for os in platforms {
    print("Swift works on \(os)")
}

for i in 1...12 {
    print("5 x \(i) is \(5 * i)")
}

for i in 1..<12 {
    print("5 x \(i) is \(5 * i)")
}

var lyric = "Haters gonna"

for _ in 1...5 {
    lyric += " hate"
}

print(lyric)

var count = 10

while count > 0 {
    print("\(count)...")
    count -= 1
}

print("Go!")

let files = ["me.jpg", "work.txt", "sophie.jpg"]

for file in files {
    if file.hasSuffix(".jpg") == false {
        continue
    }
    print("Found picture: \(file)")
}

func printTimesTable(number: Int) {
    for i in 1...12 {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTable(number: 8)

func rollDice() -> Int {
    return Int.random(in: 1...6)
}

let result = rollDice()
print(result)

func getUser() -> (firstName: String, lastName: String) {
    (firstName: "Taylor", lastName: "Swift")
}

let (firstName, _) = getUser()
print("Name: \(firstName)")

func isUppercase(_ string: String) -> Bool {
    string == string.uppercased()
}

let string = "HELLO WORLD"
let result_2 = isUppercase(string)

func printTimesTable2(for number: Int) {
    for i in 1...12 {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTable2(for: 5)

func greet(_ person: String, formal: Bool = false) {
    if formal {
        print("Welcome, \(person)")
    } else {
        print("Hi, \(person)")
    }
}

greet("Tim", formal: true)
greet("Taylor")


enum PasswordError: Error {
    case short, obvious
}

func checkPassword(_ password: String) throws -> String {
    if password.count < 5 {
        throw PasswordError.short
    }
    if password == "12345" {
        throw PasswordError.obvious
    }
    if password.count < 10 {
        return "OK"
    } else {
        return "Good"
    }
}

do {
    let result = try checkPassword("12345")
    print("Rating: \(result)")
} catch PasswordError.obvious {
    print("I have the same combination on my luggage!")
} catch {
    print("There was an error.")
}

let sayHello = { (name: String) -> String in
    "Hi!, \(name)!"
}

let team = ["Gloria", "Suzanne", "Tiffany", "Tasha"]

let onlyT = team.filter { (name: String) -> Bool in
    name.hasPrefix("T")
}

print(onlyT)

struct Album {
    let title: String
    let artist: String
    var isReleased = true
    
    func printSummary() {
        print("\(title) by \(artist)")
    }
    
    mutating func removeFromSale() {
        isReleased = false
    }
}

let red = Album(title: "Red", artist: "Taylor Swift")
print(red.title)
red.printSummary()

struct Employee {
    let name: String
    var vacationAllowed = 14
    var vacationTaken = 0
    
    var vacationRemaining: Int {
        get {
            vacationAllowed - vacationTaken
        }
        
        set {
            vacationAllowed = vacationTaken + newValue
        }
    }
}

struct Game {
    var score = 0 {
        didSet {
            print("Score is now \(score)")
        }
    }
}

var game = Game()
game.score += 10
game.score -= 3

struct Player {
    let name: String
    let number: Int
    
    init(name: String) {
        self.name = name
        number = Int.random(in: 1...99)
    }
}

struct BankAccount {
    var funds = 0
    
    mutating func deposit(amount: Int) {
        funds += amount
    }
    
    mutating func withdraw(amount: Int) -> Bool {
        if funds > amount {
            funds -= amount
            return true
        } else {
            return false
        }
    }
}

struct AppData {
    static let version = "1.3 beta 2"
    static let settingsFile = "settings.json"
}

print(AppData.version)

class Employee_2 {
    let hours: Int
    
    init(hours: Int) {
        self.hours = hours
    }
    
    func printSummary() {
        print("I work \(hours) hours a day.")
    }
}

class Developer: Employee_2 {
    func work() {
        print("I'm coding for \(hours) hours a day.")
    }
    
    override func printSummary() {
        print("I spend \(hours) hours a day fighting over tabs vs spaces.")
    }
}

let novall = Developer(hours: 8)
novall.work()
novall.printSummary()

class Vehicle {
    let isElectric: Bool
    
    init(isElectric: Bool) {
        self.isElectric = isElectric
    }
}

class Car: Vehicle {
    let isConvertible: Bool
    
    init(isElectric: Bool, isConvertible: Bool) {
        self.isConvertible = isConvertible
        super.init(isElectric: isElectric)
    }
}

struct Actor {
    var name = "Nicolas Cage"
}

var actor1 = Actor()
var actor2 = actor1

actor2.name = "Tom Cruise"
print(actor1.name)
print(actor2.name)
