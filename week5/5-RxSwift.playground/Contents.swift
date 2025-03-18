/**
 반응형 프로그래밍
 - 프로그래밍의 패러다임으로 이벤트가 발생할 때 해당 이벤트를 처리하는 프로그래밍 방법
 - 이벤트를 발생하는 곳을 구독하고 있다가 이벤트가 발생하면 그 때 동작을 진행함
 - 비동기 작업을 간결하게 처리하고, 상태 변화에 반응할 수 있음

 RxSwift(Reactive eXtension Swift
 - 마이크로소프트에서 개발한 비동기 이벤트의 핸들링을 도와주는 오픈소스 라이브러리
 - Apple에서 제공하는 Combine의 개념과 사용방법이 유사함
 - 데이터스트림을 구독(관찰)하고 있다가 이벤트가 방출되면 작업을 진행함
 - 지금 당장 이벤트가 발상되는 게 아니라 언젠가 이벤트가 발생될 데이터스트림을 관찰하고 있음
 - Observer, Observable, Operator로 구성됨

 Observable
 - 데이터스트림과 이벤트 방출을 해주는 역할
 - 발생하는 이벤트의 종류
   - onNext: 아이템 방출
   - OnCompleted: complete 되었을 때 방출
   - OnError: 에러 발생 시 방출
   - onDisposed: 옵저버가 처분되었을 때 방출

 Observer
 - 구독자, 관찰자라고 불림
 - 데이터스트림을 관찰하고 있다가 이벤트가 방출되면 처리하는 역할
 - subscribe(onNext, OnCompleted, OnError, onDisposed)

 Operator
 - RxSwift의 사용을 도와줌
 - 보통 Observable 상에서 동작하고 Observable을 리턴함

 Hot Observable
 - 옵저버가 옵저버블을 구독한 순간부터 default 이벤트를 방출함
 - 예를 들어, 슬랙 채널에 초대받았을 때 이전 대화 내역을 볼 수 있는 것

 Cold Observable
 - 구독한 순간 default 이벤트가 없고 구독하고 나서 이벤트가 방출하면 그 때 이벤트를 받을 수 있음
 - 예를 들어, 오픈 카톡방에 들어갔을 때 이전 대화 내역은 볼 수 없고 새로운 대화 내역만 볼 수 있는 것

 Subject
 - Observable + Observer
 - 옵저버이면서 옵저버블 역할을 할 수 있음
 - Bahavior Subject, Publish Subject, Async Subject, Replay Subject가 존재함
 - Behavior Subject
   - Hot Observable
   - 구독을 시작하면 값을 받을 수 있음
   - 처음 생성할 때 default 값을 제공해야 함
 - Publish Subject
   - Cold Observable
   - 구독을 시작하면 값을 제공하지 않고 이벤트가 방출될 때까지 기다림
   - default 값을 제공하지 않아도 됨
 */
