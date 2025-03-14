//**실습하기**

/**
 ### 1️⃣ `Walkable` 프로토콜 정의

 **`Walkable`** 이라는 이름의 **프로토콜**을 정의해보세요.

 - 메소드로 **`walk`** 함수를 정의해주세요.
 - `walk` 함수는 파라미터 없이 **문자열을 반환**합니다. (ex: "걷습니다")
 - 프로퍼티로 `feetCount`를 정의해주세요.
 - `feetCount`는 **`Int`** 타입이며, 읽기와 쓰기 모두 가능한 프로퍼티로 설정하세요.
 - `feetCount`는 **발의 수**를 의미하며, 사람은 2, 고양이는 4를 가집니다.
 */
protocol Walkable {
    var feetCount: Int { get set }

    func walk() -> String
}

/**
 ### 2️⃣ `Person` 클래스 만들기

 1. `Person`이라는 클래스를 만들어 **`Walkable`** 프로토콜을 채택하고 구현하세요.
     - **`feetCount`** 프로퍼티를 구현하세요. `Person` 클래스의 `feetCount`는 항상 **2**로 설정됩니다.
     - **`walk`** 메소드를 구현하세요. 이 메소드는 "사람이 걷습니다"라는 문자열을 반환합니다.
 2. `Person` 클래스에 `name`이라는 새로운 프로퍼티를 추가해주세요.
     - `name`은 `String` 타입입니다.
     - `init` 메소드를 정의하여 **이름을 설정**할 수 있도록 만드세요.
 3. `Person` 클래스의 **`introduce`** 메소드를 추가하여, 이름과 발의 수를 출력하는 기능을 추가하세요.
 */
class Person: Walkable {
    var feetCount: Int = 2
    var name: String

    init(name: String) {
        self.name = name
    }

    func walk() -> String {
        "사람이 걷습니다."
    }

    func introduce() {
        print("저는 \(name)이고, 발은 \(feetCount)개 입니다.")
    }
}

/**
 ### 3️⃣ `Cat` 구조체 만들기

 1. `Cat`이라는 **구조체**를 만들어 **`Walkable`** 프로토콜을 채택하고 구현하세요.
     - **`feetCount`** 프로퍼티를 구현하세요. `Cat`의 `feetCount`는 항상 **4**로 설정됩니다.
     - **`walk`** 메소드를 구현하세요. 이 메소드는 "고양이가 걷습니다"라는 문자열을 반환합니다.
 2. `color`라는 고양이 털 색깔을 저장하는 **`String`** 프로퍼티를 추가하고, 이를 **초기화**할 수 있는 `init` 메소드를 구현하세요.
 3. `introduce` 메소드를 구현하여 고양이 털 색깔과 발의 수를 출력하는 기능을 추가하세요.
 */
struct Cat: Walkable {
    var feetCount: Int = 4
    var color: String

    init(color: String) {
        self.color = color
    }

    func walk() -> String {
        "고양이가 걷습니다."
    }

    func introduce() {
        print("고양이의 털 색상은 \(color)이고, 발은 \(feetCount)개 입니다.")
    }
}

var person = Person(name: "지성")
print(person.walk())
person.introduce()

var cat = Cat(color: "검정")
print(cat.walk())
cat.introduce()
