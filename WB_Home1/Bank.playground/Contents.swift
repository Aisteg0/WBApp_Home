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
    var accounts: [BankAccount] = [
        BankAccount(title: "VTB", money: 50000),
        BankAccount(title: "Sber", money: 100000),
        BankAccount(title: "Credit", money: 1000000)
    ]
    
    var nameOfAccount: BankAccount?
    
    func addAccount(_ title: String, _ money: Int) {
        let newAccount = BankAccount(title: title, money: money)
        accounts.append(newAccount)
    }
    
    func addMoney(_ title: String, _ count: Int) {
        correctNameAccount(title)
        guard var account = chooseAccount(title) else { return }
        print("Cейчас на карте - \(account.money)")
        account.money += count
        print("Баланс карты после пополения - \(account.money)")
        if let index = accounts.firstIndex(where: { $0.title == title }) {
            accounts[index] = account
        }
    }
    
    func transferMoney(_ count: Int, from nameOfAccount: String, to nameOfAccount2: String) {
        correctNameAccount(nameOfAccount)
        correctNameAccount(nameOfAccount2)
        if var firstAccount = chooseAccount(nameOfAccount),
           var secondAccount = chooseAccount(nameOfAccount2) {
            print("Сейчас на первой карте - \(firstAccount.money), а на второй -  \(secondAccount.money)")
            firstAccount.money -= count
            secondAccount.money += count
            print("После перевода на первой карте - \(firstAccount.money), а на второй - \(secondAccount.money)")
            if let firstIndex = accounts.firstIndex(where: { $0.title == nameOfAccount }),
               let secondIndex = accounts.firstIndex(where: { $0.title == nameOfAccount2 }) {
                accounts[firstIndex] = firstAccount
                accounts[secondIndex] = secondAccount
            }
        }
    }
    
    func showBalaceOnAccount(_ title: String) {
        correctNameAccount(title)
        let card = chooseAccount(title)
        if let card {
            print("На карте \(title) - \(card.money) деняк")
        }
    }
    
    private func chooseAccount(_ title: String) -> BankAccount? {
        var counter = 0
        for account in accounts {
            if account.title == title {
                nameOfAccount = account
                counter += 1
            } else if counter >= 2 {
                nameOfAccount = nil
            }
        }
        return nameOfAccount
    }
    
    private func correctNameAccount(_ title: String) {
        let account = chooseAccount(title)
        if account == nil {
            print("Проверьте правильность написания карты")
        }
    }
}

let bank = Bank()
bank.addAccount("Master Card", 10000)
bank.addMoney("Sber", 5000)
bank.transferMoney(5000, from: "VTB", to: "Sber")
bank.showBalaceOnAccount("Sber")

