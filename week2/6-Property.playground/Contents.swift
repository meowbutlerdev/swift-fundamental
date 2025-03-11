// **실습하기**

/**
 1. **저장 프로퍼티 만들기**
     - 구조체 AppleDevice 를 선언해주세요.
     - 아래의 저장 프로퍼티를 선언해주세요.
         - String 타입의 modelName 변수 → 모델이름을 뜻합니다.
         - Int 타입의 releaseYear 상수 → 출시년도를 뜻합니다.
         - String 타입의 owner 변수 → 기기의 주인을 뜻합니다.
 */

/**
 2. **연산 프로퍼티 만들기**
     - 연산 프로퍼티를 선언해주세요.
         - isNew 연산 프로퍼티를 만들어주세요.
         - isNew 의 타입은 Bool 입니다.
         - isNew는 get만 제공하는 연산프로퍼티 입니다.
         - 만약 releaseYear가 2020 이상이라면 true 아니라면 false 를 반환해주세요.

 */

/**
 3. **타입 프로퍼티 실습**
     - AppleDevice 의 모든 인스턴스가 공통적으로 접근할 수 있는 타입프로퍼티를 선언해주세요.
         - 타입 프로퍼티의 이름은 companyName이고 값은 “Apple”을 할당해주세요

 */

/**
 4. **프로퍼티 옵저버 실습**
     - owner가 변경된다면 프로퍼티 옵저버를 사용해서 변경되기 전과 변경된 후에 아래의 작업을 진행해주세요.
         - 변경 전 : “새로운 주인으로 변경될 예정입니다. 새로운 주인은 @@@@ 입니다”
         - 변경 후 : “새로운 주인으로 변경되었습니다. 전 주인은 @@@@ 입니다”

 */

/**
 5. 위의 AppleDevice를 사용하여 인스턴스를 만들고 4가지의 프로퍼티에 대해서  사용해보세요.
 */

struct AppleDevice {
    var modelName: String
    let releaseYear: Int
    var owner: String {
        willSet {
            print("새로운 주인으로 변경될 예정입니다. 새로운 주인은 \(newValue) 입니다")
        }

        didSet {
            print("새로운 주인으로 변경되었습니다. 전 주인은 \(oldValue) 입니다")
        }
    }

    var isNew: Bool {
        if releaseYear >= 2020 {
            return true
        } else {
            return false
        }
    }

    static let companyName = "Apple"
}

var appleDevice = AppleDevice(modelName: "아이폰", releaseYear: 2021, owner: "춘장")
appleDevice.owner = "감태"
