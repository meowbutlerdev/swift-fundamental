// 실습하기

// 1️⃣ 아래의 함수를 만든 후 사용해보세요.
/**
 - 함수의 이름은 introduce 입니다.
 - 함수의 파라미터 타입은 String이고 이름은 name 입니다.
 - 리턴타입은 String 입니다.
 - 구현부에서는 파라미터를 사용하여 “안녕하세요. \(name)입니다” 를 반환합니다.
 - 함수를 사용해보세요.
 - 함수의 결과값을 변수에 저장한 뒤 해당 변수를 print 해보세요.
 */
func introduce(name: String) -> String {
    return "안녕하세요. \(name)입니다"
}
print(introduce(name: "춘장"))

/**
 2️⃣ 아래의 함수를 만든 후 사용해보세요.

 - 함수의 이름은 plus 입니다.
 - 함수의 파라미터는 2개로 데이터타입은 모두 Int 입니다.
 - 파라미터의 이름은 자유롭게 만드시면 됩니다.
 - 반환타입은 Int 입니다.
 - 구현부에서 파라미터로 받는 2개의 값을 더하여 반환합니다.
 - 함수를 만들었다면 사용해보세요.
 - 함수의 결과값을 변수에 저장해보세요.
 */
func plus(x: Int, y: Int) -> Int {
    return x + y
}
print(plus(x: 3, y: 5))

/**
 3️⃣ 아래의 함수를 만들 후 사용해보세요.

 - 함수의 이름은 helloWorld 입니다.
 - 함수의 파라미터는 없습니다.
 - 함수의 리턴타입은 없습니다.
 - 함수의 구현부에서는 “Hello World”를 출력합니다.
 - helloWorld 함수를 호출해보세요.
 */
func helloWorld() {
    print("Hello World")
}
helloWorld()
