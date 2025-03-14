// enum 질문
// OX 퀴즈
// Q. enum은 한국말로 구조체라고 부른다!?
// A. X
// Q. enum으로 정의하면 데이터 타입으로 사용할 수 없다?
// A. X
// Q. Swift의 enum은 값을 그룹화하여 안전하게 사용할 수 있는 데이터 타입이다!?
// A. O
// Q. enum은 원시 값을 가질 수 있으며, 문자열이나 정수등으로 원시 값을 설정할 수 있다?
// A. O
// Q. enum에 연관 값을 정의할 때는 case 뒤에 소괄호로 타입을 지정하여 연관값을 저장할 수 있다!?
// A. O


// enum 질문
// Q. enum에 대해서 설명해주세요.
// A. 연관 데이터들을 묶어서 관리
// Q. enum에서 그룹화 된 값을 정리하기 위해서 사용하는 키워드는 무엇인가요?
// A. case
// Q. enum에서 rawValue에 대해서 설명해주세요.
// A. 원시값
// Q. enum에서 rawValue를 사용하기 위해서는 어떻게 enum을 선언해야 되나요?
// A. rawValue의 타입을 : 사용해서 정함


// enum 질문
// 아래의 한국말을 코드로 작성해주세요.
// 계절을 나타내는 열거형 Season을 선언하세요.
// 봄, 여름, 가을, 겨울을 가질수 있습니다.
enum Season {
    case spring
    case summer
    case automn
    case winter
}

// enum 질문
// 아래의 한국말을 코드로 작성해주세요.
// 택배 상태를 나타내는 열거형 DeliveryStatus를 선언하세요.
// 주문 완료, 배송 중(송장 번호 포함), 배송 완료(날짜 포함)를 정의하세요.
// 이름은 자유롭게 만드시면 됩니다.
// 연관값을 사용해서 만들어주세요.
enum DeliveryStatus {
    case orderComplete
    case shipping(String)
    case shipCompleted(String)
}
let deliveryStatus = DeliveryStatus.shipping("배송 중")
print(deliveryStatus)

// enum 질문
// 아래의 코드를 보고 질문에 답변해주세요.
enum Month: Int {
    case january = 1
    case february
    case march
}

let currentMonth = Month(rawValue: 2)
let testmonth: Month = .january

// Q. currentMonth를 출력하면 어떤값이 나올까요?
// A. 옵셔널 february
// Q. testmonth의 이름은 컨밴션이 맞고 있나요?
// A. 아니오 testMonth
// Q. testmonth의 rawValue을 출력하면 어떤값이 나올까요?
// A. 1


// enum 질문
// Q. enum내에서 함수를 정의할 수 있나요?
// A. 네


// enum 질문
// Q. 아래의 한국말을 코드로 작성해주세요.
// 1. 교통 신호를 나타내는 열거형 TrafficLight를 선언하세요.
// 2. 각 신호등 상태인 red, yellow, green을 정의하세요.
// 3. enum 내부에 state 이름의 함수를 선언하고 문자열을 반환해주세요.
// state 함수는 red 일 때 "멈추세요", yellow일 때 "속도를 줄이세요", green일 때 "통과하세요"를 반환해주세요.
enum TrafficLight {
    case red
    case yellow
    case green

    func state() -> String {
        switch self {
        case .red:
            return "멈추세요"
        case .yellow:
            return "속도를 줄이세요"
        case .green:
            return "통과하세요"
        }
    }
}

// enum 질문
// 아래의 코드를 보고 질문에 답변해주세요.
enum NetworkState {
    case connected
    case disconnected(errorMessage: String)
    case connecting
}

let state = NetworkState.disconnected(errorMessage: "No Internet")
switch state {
case .connected:
    print("연결되었습니다.")
case .disconnected(let errorMessage):
    print("연결 실패: \(errorMessage)")
case .connecting:
    print("연결 중...")
}

// Q. 해당 코드를 실행하면 어떤 값이 출력되나요?
// A. 연결 실패: No Internet
// Q. case disconnected는 연관값을 저장하나요?
// A. O/X O
// Q. case connecting은 연관값을 저장하고 있나요?
// A. O/X X

// ---

// Struct 질문
// OX 퀴즈
// Q. 구조체는 프로퍼티(변수,상수) 와 메소드(함수)로 구성되어 있다?
// A. O
// Q. 구조체는 상속이 가능하다?
// A. X
// Q. mutating 키워드는 Struct에서 사용하는 키워드이다!?
// A. O
// Q. Struct는 reference type이다?
// A. X
// Q. 구조체 내부의 프로퍼티는 let으로 선언하고, 구조체의 인스턴스를 var로 선언했을 때 내부 프로퍼티의 값을 변경할 수 있을까요?
// A. X
// Q. 구조체 내부에 있는 저장되어 있는 변수를 메소드라고 부른다?
// A. X

// Struct 질문
// Q. mutating 키워드에 대해서 설명해주세요.
// A. 메소드에서 프로퍼티를 변경할 때 사용
// Q. struct에서 제공하는 memberwise init이란 무엇인가요?
// A. init을 명시하지 않아도 프로퍼티에 init 사용 가능
// Q. struct, class 안에 있는 함수를 부르는 이름은?
// A. 메소드

// Struct 질문
// 아래의 한국말을 코드로 작성해주세요.
// 1. 사람(Person)을 나타내는 구조체를 정의하세요.
// 2. name과 age 프로퍼티를 정의해주세요.
// 3. 자기소개 메소드를 추가하세요.
struct Person {
    var name: String
    var age: Int

    func introduce() {
        print("안녕하세요 \(name)입니다. \(age)살 입니다.")
    }
}

// Struct 질문
// 아래의 코드를 보고 질문에 답변해주세요.
struct Car {
    var brand: String
    var year: Int
}

let myCar = Car(brand: "CarBrand", year: 2024)
print(myCar.brand)

// Q. 위 코드의 출력값은 무엇일까요?
// A. CarBrand
// Q. myCar.year = 2025 를 할당 한 뒤에 myCar.year를 출력하면 어떻게 될까요?
// A. myCar는 let으로 선언되었기 때문에 컴파일 에러 발생


// Struct 질문
// 아래의 코드를 보고 질문에 답변해주세요.
struct Rectangle {
    var width: Int
    var height: Int

    func area() -> Int {
        return width * height
    }
}

let rect = Rectangle(width: 10, height: 20)
// Q. rect 상수에 area함수를 사용하여 area 변수에 할당하는 코드를 작성해주세요.
// A.
var area = rect.area()


// Struct 질문
// 아래의 한국말을 코드로 작성해주세요.
// 1. 구조체 Book을 정의하세요.
// 2. title, author, price 프로퍼티를 정의하세요.
// 3. 책 정보를 출력하는 메소드를 추가하세요.
struct Book {
    var title: String
    var author: String
    var price: Int

    func info() {
        print("\(title)")
    }
}

// Struct 질문
// 아래의 코드를 읽고 오류를 수정해보세요.
struct Point {
    var x: Int
//    let y: Int
    var y: Int

//    func moveTo(x: Int, y: Int) {
//        self.x = x
//        self.y = y
//    }
    mutating func moveTo(x: Int, y: Int) {
        self.x = x
        self.y = y
    }

    func multiple() -> Int{
        x * y
    }
}

//let point = Point(x: 5, y: 10)
var point = Point(x: 5, y: 10)
point.moveTo(x: 15, y: 20)
point.x = 20
// Q. 위의 코드를 수정해주세요.
// Q. 위의 코드에서 multiple 이름을 가진 x와 y의 곱한값을 반환하는 함수를 개발해주세요.


// Struct 질문
// 아래 코드를 보고 질문에 답변해주세요.
struct Product {
    var name: String
    var price: Int = 0
}

let item = Product(name: "Laptop")
print(item.price)
// Q. 어떤값이 출력되게 될까요?
// A. 0
// Q. [O/X] price에 값을 주어서 초기화할 수 있나요?
// A. O

// ---

// Class 질문
// OX 퀴즈
// Q. 클래스는 프로퍼티(변수,상수) 와 메소드(함수)로 구성되어 있다?
// A. O
// Q. 클래스는 상속이 가능하다?
// A. O
// Q. mutating 키워드는 class에서 사용하는 키워드이다!?
// A. X
// Q. 클래스는 reference type이다?
// A. O
// Q. 클래스는 멤버와이즈 init을 제공해준다?
// A. X
// Q. 클래스의 인스턴스를 let으로 선언하면 프로퍼티를 변경할 수 없습니다.
// A. X
// Q. 클래스 내부에 있는 저장되어 있는 함수를 메소드라고 부른다?
// A. O


// Class 질문
// 아래의 한국말을 코드로 작성해주세요.
// 1. Car라는 클래스를 정의하세요.
// 2. brand와 year라는 프로퍼티를 가지고, 초기화 메소드로 brand와 year를 설정하세요.
class Car {
    var brand: String
    var year: Int

    init(brand: String, year: Int) {
        self.brand = brand
        self.year = year
    }
}

// Class 질문
// 아래의 코드에서 init 초기화를 제거해보세요!
// 그리고 질문에 답변해주세요.
class Cat {
    var name: String?
    var age: Int = 0

//    init(name: String, age: Int) {  // <- 해당 코드블록 삭제하고 오류가 발생하지 않게 해주세요.
//        self.name = name
//        self.age = age
//    }
}

// Q. [O/X] Cat 인스턴스를 Var 변수에 넣은 뒤 age값을 변경하면 오류가 발생할까요!?
// A. X
// Q. [O/X] Cat 인스턴스를 let 상수에 넣은 뒤 age값을 변경하면 오류가 발생할까요!?
// A. X
// Q. let 인스턴스에 프로퍼티를 변경할 수 있다면 이유는 뭘까요!?
// A. 참조 타입


// Class 질문
// 아래의 코드를 보고 질문에 답변해주세요.
class Animal {
    var type: String
    var legs: Int

    init(type: String, legs: Int) {
        self.type = type
        self.legs = legs
    }

    func describe() -> String {
        return "This animal is a \(type) and has \(legs) legs."
    }
}

let dog = Animal(type: "Dog", legs: 4)
print(dog.describe())
// Q. 출력값은 무엇일까요!?
// A. This animal is a dog and has 4 legs.

// Class 질문
// 아래 질문에 답변해주세요.
// Q. class, enum, struct 중에 reference type은 어떤것들이 있나요?
// A. class
// Q. 클래스에서 deinit 메소드는 언제 호출되나요?
// A. 메모리 해제
// Q. 클래스에서 self 키워드의 의미에 대해서 설명해주세요.
// A. 자기 자신의 인스턴스
// Q. 클래스에서 convenience init과 init의 차이점은 무엇인가요?
// A. convenience init는 self.init을 호출해서 init을 실행해줘야 함

// Class 질문
// 아래 코드를 보고 질문에 답변해주세요.
class Laptop {
    var brand: String
    var memorySize: Int

    init(brand: String, memorySize: Int) {
        self.brand = brand
        self.memorySize = memorySize
    }

    func upgradeMemory(by amount: Int) {
        self.memorySize += amount
    }
}

let myLaptop = Laptop(brand: "Apple", memorySize: 8)
myLaptop.upgradeMemory(by: 8)
print(myLaptop.memorySize)
// Q. 이 코드의 출력값은 무엇일까요?
// A. 16
// Q. 해당 코드에서 class를 struct으로 변경되면 잘 작동할까요?
// A. X mutating

// Class 질문
// 아래의 한국말을 코드로 변환해주세요.
// 1. Student라는 클래스를 정의하세요.
// 2. name과 grade 프로퍼티를 가지고, 초기화 메소드로 name과 grade를 설정하세요.
// 3. 학생을 소개하는 메소드를 추가하세요.
class Student {
    var name: String
    var grade: String

    init(name: String, grade: String) {
        self.name = name
        self.grade = grade
    }

    func introduce() {
        print("안녕하세요 \(name)입니다. \(grade)입니다.")
    }
}

// ---

// 인스턴스 질문
// 아래의 질문에 답변해주세요.
// Q. class, struct, enum과 같은 설계도에서 실제 메모리에 생성되는 것을 무엇이라고 하나요?
// A. 인스턴스
// Q. 클래스나 구조체의 인스턴스를 만들 때 왜 init 키워드를 사용하는가요?
// A. 초기화

// 인스턴스 질문
// OX 퀴즈
// Q. 붕어빵 틀과 붕어빵의 관계처럼, class는 설계도이고, 그 설계도로 만들어진 실제 객체를 인스턴스라고 합니다.
// A. O
// Q. init 메소드를 사용하면 모든 변수와 상수(프로퍼티)를 초기화해야 합니다.
//    그러나 변수에 기본값을 지정했거나, Optional로 선언한 경우 초기화를 생략할 수 있습니다.
// A. O

// ---

// 프로퍼티 질문
// 아래의 질문에 답변해주세요.
// Q. 프로퍼티(Property)란 무엇인가요?
// A. class, struct, enum에 정의된 변수/상수
// Q. 저장 프로퍼티에 대해서 설명해주세요.
// A. 데이터를 저장하는 프로퍼티

// 프로퍼티 질문
// 아래의 퀴즈에 O/X로 답변해주세요.
// Q. enum에서 저장 프로퍼티를 선언할 수 있다!?
// A. X
// Q. 연산프로퍼티에는 직접 값을 저장할 수 없다!?
// A. X
// Q. 연산 프로퍼티에는 let 만 사용가능하고 var는 사용할 수 없다!?
// A. X
// Q. 프로퍼티 옵저버는 연산 프로퍼티에서도 사용할 수 있습니다.
// A. X

// 프로퍼티 질문
// 아래의 코드를 보고 질문에 답변해주세요.
struct Person {
    var name: String
    var age: Int = 0
}
// Q. 위 코드에서 name과 age는 어떤 종류의 프로퍼티인가요?
// A. 저장 프로퍼티

// 프로퍼티 질문
// 아래의 코드를 보고 질문에 답변해주세요.
struct Person2 {
    var name: String
    var age: Int = 20
    var isAdult: Bool {
        return age >= 20
    }
}
let person = Person2(name: "Test")
// Q. 위의 코드에서 isAdult는 어떤 프로퍼티 인가요?
// A. 연산 프로퍼티
// Q. person.isAdult을 출력하면 어떤값이 출력될까요?
// A. true


// 프로퍼티 질문
// 아래의 한국말을 코드로 작성해주세요.
// Car라는 구조체를 정의하고 brand와 year라는 저장 프로퍼티를 추가하세요.
// isNewCar라는 연산 프로퍼티를 추가하여, year가 2021 이상이면 true를 반환하세요.
struct Car {
    var brand: String
    var year: Int
    var isNewCar: Bool {
        year >= 2021
    }
}

// 프로퍼티 질문
// 아래의 코드를 보고 답변에 질문해주세요.
struct Person3 {
    var name: String
    var age: Int
    static var species = "Human"
}
// Q. species 는 어떤 프로퍼티 인가요?
// A. 타입 프로퍼티
// Q. species에 접근해서 출력하는 코드를 아래 작성해주세요.
// A.
print(Person3.species)

// 프로퍼티 질문
// 아래의 코드를 보고 질문에 답해주세요
struct Person4 {
    var age: Int {
        willSet {
            print("Age will be set to \(newValue)")
        }
        didSet {
            print("Age was \(oldValue)")
        }
    }
}

// Q. willSet와 didSet을 무엇이라고 부르나요?
// A. 프로퍼티 옵저버
// Q. age는 연산프로퍼티, 저장프로퍼티중 무엇인가요?
// A. 저장 프로퍼티
// Q. willSet, didSet 중 어떤게 먼저 호출되나요?
// A. willSet

// ---

// 메소드 질문
// 아래의 질문에 답변해주세요.
// Q. 인스턴스 메소드에 대해서 설명해주세요.
// A. 인스턴스를 통해 호출하는 메소드


// 메소드 질문
// OX 퀴즈
// Q. class 내부에서 사용하는 함수를 메소드라고 부른다?
// A. O
// Q. struct에서 인스턴스 메소드를 사용하려면 mutating 키워드를 사용해야만 프로퍼티 값을 변경할 수 있다.
// A. O
// Q. 클래스의 인스턴스 메소드는 프로퍼티를 직접 변경할 수 있다.
// A. O
// Q. class, struct, enum 모두에서 타입 메소드를 사용할 수 있으며, static 키워드를 사용해 정의할 수 있다.
// A. O


// 메소드 질문
// 아래의 한국말로 코드로 작성해주세요.
// Car라는 구조체를 정의하고, speed라는 Int 타입의 프로퍼티를 추가하세요.
// accelerate라는 인스턴스 메소드를 추가하여, speed에 10을 더해 속도를 증가시키세요.
struct Car {
    var speed: Int

    mutating func accelerate() {
        speed += 10
    }
}

// 메소드 질문
// 아래의 코드를 보고 질문에 답변해주세요.
class Calculator {
    var defaultValue = 0
    static func add(a: Int, b: Int) -> Int {
        return a + b + defaultValue
    }
}
// Q. 위의 코드에서 오류가 발생하는 이유에 대해서 설명해주세요.
// A. defaultValue는 인스턴스 생성 시 사용 가능, 사용하려면 defaultValue도 타입 프로퍼티로 정의
// Q. Calculator 클래스의 add 메소드는 어떻게 호출할 수 있나요?
// A.
Calculator.add(a: 1, b: 2)

// ---

// 옵셔널 질문
// 아래의 질문에 답변해주세요.
// Q. 옵셔널이란 무엇인가요?
// A. 값이 있을수도 없을수도 있는 데이터 타입


// 옵셔널 질문
// OX 퀴즈
// Q. Swift는 기본적으로 nil을 가질 수 있다!?
// A. X
// Q. 옵셔널 타입의 변수는 nil을 가질 수 있다!?
// A. O
// Q. 옵셔널 타입은 기본 타입과 달리 값이 없을 수 있는 상태를 처리할 수 있다.
// A. O

// 옵셔널 질문
// 아래의 코드를 보고 질문에 답변해주세요.
var optionalString: String? = "Hello, world!"
print(optionalString)
// Q. 위의 코드를 실행하면 어떤값이 출력될까요?
// A. 옵셔널 Hello, world!



// 옵셔널 질문
// 아래의 한국말을 코드로 작성해주세요.
// 1. Int 타입의 optionalInt라는 변수를 선언하고 옵셔널로 설정하세요.
// 2. 해당 변수에 nil 값을 할당하세요.
var optionalInt: Int? = nil

// 옵셔널 질문
// 아래의 코드를 보고 질문에 답변해주세요.
struct Car {
    var model: String?
    var year: Int?
}

var myCar = Car(model: nil, year: 2020)
print(myCar.model)
// Q. 위 코드를 실행하면 어떤 값이 출력되나요?
// A. nil
// Q. [O/X] myCar 변수는 옵셔널 타입인가요?
// A. X

// 옵셔널 질문
// 아래의 코드를 보고 질문에 답변해주세요.
let optionalInt: Int? = 5
print(optionalInt + 3)
// Q. 위의 코드에서 오류가 나는 이유가 무엇인가요?
// A. Int?와 Int를 연산하려고 함 (옵셔널 언래핑 해야함)


// 옵셔널 질문
// 아래의 질문에 답변해주세요.
// Q. 옵셔널 체이닝(Optional Chaining)이란 무엇인가요?
// A. 옵셔널을 안전하게 사용할 수 있으며, ?를 사용해서 접근함

// 옵셔널 질문
// 아래의 코드를 보고 질문에 답변해주세요.
struct Owner {
    var pet: Pet?
}

struct Pet {
    var name: String?
}

var owner = Owner(pet: Pet(name: "Buddy"))
print(owner.pet?.name)
// Q. 위의 코드의 실행하면 어떤 값이 출력되나요?
// A. Buddy
owner = Owner(pet: nil)
print(owner.pet?.name)
// Q. 위의 코드를 실행하면 어떤 값이 출력될까요!?
// A. nil


// 옵셔널 질문
// OX 퀴즈
// Q. 옵셔널 체이닝을 사용할 때 중간 값이 nil이면 전체 연산이 중단되고 nil이 반환된다.
// A. O


// 옵셔널 질문
// 코드를 보고 질문에 답변해주세요
let stringValue: String? = "Hello"
print(stringValue?.count)
// Q. 위 코드를 실행하면 어떤값이 출력될까요?
// A. 옵셔널 5

// 옵셔널 질문
// 아래의 질문에 답변해주세요.
// Q. 옵셔널 바인딩이란 무엇인가요?
// A. 옵셔널로 래핑된 값에서 값만 추출하는 것
// Q. 강제 언래핑(Force Unwrapping)란 무엇인가요?
// A. 옵셔널 타입의 데이터를 강제로 언래핑 함
// Q. 옵셔널 언래핑하는 방법에 대해서 아는만큼 설명해주세요.
// A. 옵셔널 바인딩, ??, 언래핑, 묵시적 언래핑

// 옵셔널 질문
// OX 퀴즈
// Q. 옵셔널 바인딩을 사용할 때는 반드시 if let이나 guard let을 사용해야 한다.
// A. O
// Q. guard let을 사용했을 때 옵셔널 언래핑에 성공하면 함수를 종료해야 한다!?
// A. X
// Q. 옵셔널 값을 강제 언래핑하면 값이 nil일 경우 런타임 오류가 발생한다.
// A. O

// 옵셔널 질문
// 아래의 코드를 보고 질문에 답변해주세요.
var name: String? = "Brody"
if let unwrappedName = name {
    print(unwrappedName)
}
// Q. 위 코드를 실행하면 출력 결과는 무엇인가요?
// A. Brody


// 옵셔널 질문
// 아래의 코드를 보고 질문에 답변해주세요.
var optionalValue: Int? = nil
print(optionalValue ?? 10)
// Q. 위 코드를 실행하면 출력 결과는 무엇인가요?
// 10

// 옵셔널 질문
// Q. 아래의 한국말을 코드로 작성해주세요.
// 1. String? 타입의 변수를 선언하고, nil일 때 기본값으로 "Unknown"을 출력하는 코드를 작성하세요.
var variable: String?
print(variable ?? "Unknown")

// 옵셔널 질문
// 아래의 코드를 보고 질문에 답변해주세요.
var age: Int? = 25
print(age!)
// Q. 위 코드를 실행하면 출력 결과는 무엇인가요?
// A. 25

// 옵셔널 질문
// 아래의 코드를 보고 질문에 답변해주세요.
var optionalName: String? = "Brody"
print(optionalName!)
optionalName = nil
print(optionalName!)
// Q. 위 코드를 실행하면 어떤 오류가 발생하며, 그 이유는 무엇인가요?
// nil을 강제 언래핑 했다~ 라는 오류

// ---

// 프로토콜 질문
// 아래의 질문에 답변해주세요.
// Q. 프로토콜에 대해서 설명해주세요.
// A. 청사진, 인터페이스, 사용할 프로퍼티와 메소드를 미리 정의해놓음
// Q. 프로토콜에서 프로퍼티를 정의하는 방법에 대해서 설명해주세요.
// A. var name: type { get set }
// Q. 클래스 전용 프로토콜을 정의하려면 어떻게 해야 할까요?
// A. AnyObject를 채택


// 프로토콜 질문
// OX 퀴즈
// Q. 프로토콜은 class, struct 에서만 사용할 수 있다?
// A. X
// Q. 프로토콜에서 정의한 프로퍼티는 항상 var 만 사용할 수 있다?
// A. O
// Q. 프로토콜을 채택한 class는 프로토콜에서 정의한 모든 프로퍼티, 메소드를 구현해야 한다?
// A. O
// Q. 프로토콜은 여러개를 채택할 수 있다!?
// A. O
// Q. 프로토콜에서 정의된 메소드는 기본적으로 구현되어 있기 때문에, 프로토콜을 채택한 타입은 이를 재정의할 필요가 없다.
// A. X


// 프로토콜 질문
// 아래의 한국말을 코드로 작성해주세요.
// Car라는 프로토콜을 선언하고, drive라는 메소드를 정의해주세요.
// 이 메소드는 파라미터를 받지 않고, String을 반환해야 합니다.
// Car 프로토콜을 채택하는 MyCar class 를 정의해보세요.
protocol Car {
    func drive() -> String
}

class MyCar: Car {
    func drive() -> String {
        "부릉 부릉"
    }
}


// 프로토콜 질문
// 아래의 코드를 보고 질문에 답변해주세요.
protocol Playable {
    func play() -> String
}

class Game: Playable {
    func play() -> String {
        return "Playing game"
    }
}

let game = Game()
print(game.play())
// Q. 위 코드를 실행하면 출력 결과는 무엇인가요?
// A. Playing game


// 프로토콜 질문
// 아래의 한국말을 코드로 작성해주세요.
// Q. Walkable이라는 프로토콜을 정의하고, walk라는 메소드를 구현하세요. 이 메소드는 String을 반환합니다.
// 해당 프로토콜에서 feetCount라는 발갯수를 저장할 수 있는 프로퍼티도 정의해주세요.
// 그리고 Dog라는 구조체가 이 프로토콜을 채택하고 "Dog is walking"이라는 문자열을 반환하도록 코드를 작성하세요.
protocol Walkable {
    var feetCount: Int { get set }

    func walk() -> String
}

struct Dog: Walkable {
    var feetCount: Int

    func walk() -> String {
        "Dog is walking"
    }
}

// ---

// extension 질문
// 아래의 질문에 답변해주세요.
// Q. extension에 대해서 설명해주세요.
// A. class, struct, enum을 확장해서 연관있는 기능끼리 구분할 수 있음
// Q. extension은 어떤것을 확장할 수 있나요?
// A. 메소드, 연산 프로퍼티 가능


// extension 질문
// OX 퀴즈
// Q. extension을 사용하면 기존의 구조체, 클래스의 원본 코드를 수정할 필요 없이 기능을 추가할 수 있다.
// A. O
// Q. extension에서는 저장 프로퍼티를 정의할 수 있다.
// A. X 연산 프로퍼티 사용
// Q. extension에서 프로토콜을 채택하면 해당 프로토콜의 요구사항을 반드시 구현해야 한다.
// A. O
// Q. extension을 여러 번 선언하여 하나의 타입을 여러 단계로 확장할 수 있나요?
// A. O
// Q. extension을 사용하면 기본 데이터 타입(Int, String 등)도 확장할 수 있다.
// A. O
