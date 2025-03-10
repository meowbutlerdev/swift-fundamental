// 실습하기

/**
 1️⃣  아래의 조건에 맞는 기본 클로저를 만들어보세요.

 - minusClosure 상수의 타입은 (Int, Int) → Int 입니다.
 - 클로저 구현부는 두개의 Int값을 받아서 뺀 뒤 반환합니다.
 - minusClosure 상수를 호출해보세요.
 */
let minusClosure: (Int, Int) -> Int = { x, y in
    return x - y
}
print(minusClosure(5, 3))

/**
 2️⃣  1번에서 만든 클로저에 파라미터 이름을 생략해보세요.
 */
let minusClosure2: (Int, Int) -> Int = {
    return $0 - $1
}
print(minusClosure2(5, 3))
