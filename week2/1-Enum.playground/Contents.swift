// **실습하기**

// 1️⃣ 기본 `enum` 사용 : 아래의 설명을 코드로 개발해보세요!

/**
 1️⃣ `enum` 선언하기

 1. `Direction` 이름을 가진 `enum`을 선언하세요.
 2.  north, east, south, west 값을 그룹화합니다.
 3. `Direction` 안에서 함수를 선언하세요.
     1. 함수의 이름은 toString 입니다.
     2. 함수의 파라미터는 없고 리턴타입은 String 입니다.
     3. 함수에서 switch를 각각의 case에 맞게 한글로 “동”, “서”, “남”, “북”을 반환합니다.
 */
enum Direction {
    case north
    case east
    case south
    case west

    func toString() -> String {
        switch self {
        case .north: return "북"
        case .east: return "동"
        case .south: return "남"
        case .west: return "서"
        }
    }
}

/**
 2️⃣ `enum` 사용하기

 1. 변수의 이름은 `direction`이고 `Direction`  타입이며 초기값은 `.west`를 선언합니다.
 2. print를 사용하여 `direction` 를 출력해보세요.
 3. if를 사용하여 `direction` 가 .east와 같다면 “동쪽입니다”를 출력해주세요.
 4. `Direction` 에서 선언한 `toString` 함수를 호출하여 print 함수에 넣어서 출력해보세요.
 */
var direction = Direction.east
//var direction: Direction = .west
print(direction)

if direction == .east {
    print("동쪽입니다")
}

print(direction.toString())

// 2️⃣ `enum` rawValue 사용 : 아래의 설명을 코드로 개발해보세요.

/**
 1️⃣ `enum` 선언하기

 1. `Rainbow` 이름을 가진 `enum` 을 선언해주세요.
 2. raw value의 타입은 `Int`로 만들어주세요.
 3. `case`로 red, orange, yellow, green, blue, navy, purple을 갖게 해주세요.
 4. 각각의 raw value는 red는 0이고 orange는 1, yellow는 2 처럼 1씩 추가한 값을 설정해주세요.
 */
enum Rainbow: Int {
    case red = 0
    case orange = 1
    case yellow = 2
    case green
    case blue
    case navy
    case purple
}

/**
 2️⃣ `enum` 사용하기

 1. 변수 `rainbow`의 타입은 `Rainbow`로 선언만 해주세요.
 2. `rainbow` 에 yellow 값을 할당해주세요.
 3. `rainbow`의 rawValue를 출력해서 확인해보세요.
 4. `rainbow2` 변수를 만들어서 rawValue를 사용하여 보라색을 할당해주세요
 */
var rainbow: Rainbow
rainbow = .yellow
print(rainbow.rawValue)
var rainbow2 = Rainbow(rawValue: 6)

// 3️⃣ enum 연관값 사용: 아래의 설명을 코드로 개발해보세요.

/**
 1️⃣ `enum` 선언하기

 1. `Beverage` enum을 선언해주세요
     1. `case coffee`는 String, Int 를 연관값으로 사용합니다.
         1. String의 이름은 coffeeName, Int의 이름은 size로 설정해주세요.
     2. `case tea는` String, Bool을 연관값으로 사용합니다.
         1. String의 이름은 teaName, Bool의 이름은 isIced로 설정해주세요.
     3. `case juice`의 연관값은 String타입의 juiceName이름으로 설정해주세요.
 */
enum Beverage {
    case coffee(coffeeName: String, size: Int)
    case tea(teaName: String, isIced: Bool)
    case juice(juiceName: String)
}

/**
 2️⃣ enum 사용하기

 1. 변수 `myDrink`에 `Beverage` 의 커피를 할당해주세요.
     1. coffeeName에는 “아이스아메리카노”, size에는 100을 할당해주세요
 2.  `switch` 를 사용하여 각각의 케이스에 맞게 `print` 를 출력해주세요.
     1. 각각의 case는 자유롭게 개발해보세요!
 */
var myDrink = Beverage.coffee(coffeeName: "아이스아메리카노", size: 100)
switch myDrink {
case .coffee(let coffeeName, let size):
    print("\(coffeeName) \(size)사이즈")
case .tea(let teaName, let isIced):
    print("\(teaName) 아이스?\(isIced)")
case .juice(let juiceName):
    print("\(juiceName)")
}
