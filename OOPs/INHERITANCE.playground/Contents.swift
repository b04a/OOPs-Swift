import UIKit
import Foundation

/// INHERITANCE

class Vehicle {
    let brend: String
    let massa: Int
    
    init(brend: String, massa: Int) {
        self.brend = brend
        self.massa = massa
    }
    
    func go() {
        print("go")
    }
}

let vehicle = Vehicle(brend: "forward", massa: 12)

vehicle.massa
vehicle.brend
vehicle.go()

class Car: Vehicle {
    let carType: String
    let enginePower: Int
    
    init(brend: String, massa: Int, carType: String, enginePower: Int) {
        self.carType = carType
        self.enginePower = enginePower
        super.init(brend: brend, massa: massa)
    }
    
    func klakson() {
        print("Beep-beep!")
    }
}

let bmw = Car(brend: "BMW", massa: 1500, carType: "City", enginePower: 300)
let audi = Car(brend: "Audi", massa: 1600, carType: "City", enginePower: 220)
var cars: [Car] = [bmw, audi]

class SportCar: Car {
    let maxSpeed: Int
    
    init(brend: String, massa: Int, enginePower: Int, maxSpeed: Int) {
        self.maxSpeed = maxSpeed
        super.init(brend: brend, massa: massa, carType: "Sport Car", enginePower: enginePower)
    }
}


let ferrari = SportCar(brend: "Ferrari",
                       massa: 1800,
                       enginePower: 430,
                       maxSpeed: 340)

let porshe = SportCar(brend: "Porshe",
                       massa: 1700,
                       enginePower: 370,
                       maxSpeed: 320)


bmw.massa
bmw.go()
bmw.klakson()
bmw.carType
ferrari.carType

cars.append(ferrari)
cars.append(porshe)


(
    cars[3] as? SportCar
)?.maxSpeed

var sportCars = [SportCar]()

for car in cars {
    if car is SportCar {
        sportCars.append((car as! SportCar))
    }
}

for sportCar in sportCars {
    print(sportCar.brend)
}
