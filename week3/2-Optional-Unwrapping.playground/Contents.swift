//**실습하기**

/**
 1.  **실습 1** : 옵셔널 실습에서 만들었던 코드들을 언래핑 해보세요.
     - 옵셔널 바인딩
     - 기본값 제공
     - 옵셔널 강제 언래핑
     - 묵시적 언래핑
 */
var stringValue: String?

//print(stringValue!)
print(stringValue ?? "Default Value")

if let stringValue = stringValue {
    print(stringValue)
} else {
    print("stringValue is nill")
}

stringValue = "Hello"
if let stringValue = stringValue {
    print(stringValue)
} else {
    print("stringValue is nill")
}

print(stringValue ?? "Bye")

var intValue: Int!
print(intValue)

/**
 2. 실습 2: 위에서 언래핑 한 값을 다른값과 연산을 해보세요.
 */
var intValue2: Int? = 123
if let intValue2 = intValue2 {
    print(intValue2 + 1)
}

/**
 3. **실습 3** : 옵셔널 강제 언래핑, 묵시적 언래핑에 nil을 할당한 뒤 접근하여 오류가 발생하는것을 확인해보세요.
 */

