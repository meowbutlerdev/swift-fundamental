//**실습하기**

/**
 - 프로토콜 실습에서 개발한 내용을 확장해봅시다!
 1. 프로토콜 실습에서 정의한 `Person` 클래스를 extension 하여
 새로운 `연산프로퍼티`, `메소드`를 구현해보세요.
     1. `fullNameWithFeetCount` 연산 프로퍼티를 추가하여 이름과 발갯수를 함께 출력해보세요.
     2. `introduceOnlyName` 메소드를 추가하여 자기의 이름만 소개하는 문구를  출력해주세요.
 2. `extension`하여 `Walkable`을 채택한 뒤 아래의 작업을 진행하세요.
     1. `walk` 함수만 분리하여 개발해보세요.
     2. `feetCount` 프로퍼티를 분리하여 개발해보세요.
 */
protocol Walkable {
    var feetCount: Int { get }

    func walk() -> String
}

class Person {
//    var feetCount: Int = 2
    var name: String

    init(name: String) {
        self.name = name
    }

//    func walk() -> String {
//        "사람이 걷습니다."
//    }

    func introduce() {
        print("저는 \(name)이고, 발은 \(feetCount)개 입니다.")
    }
}

extension Person {
    var fullNameWithFeetCount: String {
        "저는 \(name)이고, 발은 \(feetCount)개 입니다."
    }

    func introduceOnlyName() {
        print("저는 \(name)입니다.")
    }
}

extension Person: Walkable {
    var feetCount: Int {
        get { 2 }
    }

    func walk() -> String {
        "사람이 걷습니다."
    }
}

let person = Person(name: "지성")
print(person.fullNameWithFeetCount)
person.introduceOnlyName()
print(person.walk())
