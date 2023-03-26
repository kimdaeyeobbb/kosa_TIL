# 실습1

다음에 제시된 3개의 소스를 주어진 클래스명으로 구현하여 소스만 압축한 다음 강사메일로 제출한다.

제출 소스명 :  소스19.zip
강사메일주소 : unicodaum@hanmail.net
메일제목 : 자바API실습1-XXX



[ 실습 1 ] LinkedList 실습

day7.FriendTest.java 를 찾아서 day11.LinkedListLab1.java 로
복사한다.
Friend 타입의 배열에 Friend 객체를 저장하는 부분을
LinkedList 객체를 생성해서 저장하고 처리하는 소스로 변경하여 구현한다.

```java
배열이 아닌 LinkedList에 저장하고 처리할 것
```

[ 실습 2 ] HashSet 실습

10 부터 30 까지의 숫자를 10개 추출하여 화면에 다음과 같이 출력하는
HashSetLab1 이라는 클래스를 구현한다.
중복 숫자는 허용하지 않으며 추출되는 숫자를 HashSet 에 저장하여 처리한다.

오늘의 로또 번호 : 10, 11, 25, 22, 20, 21, 15, 27, 28, 13

```java
HashSetLab1 클래스 작성
hashset api를 이용해서 로또 구현
```

[ 실습 3 ] HashMap 실습
표준입력으로 나라이름과 인구수를 입력받아
HashMap 객체에 5개까지 저장한 후에 출력하고 종료한다.
단, 입력되는 나라명은 모두 달라야 한다.

클래스명 : HashMapLab1

- 실행 결과

  나라이름을 입력하세요 :
  인구 수를 입력하세요 :
  *저장되었습니다.*
  나라이름을 입력하세요 :
  인구 수를 입력하세요 :
  *나라명 xxx는 이미 저장되었습니다.*
  :

  5개가 모두 입력되었습니다.
  입력된 데이터 : XX(nn), XX(nn)....

```java
key: string
value: integer

나라이름: key
인구수: value

저장 후 `저장되었습니다`메시지 출력할 것
이미 저장되어있으면 `나라명 xxx은 이미 저장되어있습니다` 출력
5쌍이 저장되면 끝낼 것
똑같은 나라명이 2번이상 입력되면 저장못함. 반복문은 5번이상 돌것임.
입력된 데이터를 
        
나라이름(인구수) , 나라이름2(인구수2), ... 꼴로 출력할 것

구현하는데 있어서 필요한 API를 Document를 보고 찾을 것
```


  # 실습 2
