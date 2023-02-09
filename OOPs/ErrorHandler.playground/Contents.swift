import UIKit
import Foundation

enum AuthError: Error {
    case wrongPassword
    case dataNotExists
    case serverLost
}


/// Проброс ошибки

func auth(login: String, pwd: String) throws -> String {
    let trueLogin = "Vasya"
    let truePass = "123"
    
    guard login == trueLogin else {
        throw AuthError.dataNotExists
    }
    
    guard pwd == truePass else {
        throw AuthError.wrongPassword
    }
    
    print("Hey, admin!")
    return "OK"
}

/// do - catch block

do {
    try auth(login: "Vasya", pwd: "123")
} catch AuthError.dataNotExists {
    print("Data not exists")
} catch AuthError.wrongPassword {
    print("Error password")
} catch {
    print("Error other")
}

/// Convert in Option

try? auth(login: "Vasya", pwd: "123444")


