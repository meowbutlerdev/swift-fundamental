// 실습하기

/**
 1️⃣ `Array` 실습하기 : 아래를 코드로 만들어주세요!

 - 변수 `array`에 `Int 배열` 타입으로 빈 배열을 선언해주세요.
 - `for in` 문을 사용하여 `array`에 0부터 10까지 값을 넣어주세요.
 - `array` 에 `15`, `20` 값을 추가해주세요.
 - `array` 에서 0번째 값을 삭제해주세요.
 - `for`를 사용하여 `array`를 반복하고 홀수일 때만 출력해주세요.
 */
var array: [Int] = []
for i in 0...10 {
    array.append(i)
}
array.append(contentsOf: [15, 20])
array.removeFirst()
for i in array {
    if i % 2 == 1 {
        print(i)
    }
}

/**
 2️⃣ `Set` 실습하기 : 아래를 코드로 만들어주세요.

 - 변수 `set` 에 `String` 타입으로 “1”, “2”, “3” 값이 들어있는 Set을 만들어서 할당해주세요.
 - `set` 에 “3” 값을 추가해보세요.
 - `set` 을 print해서 어떤 값이 있는지 확인해보세요.
 - `isFourContain` 변수에 set에 “4”가 포함되어 있는지 확인하는 함수를 사용하여 결과값을 저장해주세요.
 - `isFourContain` 변수를 print해서 값을 확인해보세요.
 - `set` 에서 “1” 값을 삭제해주세요.
 - `set` 을 print해서 어떤 값이 있는지 확인해보세요.
 */
var set: Set = ["1", "2", "3"]
set.insert("3")
print(set)
let isFourContain = set.contains("4")
print(isFourContain)
set.remove("1")
print(set)

/**
 3️⃣ `Dictionary` 실습하기 : 아래의 코드를 만들어주세요.

 - 변수 `dictionary`에 `key의 타입은 String`이고 `value의 타입은 String`인 빈 Dictionary를 생성해주세요.
 - `dictionary` 의 “A” 키에는 “Apple”값을 넣어주세요.
 - `dictionary` 의 “B”키에는 “Banana”값을 넣어주세요.
 - `dictionary`의 A키에 있는 값을 print를 사용하여 출력해보세요.
 - `dictionary`의 “A”키에는 “Avocado” 값을 넣어주세요.
 - `dictionary`의 A키에 있는 값을 print를 사용하여 출력해보세요.
 - `dictionary` 의 값이 몇개가 저장되어 있는지 print를 사용해서 출력해보세요.
 */
var dictionary: [String: String] = [:]
dictionary["A"] = "Apple"
dictionary["B"] = "Banana"
print(dictionary["A"])
dictionary["A"] = "Avocado"
print(dictionary["A"])
print(dictionary.count)
