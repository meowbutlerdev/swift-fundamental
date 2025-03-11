// **실습하기**

/**
 1️⃣ 아래의 한글을 보고 class를 정의해주세요.

 1. class의 이름은 Animal 입니다.
 2. Animal에 프로퍼티(변수,상수)로 아래의 값을 저장할 수 있습니다.
     1. `Int` 타입의 feetCount 변수
     2. `Int` 타입의 eyeCount 상수
     3. `String` 타입의 name 변수
 3. `feetCount` 의 default 값은 2 입니다.
 4. `init` 초기화를 사용하여 eyeCount, name을 전달받아
 Animal의 프로퍼티에 저장합니다.
 5. Animal class에 아래의 메소드(함수)를 정의해주세요.
     1. 함수의 이름은 `introduce` 입니다.
     2. 함수의 파라미터는 없으며 반환타입은 String 입니다.
     3. 구현부에서는 Animal 클래스의 프로퍼티들을 사용하여
     소개하는 String 값을 리턴합니다.
     (소개하는 String은 자유롭게 작성해주세요)
 */
class Animal {
    var feetCount: Int = 2
    let eyeCount: Int
    var name: String

    init(feetCount: Int, eyeCount: Int, name: String) {
        self.feetCount = feetCount
        self.eyeCount = eyeCount
        self.name = name
    }

    init(eyeCount: Int, name: String) {
        self.eyeCount = eyeCount
        self.name = name
    }

    func introduce() -> String {
        return "제 이름은 \(name)입니다. 다리 \(feetCount)개, 눈 \(eyeCount)개 입니다."
    }
}

/**
 2️⃣ 위에서 작성한 Animal class를 직접 사용해보세요.

 1. 변수의 이름은 `person`이고 이름에는 “수강생”, `eyeCount`에는 2를 넣어서 Animal의 인스턴스를 만들어주세요.
 2. `person` 인스턴스의 `feetCount`, `eyeCount`, `name` 프로퍼티에 접근하여 출력해보세요.
 3. introduce 함수를 사용해보세요.

 ---

 3️⃣ 실제 세상에서 프로퍼티(상태)와 메소드(행동)으로 나누어서 정의되는것이 매우 많습니다!

 5개 이상의 클래스를 만들어주세요!

 */
var person = Animal(eyeCount: 2, name: "수강생")
print(person.feetCount)
print(person.eyeCount)
print(person.name)
print(person.introduce())
