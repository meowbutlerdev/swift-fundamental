//**실습하기**

/**
 - 아래의 설명을 코드로 개발해주세요.
 1. `BankAccount`라는 클래스를 정의하고, `balance`라는 `private` 프로퍼티를 만드세요.
 2. `deposit`과 `withdraw` 메소드를 작성하여 계좌 잔고를 증가 또는 감소시키세요.
 3. `balance`는 직접적으로 접근하지 못하게 하고, 오직 `deposit`과 `withdraw` 메소드를 통해서만 변경할 수 있도록 확인해보세요.
 4. 현재 `balance`가 얼마있는지 확인할 수 있는 `getBalance` 메소드를 작성해주세요.
 */
class BankAccount {
    private var balance = 0

    init(balance: Int) {
        self.balance = balance
    }

    func deposit(money: Int) {
        balance += money
    }

    func withdraw(money: Int) {
        if money > balance {
            print("잔고 부족")
            return
        }

        balance -= money
    }

    func getBalance() -> Int{
        balance
    }
}

var myAccount = BankAccount(balance: 10000)
print(myAccount.getBalance())

myAccount.deposit(money: 1000)
print(myAccount.getBalance())

myAccount.withdraw(money: 5000)
print(myAccount.getBalance())

myAccount.withdraw(money: 10000)
