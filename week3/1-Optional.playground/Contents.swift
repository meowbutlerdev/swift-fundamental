//**실습하기**

/**
 1. **실습 1** : 옵셔널 실습.
     - 변수나 상수에 넣어서 테스트해보세요.
     - String, Int, Float, Bool, Array, Dictionary
     - 옵셔널 타입의 변수에 nil을 할당 후 print를 해보세요.
     - 옵셔널 타입의 변수을 사용하면서 테스트해보세요.
     - print를 사용하여 옵셔널로 래핑된 값을 확인해보세요.
     - 연산자를 사용하여 옵셔널 타입과 일반 타입이 연산이 되는지 테스트해보세요.
 */
var string: String? = nil
var int: Int? = 1
var float: Float? = 1.1
var bool: Bool? = nil
var array: [Int]? = nil
var dict: [Int: Int]? = nil
print(string, int, float, bool, array, dict)
//print(int + int)
print(int == 1)

/**
 2. **실습 2** : `struct` 옵셔널 체이닝 실습
     1.  아래의 구조체를 개발해주세요.
         1. `Dog` 구조체
             1. 변수의 이름은 `toy`이고 타입은 `옵셔널 String`  프로퍼티를 생성해주세요.
         2. `Person` 구조체
             1. 변수의 이름은 `pet` 이며 타입은 `옵셔널 Dog` 프로퍼티를 생성해주세요.
     2. Person 인스턴스를 만들어서 옵셔널 체이닝을 사용하여 `pet` 프로퍼티의 `toy` 값에 접근해보세요.
 */
struct Dog {
    var toy: String?
}

struct Person {
    var pet: Dog?
}
var person1: Person? = nil
print(person1?.pet?.toy)

var person2: Person? = Person(pet: nil)
print(person1?.pet?.toy)

var person3: Person? = Person(pet: Dog(toy: "nil"))
print(person3?.pet?.toy)

/**
 3. **실습 3:** 클로저 옵셔널 체이닝
     1. 변수 optionalClosure를 만들어주세요. 타입은 (Int → Void)의 옵셔널 값으로 해주세요.
     2. optionalClosure 에 클로저를 생성하여 할당해주세요.
         1. 클로저는 파라미터로 받은 Int값을 print 하게 만들어주세요.
     3. optionalClosure를 실행해보세요.
 */
var optionalClosure: ((Int) -> Void)? = { value in
    print(value)
}
optionalClosure?(3)
