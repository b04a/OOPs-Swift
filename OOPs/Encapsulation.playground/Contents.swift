import UIKit
import Foundation

/// Инкапсуляция

class Wallet {
    
    static let shared = Wallet()
    private var balance = 0
    
    private init() {} //
    
    func add(cash: Int) {
        self.balance += cash
        print(self.balance)
    }
    
    func withdraw(cash: Int) -> Int {
        guard cash <= balance else {
            return 0
        }
        
        balance -= cash
        return cash
    }
    
    func getBalance() -> Int {
        return self.balance
    }
}
//
//var wallet = Wallet()
//
//wallet.add(cash: 5000)
//wallet.withdraw(cash: 10000)
//wallet.withdraw(cash: 5000)
//
//print(wallet.getBalance())

class Shop {
    var wallet = Wallet.shared
    
}

class Job {
    var wallet = Wallet.shared
}

var magnit = Shop()
var fabric = Job()


fabric.wallet.add(cash: 15000)
let checkSum = magnit.wallet.withdraw(cash: 3000)

print(checkSum)
fabric.wallet.getBalance()


class Person {
    let wallet = Wallet.shared
    var goods = [String]()
    
    private func gets(goods: String) {
        self.goods.append(goods)
        print("Item: \(goods) complite!")
    }
    
    private func give(money: Int) {
        self.wallet.withdraw(cash: money)
        print("Sum check: \(money)$")
    }
    
    func buy(goods: String, price: Int) {
        guard price <= wallet.getBalance() else { return }
        
        gets(goods: goods)
        give(money: price)
    }
}

let vasya = Person()
fabric.wallet.add(cash: 80000)
vasya.wallet.getBalance()
vasya.buy(goods: "Iphone 13 mini", price: 69990)
vasya.wallet.getBalance()
vasya.buy(goods: "Buds", price: 650)

