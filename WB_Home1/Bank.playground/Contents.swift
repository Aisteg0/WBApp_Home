import UIKit

struct BankAccount {
    var title: String
    var money: Int
    
    init(title: String, money: Int) {
        self.title = title
        self.money = money
    }
}

final class Bank {
    var account: [BankAccount] = [
        BankAccount(title: "VTB", money: 50000),
        BankAccount(title: "Sber", money: 100000),
        BankAccount(title: "Credit", money: 1000000)
    ]
    let a = 5 + 5
    
    func addAccount(_ title: String, _ money: Int) {
        let newAccount = BankAccount(title: title, money: money)
        account.append(newAccount)
    }
    
    func addMoney(_ count: Int, _ account: BankAccount) {
        // TODO:
    }
    
    func transferMoney(_ count: Int, from account: BankAccount, to account2: BankAccount) {
        // TODO:
    }
    
    func moneyOnAccountBeforeOperation(_ account: BankAccount) -> Int {
        // TODO:
        return 2
    }
    
    func moneyOnAccountAfterOperation(_ account: BankAccount) -> Int {
        // TODO:
        return 1
    }
}
