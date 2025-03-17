import UIKit

//**실습하기**

/**
 1️⃣ escaping closure 실습하기

 1. 함수를 작성해보세요. 함수 이름은 `performAfterDelay`입니다.
     - 이 함수는 두 개의 파라미터를 받습니다: 첫 번째 파라미터는 초 단위의 지연 시간을 나타내는 `seconds` (Double 타입)입니다.
     - 두 번째 파라미터는 나중에 실행될 클로저입니다.
     - 함수는 `@escaping` 키워드를 사용하여 클로저를 파라미터로 받아들입니다.
     - 함수를 호출하면 지정된 시간이 지난 후 클로저를 실행하세요.
 2. 함수를 사용하여 `print` 함수를 호출하는 클로저를 전달하고, 3초 후 "3초 후에 실행됨"이라는 메시지를 출력하세요.

 **힌트:** `DispatchQueue.main.asyncAfter`를 사용하면 시간을 지연할 수 있습니다.
 */
@MainActor
func performAfterDelay(seconds: Double, closure: @escaping (Double) -> Void) {
    DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
        closure(seconds)
    }
}

performAfterDelay(seconds: 2.0) {
    print("\($0)초 후에 출력됩니다.")
}

print("바로 출력됩니다.")


/**
 2️⃣ 클로저 캡처 실습하기

 ```swift
 struct Person {
     var name: String
     var age: Int
 }
 ```

 - `captureTest`라는 함수를 작성하세요. 이 함수 내부에서 다음을 수행하세요:
     1. `person`이라는 `Person` 인스턴스를 생성하고, 초기값은 `name`은 "John", `age`는 30으로 설정합니다.
     2. `closure`라는 변수에 클로저를 작성하여 `person.age` 값을 출력하는 코드를 작성하세요.
     3. `closure`를 실행하여 처음 값을 출력한 후, `person.age` 값을 35로 변경하세요.
     4. 다시 한 번 `closure`를 실행하여 변경된 값을 출력하세요.
 */
class Person {
    var name: String
    var age: Int

    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

func captureTest() {
    var person = Person(name: "john", age: 30)

    var closure = {
        print(person.age)
    }

    closure()

    person.age = 35

    closure()
}

captureTest()

/**
 - 이 코드를 통해 클로저가 `value type`을 캡처할 때 참조 방식으로 작동하는지, 값이 변경될 때 어떤 결과를 출력하는지 직접 확인해보세요.

 3️⃣ 캡처리스트 실습하기

 - 위에 2번에서 만들었던 코드에서 `closure` 변수에서 `person` 을 `value type` 캡처를 사용해서 테스트 해보세요.
 - `Person`을 `class`로 변경한 뒤 `weak`, `unowned` 를 사용하여 `person`을 캡처해보세요.

 */
func captureTest2() {
    var person = Person(name: "john", age: 30)

    var closure = { [unowned person] in
        print(person.age)
    }

    closure()

    person.age = 35

    closure()
}

captureTest2()
