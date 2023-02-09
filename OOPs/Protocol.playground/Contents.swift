import UIKit

/// Protocol
protocol FullyNamed {
    var fullName: String { get }
}

struct Person: FullyNamed {
    var fullName: String
    var age: Int
    var phoneNum: Int
}

class Company: FullyNamed {
    var fullName: String
    var director = "Tim Cock"
    
    init(prefix: String, title: String) {
        self.fullName = "\(prefix) \(title)"
    }
}

let misha = Person(fullName: "Misha", age: 34, phoneNum: 8794)
let alisa = Person(fullName: "Alisa", age: 23, phoneNum: 8923)

let apple = Company(prefix: "LLC", title: "Apple")
let google = Company(prefix: "LLC", title: "Google")

class Bank: Company {
    var clients = [FullyNamed]()
}

let bank = Bank(prefix: "OOO", title: "Alphabank")
bank.clients.append(misha)
bank.clients.append(misha)
bank.clients.append(apple)
bank.clients.append(google)

google.director = "Vasya Popkin"

for client in bank.clients {
    print(client.fullName)
    
    if client is Person {
        print((client as! Person).phoneNum)
    } else if client is Company {
        print((client as! Company).director)
    }
}

enum  Speciality {
    case iOS, android, python, java
    
}

protocol Human {
    var name: String { get }
}

protocol Developer {
    var speciality: Speciality { get }
    var expInYears: Int { get }
}

protocol Teacher {
    var speciality: Speciality { get }
    
    func teach(theme: String)
}

struct DevTeacher: Human, Developer, Teacher {
    var name: String
    var speciality: Speciality
    var expInYears: Int
    
    func teach(theme: String) {
        print("Учу людей. Тема урока: \(theme)")
    }
}

let vlad = DevTeacher(name: "Vlad", speciality: .iOS, expInYears: 6)
vlad.name
vlad.expInYears
vlad.teach(theme: "Protocol")


protocol Named {
    var title: String { get }

}

protocol Location {
    var lat: Double { get }
    var lon: Double { get }
}

struct City: Location, Named {
    var lat: Double
    var lon: Double
    var title: String
}

struct Club: Location, Named {
    var lat: Double
    var lon: Double
    var title: String
}

struct Brend: Named {
    var title: String
}

func concert(place: Location & Named, band: String) {
    print("Group \(band) concert in \(place.title). Coordinate for GPS: \(place.lat), \(place.lon)")
}

let kzn = City(lat: 5.1, lon: 3.4, title: "Kazan")
let glavClub = Club(lat: 5.3, lon: 1.99, title: "GlavClub")

concert(place: kzn, band: "ONIOP")
concert(place: glavClub, band: "Uplan")

//pattern Delegate
protocol CoffeeMakerDelegate {
    func makeCoffee(amount: Int) -> Int
    
}

class Client {
    var name = "Vlad"
    var coffeeMaker: CoffeeMakerDelegate?
    
    func visitCoffeeHouse(coffeeMaker: CoffeeMakerDelegate?) {
        self.coffeeMaker = coffeeMaker
    }
    
    func goOutCoffeeHouse() {
        self.coffeeMaker = nil
    }
    
    func buyCoffee(amount: Int) {
        guard let delegate = coffeeMaker else {
            print("Вы не в кофейне")
            return
        }
        
        let count = delegate.makeCoffee(amount: amount)
        print("You buy \(count) coffee :0")
    }
}

struct Officiant: CoffeeMakerDelegate {
    func makeCoffee(amount: Int) -> Int {
        let price = 350
        let count = amount / price
        return count
    }
}

struct Barista: CoffeeMakerDelegate {
    func makeCoffee(amount: Int) -> Int {
        let price = 100
        let count = amount / price
        return count
    }
}

let officiant = Officiant()
let client = Client()

client.visitCoffeeHouse(coffeeMaker: officiant)
client.buyCoffee(amount: 2000)
client.goOutCoffeeHouse()

let barista = Barista()

client.visitCoffeeHouse(coffeeMaker: barista)
client.buyCoffee(amount: 400)
client.goOutCoffeeHouse()

client.buyCoffee(amount: 600)
































