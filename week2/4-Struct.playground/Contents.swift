// **실습하기**

/**
 1. **실습 1** : class 에서 실습한 것처럼 5개 이상의 struct을 만들어보세요.
 */
struct Animal {
    var feetCount: Int
    var eyeCount: Int

//    func updateFeetCount(feetCount: Int) {
//        self.feetCount = feetCount
//    }

    mutating func updateFeetCount(feetCount: Int) {
        self.feetCount = feetCount
    }
}

struct Phone {
    let brand: String
    let price: Int
}

struct Address {
    let country: String
    let city: String
}

struct Book {
    let title: String
    let author: String
}

struct Movie {
    let title: String
    let actors: [String]
}


/**
 2. **실습 2** : 구조체의 인스턴스를 `let`으로 만든 후 내부 프로퍼티를 수정해서 오류가 발생하는 것을 확인해보세요.(클래스에서는 됩니다 🙂)
 */
let cat = Animal(feetCount: 2, eyeCount: 2)
//cat.feetCount = 4


/**
 3. **[심화]실습 3** : class와의 차이점에 대해서 연습해보세요!
     1. struct, class 에서 초기화하는 방법이 다른것을 확인해보세요.
     2. 만들어진 인스턴스를 상수에 저장하고 프로퍼티를 변경해보세요.
     3. 프로퍼티를 변경하는 메소드를 만들어서 사용해보세요.
     4. 함수를 만들어서 인스턴스를 파라미터로 받아보고 함수내부에서 프로퍼티를 변경해보세요 🙂
 */
var dog = Animal(feetCount: 2, eyeCount: 2)
dog.updateFeetCount(feetCount: 4)
print(dog)
