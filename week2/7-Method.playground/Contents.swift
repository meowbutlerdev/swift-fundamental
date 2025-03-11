// **실습하기**

// 프로퍼티 실습에서 만들었던 AppleDevice에 기능을 추가 해보겠습니다.

/**
 1. AppleDevice에 아래의 저장 프로퍼티를 추가해주세요.
     1. 변수의 이름은 price 이고 Int 타입입니다.
 2. 아래의 인스턴스 메소드 만들어주세요
     1. 메소드의 이름은 sellDevice 입니다.
     2. 반환타입은 없습니다.
     3. 파라미터는 2개입니다.
         - String타입의 newOnwer
         - Int 타입의 price
         - 해당 메소드는 입력받은 파라미터를 사용하여
         owner와 price를 업데이트 합니다.
 3. 아래의 타입 메소드를 만들어주세요.
     - 타입 메소드의 이름은 printCompanyName 입니다.
     - 파라미터는 없습니다.
     - 반환타입은 없습니다.
     - 타입프로퍼티 companyName을 출력하는 코드를 작성해주세요.

 */
struct AppleDevice {
    static let companyName = "Apple"
    var onwer: String
    var price: Int

    mutating func sellDevice(newOnwer: String, price: Int) {
        self.onwer = newOnwer
        self.price = price
    }

    static func printCompanyName() {
        print(companyName)
    }
}
