import UIKit
import Foundation

/// Enum
enum DayTime {
    case night
    case morning
    case afternoon
    case evening
}

var currentTime = DayTime.evening
currentTime = .night

let day: DayTime = .afternoon

switch currentTime {
case .night:
    print("сплю")
case .morning:
    print("пью кофе")
case .afternoon:
    print("пью чай")
case .evening:
    print("пью")
}

/// ассоциированные значения
enum Profession {
    case programmer(String, String, Int)
    case sysAdmin(String, String)
    case webDisigner(String, Int)
    case cleaningManager(String)
}

let myProfession = Profession.programmer("Vlad", "iOS", 6)
let designer = Profession.webDisigner("Irina", 30)

func check(prof: Profession) {
    switch prof {
    case .programmer(let name, let spec, let exp):
        print("Меня зовут \(name). Я работаю \(spec)-разработчиком, \(exp) лет.")
    case .sysAdmin(let name, let spec):
        print("Меня зовут \(name). Я работаю системным админом и специализируюсь на \(spec).")
    case .webDisigner(_, _):
        break
    case .cleaningManager(_):
        break
    }
}

check(prof: myProfession)

/// Чистые значения

enum MyPetName: String, CaseIterable {
    case cat = "Vasya"
    case dog = "Tyzik"
    case boa = "Utol"
    case perrot = "Ollor"
}

var myCat = MyPetName.cat
var myCatName = myCat.rawValue

var myPats = MyPetName.allCases

for pat in myPats {
    print(pat.rawValue)
}




enum Season: Int {
    case winter = 1, spring, summer, autumn
    
    var label: String {
        switch self {
        case .winter:
            return "Зима"
        case .spring:
            return "Весна"
        case .summer:
            return "Лето"
        case .autumn:
            return "Осень"
        }
    }
    
    var int: Int { return 5 }
    
    init?(_ value: String) {
        switch value {
        case "Зима": self  = .winter
        case "Весна": self  = .spring
        case "Лето": self  = .summer
        case "Осень": self  = .autumn
        default: return nil
        }
    }
    
    func printLabel() {
        print(self.label)
    }
}

let season = Season("Зима")
season?.printLabel()


























