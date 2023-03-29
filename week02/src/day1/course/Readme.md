# 0. 컴퓨터 입문

- 문자를 사용할 수 있게 코드값이 정해져 있음

- 코드값이 컴퓨터마다, 나라마다 다르면 혼란이 초래될 것임.

- 영문,한글에 대한 코드값만 잘 처리되면 우리는 만족할 수 있음

- 영문에 대한 코드값은 아스키 (ASCII), 8895-1 (코드값은 정의해놓은 코드셋의 이름)

## 0.1. 컴퓨터상의 한글

- 한글 코드는 언제 정해졌을까? (컴퓨터 내에 한글 코드를 쓸 수 있게 만든것은 언제일까?)
    - 1970년대
        - 이때 사용한 한글 코드는 제조사마다 달랐음.
    - 1987년
        - 우리나라의 표준 한글 코드가 정해짐
    - KSC5601
      (EUC-KR ⇒ 한국어 코드셋을 의미함. 외국에서는 이렇게 말해야 알아먹음. KSC5601하면 못알아 먹음)
        - 영문은 알파벳 대문자 26개+소문자 26개만 정하면됨. 기껏해야 52개의 코드만 있으면됨. 하지만 한글은 글자 초/중/종성 조합형이라 엄청나게 많은 글자들을 가지고 있다.
    - EUC-KR
        - 외국에서 공식적으로 사용하는 우리나라 한글 코드
    - CP949 (CP949)
        - MS에서 한글 코드에 대해서 자기 마음대로 이름붙임
        - MS949라고도 함
- 코드값은 같으나 이름들이 이렇게나 다르다. (모두 같은 한글 코드를 의미함)
- 한글은 2byte 체계
- `가`
    - 0xB0A1임
    - 외국에서는 0xBOA1가 `가`대신 다른 문제로 사용할 수 있음
- 프로그램을 실행시키는 환경에 따라서 문자들이 다르게 출력됨.

## 0.2. 컴퓨터상의 영어

- 영문자는 기껏해야 코드 개수가 52개이다.

    - 1byte 공간이면 코드값을 충분히 다 표현할 수 있다
    - 0x00 ~ 0x7F까지는 이미 아스키가 가져다가 썼다.
    - 우리는 이와같이 다 가져다가 쓸 수 없으므로 2byte 체계이다

- `A`

    - 0x41

### 아스키 코드

- 아스키는 프로그래밍을 하다보면 접할일이 많다.

- 소문자 & 대문자 차이를 일관되게 가져가기 위해서 중간중간에 특수문자를 채워넣음

- [아스키 코드표(ASCII Table)](https://stepbystep1.tistory.com/10)

## 0.3 유니코드

- 전 세계의 모든 문자를 컴퓨터에서 일관되게 표현하고 다룰 수 있도록 설계된 문자 처리 방식
- 지구상의 모든 문자들의 코드값을 하나로 통일하자!라고해서 유니코드에 대한 필요성이 대두됨

### 유니코드 문자 인코딩 방식

- 인코딩
    - 사용자가 입력한 문자 및 기호를 컴퓨터가 이용할 수 있는 신호로 바꾸는 것

<br>

#### UTF-16

- 영문이든 한글이든 2byte 체계로 감(코드값을 고정시킴)

- 1980~90년초 까지만해도 읽었는데 영문이면 1byte만 읽어도 되지만 영문이 아니라면 1byte가 아닌 1byte를 더 읽었어야했음 (당시 한글은 2byte였으므로).
  하지만 유니코드와 UTF-16이 등장하면서 한/영 구분없이 2byte로 처리함

- 0x0041
    - 앞에 모두 00을 붙여야함. 2byte를 규격화 시키기 위해서
- 0xAC00
    - 한글의 `가`는 0xAC00으로 시작
- 자바가 UTF-16을 지원함

    - 자바가 UTF-16이 나올 떄쯤 개발된 언어이다 보니까 이상적인 charset임
    - C언어는 char형으로 변수 선언시 메모리상에 1byte가 잡힘. 이와달리 자바는 2byte (UTF-16에 이상이 없게 하기 위함)
    - 자바는 `abc, 가나다` 등을 문자열이 아닌 abc라는 변수명으로 인식함. (어떤 이름으로 인식함)
    - `abc,가나다`와 `“abc”, “가나다”`는 다르게 인식함. 후자는 문자열로 인식됨.
    - 자바는 쌍따옴표를 써주어야 함 (홑따옴표를 쓰면 안됨)
    - abc()
        - 소괄호가 따라나오면 메서드로 인식함
    - 자바
        - abc의 길이가 어떻게 되느냐? 3
        - 가나다의 길이가 어떻게 되느냐? 3
        - 한/영 모두 2byte씩 할당되므로 byte보다 길이가 중요

- 메모리상에 할당되는 한 칸

    - 1byte (8bit)

- 제일 앞에는 1이오면 음수가 됨

    - 코드는 음의값이 없고 양의값만 존재함

- UTF-16으로는 표현할 수 없는 나라의 코드가 있으므로 빠진 나라들이 있음
- 따라서 새로이 나온 유니코드가 현재 주류인 UTF-8임

<br>

#### UTF-8

- 지구상의 모든 문자를 2byte로 다 표현하지 못하므로 새로 정의하자!라고 해서 나온 것

- 더 많은 나라들의 코드를 정의하기 위해서는 2byte만으로 부족하다!

- 1byte ~ 4byte

    - UTF-8에서는 문자마다 1byte 인것도 있고 4바이트 인것도 있다.
    - 아시아는 모두 3byte (IT쪽에 힘이 없어서 그런것 아닐까?)
    - charset에 민감한 db테이블일 경우, utf-8에서는 곱하기3을 해줘야 함

- UTF-8이 등장하면서 지구상 거의 모든 문자를 표현할 수 있게 됨
- 웹에서는 UTF-8이 표준임
- 웹페이지를 만들 떄에는 반드시 UTF-8로 만들어야만 세계 어디서든 우리가 만든 페이지가 한글로 잘 표현될 수 있음
- 자바 내에서는 UTF-16이더라도 UTF-8로 알아서 잘 변환을 함.

<br>

# 1.1 프로그래밍 언어와 자바

## 고급 언어

- 컴퓨터와 대화할 수 있도록 만든 언어 중 사람이 쉽게 이해할 수 있는 언어

- 고급 언어로 작성된 소스 파일은 컴퓨터가 바로 이해할 수 없으므로 컴파일 과정을 통해 컴퓨터가 이해할 수 있는 0과1로 이루어진 기계어로 변환한 다음 컴퓨터가 사용하게 됨

- 개발자가 고급 언어로 작성한 파일을 `소스 파일`이라 함

- 자바, C, C++, C#, 파이썬

## 저급 언어

- 기계어에 가까운 언어
- 어셈블리어

## 자바의 특징

### 1. 모든 OS에서 실행이 가능함

- 자바로 작성된 프로그램은 OS에 상관없이 모두 실행되므로 윈도우에서 개발된 프로그램이라 하더라도 맥OS 또는 리눅스에서도 실행할 수 있다.

### 2. 객체 지향 프로그래밍

- 부품인 객체를 만들고 이 객체들을 연결해서 더 큰 프로그램을 만드는 기법인 객체 지향 프로그래밍에 있어 자바는 최적의 언어임

### 3. 메모리 자동 정리

- 자바는 메모리(RAM)를 자동으로 관리하므로 메모리 관리가 용이함

### 4. 라이브러리가 풍부함

- 자바는 내장하고 있는 API가 많고 무료로 다운로드해서 사용할 수 있는 오픈 소스 라이브러리가 풍부하므로 프로그램 개발 시간을 단축시킬 수 있다

## 패키지

- 여러 프로그램을 하나로 묶는 역할을 함
- 자바 프로그램이 많아질수록 용도별로 묶는게 좋은데, 이때 묶어주는 것이 패키지임

- 패지키화 하지 않는다

    - 패키지 없이 클래스를 만들겠다는 뜻임

- src > default package
    - 패키지화를 하지 않았다는 의미로 이클립스가 보여주는 것 (실제 패키지는 아님)

## 자바 클래스 작명법

### 1. 파스칼 표기법

### 2. 카멜케이스 표기법

## main

- 자바프로그램을 실행시키면 자동으로 맨 처음 호출되는 메서드

<br>

## 리터럴

프로그램에서 작성되는 데이터 값(value)

작성 방법에 따라서 인식되는 타입이 달라진다.

### 예시

`1` → int타입으로 인식

`1.0` → .0을 찍어줬으므로 double 타입으로 인식함

`1L` → long형으로 인식. 소문자L은 잘 안씀.

`‘1’` → char형

`“1”` → string으로 인식 (뭐가 되었던간에 쌍따옴표로 감싸면 자바에서는 무조건 문자열로 인식)

⇒ 프로그램 내에서 어떤 기호가 붙어지느냐에 따라서 다른 타입으로 인식됨

### 예시

1+1 ⇒ 2로인식

1.0 + 1 ⇒ 2.0

‘1’+1 ⇒  50 (숫자 1에대한 아스키코드값이 49이므로)

“1”+1 ⇒ “11” (숫자11이 아니다!. 자바에서는 하나라도 문자열이라면 연산을 했을 때 연산결과가 문자열로 바뀜)

## 정수형과 관련된 리터럴

- int
    - 10
- long
    - 10L
    - 숫자1과 헷갈릴 수 있으므로 주로 대문자 L을 사용함

### 예시

12345678900

→ int형으로 표현할 수 있는최대 범위 2^31 -1 이므로 얘는 표현 못할 가능성이 높다.

→ int형은 4byte 공간이 잡히는 타입. long형은 8byte 공간이 잡히는 타입.

다른 정수타입은 양/음을 모두 처리할 수 있으나 char은 양의값만 처리할 수 있음

할당되는 타입에 따라 할당되는 메모리의 크기가 달라짐

자바는 정수형 데이터라하면 int형이 기본임. 값이 크면 long형으로 사용함.

처음에 자바가 발표되었을 때, short형은 별로 사용하지 않으나 c언어와의 호환을 위해 도입헀다고 발표함. 그 이외에 정수형 데이터를 넣겠다는 의도로 byte나 short형을 쓰는 개발자는 없다.

정수형 데이터인데 크지 않다면 무조건 int형. 크면 long형.

너무 큰 데이터는 자바로 짜지 않는다. 언어마다 언어 고유의 주특기가 있다. 큰 데이터는 R등의 데이터를 선택하는게 낫다. float나 double은 long형보다 큰 데이터를 다룰 수 있다.

# 실수형 리터럴

- float
    - 3.14f
    - 뒤에 f를 붙여서 float형임을 명시해주어야 함
- double
    - 3.14
    - f표시가 없으면 주로 double
    - 자바는 double을 더 많이 사용함
    - float형은 소수점 이하 6~7째 자리 쯤에 오차가 발생함 (자바문제가 아닌 이진수로 변환해서 계산할 때 시스템적으로 발생하는 문제점임)

# 문자형 리터럴

- 단위 인용부호가 붙어있으면 무조건 문자형 리터럴
- 한 문자의 값을 표현하는 리터럴
    - `‘ ’`
    - `‘a’`
    - `‘1’`
    - `‘가’`
        - 0xac00  (UTF-8)
        - 44030 (16진수)
    - `‘%’`
- 단위 인용부호 안에 아무것도 없는것 (비어있는 것)은 허용하지 않음
- 내부에 2개이상의 문자를 허용하지 않음
- 홑따옴표 내부에 있는 문자에 대한 UTF-16에 맞는것으로 변환됨

`‘%%’` → 불가능. 문자 하나에 대한 코드값을 나타내기 때문임.

`‘:’` → : 얘도 나름대로의 문자값이 존재함.

`‘\n’` → 가능. 문자 리터럴임. 어떤 폰트를 설정했느냐에 따라 백슬래시 혹은 원화로 표시됨. 특별한 역할을 하는 문자. 개행문자. 행바꿈 문자임. 이렇게 특별한 문자로 쓰이는 것들이 있음.

`‘\t’` → 가능. t앞에 \를 붙이면 탭키의 역할로 바뀜. 탭은 고정된 위치를 나타냄. 탭 문자만큼 떨어져서 내보내라. 는 뜻

# 논리형 리터럴

참과 거짓을 나타내는 리터럴

true, false (소문자로 사용함)이 존재

# 문자열형 리터럴

- 안에 무엇이 있든, 쌍따옴표로 감싸면 내부에있는것을 문자열형으로 인식함
- 예시

`“”` → 내용이 비어있는 문자열 리터럴. NULL형 문자열 리터럴

“100”

“가나다”

“abc”

“3”

“가”

# 객체형 리터럴 (참조형 리터럴)

- null
    - 참조하는 객체(대상)이 없음
    - 0과는 다르다. 0은 값이 없고, null은 대상이 없다는 의미이다.
    - 자바 프로그래밍할 때 가장 많이 보는 에러가 `null point exception error`임
    - 자바에서는 null을 값으로 사용함 (대상이 없음을 의미)

- 리터럴
    - 프로그래밍 내에서 사용되는 데이터 값
    - 사용되는 방식에 따라 타입이 정해져 있음

리터럴은 프로그래밍 내에서 사용되는 데이터 값. 리터럴은 값을 변경할 수 없음

```java
100 = 300  // 리터럴은 고정된값이므로 변경이 불가능함. (새로운 값을 대입할 수 없다)
```


<br>

# 2. 변수와 데이터 타입

## 2.1. 변수 선언

- 컴퓨터 메모리 (RAM)

    - 수많은 번지들로 구성된 데이터 저장 공간
    - 프로그램은 데이터를 메모리에 저장하고 읽는 작업을 빈번히 수행함
    - 이때 데이터를 어디에 어떤 방식으로 저장할지 정해져 있지 않으면 메모리 관리가 어려워짐
    - 이러한 문제를 해결하기 위해 프로그래밍 언어를 사용할 때 변수를 사용함

- 변수
    - 연산 결과 값 또는 리터럴을 저장(보관)하는 메모리상의 방
    - 변수명은 첫글자가 문자여야함 (중간부터 문자, 숫자, $, _를 포함할 수 있음)
    - 첫 문자를 소문자로 시작하되 카멜 케이스로 시작하는것이 관례임

- 변수 선언
    - 어떤 타입의 데이터를 저장하고 변수명을 무엇을 사용할지 결정하는 것


- 똑같은 이름의 변수를 같은 공간에 재선언하면 안됨

```java
package day1;
public class VarTest2 {
	public static void main(String[] args) {
		System.out.println(100);
		int num;  
		num = 1000;
		System.out.println("연산 전 : "+num);
		
        num = 10+20;
		System.out.println("연산 후 : "+num);
		
        char munja = 'A';  
		System.out.print(munja); 
		
        munja++;
		System.out.print(munja); 
		
        munja += 1;
		System.out.print(munja); 
		
        munja = (char)(munja+1); 
		System.out.println(munja);  
        
		char munja = 'A';   // 에러
		System.out.print(munja); 
		
        munja++;
		System.out.print(munja); 
		
        munja += 1;
		System.out.print(munja); 
		
        munja = (char)(munja+1); 
		System.out.println(munja);   // munja = munja+1;
	}
}
```

- 따라서 똑같은 이름의 변수를 같은 공간에 재선언 하기보다 대입으로 바꾸는 것이 좋음

```java
package day1;
public class VarTest2 {
	public static void main(String[] args) {
		System.out.println(100);
		int num;  
		num = 1000;
		System.out.println("연산 전 : "+num);
		
        num = 10+20;
		System.out.println("연산 후 : "+num);
		
        char munja = 'A';  
		System.out.print(munja); 
		
        munja++;
		System.out.print(munja); 
		
        munja += 1;
		System.out.print(munja); 
		
        munja = (char)(munja+1); 
		System.out.println(munja);  
		
        munja = '가';  
		System.out.print(munja); 
		
        munja++;
		System.out.print(munja); 
		
        munja += 1;
		System.out.print(munja); 
		
        munja = (char)(munja+1); 
		System.out.println(munja);  // munja = munja+1;
	}
}

/* 결과값 */
// 100
// 연산 전 : 1000
// 연산 후 : 30
// ABCD
// 가각갂갃
```





<br>

### 변수를 만들 때에는

1. 변수에 저장할 값의 용도에 따라서 변수명을 결정해야 함
2. 변수에 저장할 값의 종류에 따라서 변수의 타입을 결정해야 함

```java
타입 변수명; 
타입 변수명 = 값;
// 이러한 과정을 통해 메모리상 해당 변수명에 대한 방이 만들어짐
// 얼마나 큰 방이 만들어지는지는 타입의 종류에 따라 결정됨
```

```java
int total; // 메모리상 4byte의 방이 생성됨. + total이라는 이름 부여
```

#### 유의사항

- 자바는 초기화를 하지 않고 변수를 사용하려고 하면 에러가 발생하도록 만들어짐
```java
char grade = 'A';  // 초기화: 변수에 최초로 값을 할당하는 것
int total = 100; // 초기화
total = 2000; // 할당 (혹은 대입이나 치환)이라고도 함. 이전에 이미 값이 들어갔으므로 초기화가 아님

total = 3.14;  
// error - 자바 이전의 언어들은 0.14를 날리고 저장했으나 자바는 자동형변환 하지 않음. 
// 0.14가 중요한 데이터일 수 있기 때문임
```

- 강제 형 변환
```java
total = (int)(3.14)  // 비추천 
```


```java
munja = (char)munja+1;   

```

- 자바는 int형보다 작은것과 연산시 int형으로 바꿔넣고 연산함
- char + char형도 int형이 됨
-  따라서 모든 연산을 마치고 char으로 형변환을 해야 char형이 됨.


<br>


### 작명

1. 자바 소스 파일명(클래스명)은 대문자로 시작하는 것이 관례
```
Week.java
MemberGrade.java
ProductKind.java
```

2. 변수명은 소문자로 시작하는 것이 관례
```
score
mathScore
sportsCar
```

## 2.2 정수타입

| 값의 분류 |기본 타입|
|:------|:---|
| 정수    |byte, char, short, int, long|
|실수|float, double|
|논리(true, false)|boolean|

- byte
    - 1byte
- short
    - 2byte
- char
    - 2byte
- int
    - 4byte
- long
    - 8byte


### 2진수

- 0b 또는 0B로 시작하고 0과 1로 작성
```JAVA
int x = 0b1011; // 11
int y = 0B10100; // 20
```

### 8진수

- 0으로 시작하고 0~7 숫자로 작성

```java
int x = 013;  //  1*8^1 + 3*8^0 = 11
int y = 0206;  //  2*8^2 + 0*8^1 + 6*8^0 = 134
```


### 16진수

- 0x 또는 0X로 시작하고 0~9 숫자나 A~F 또는 a~f로 작성
```java
int x = 0xB3;   // B(11)*16^1 + 3*16^0 = 179
int y = 0x2A0F;   // 2*16^3 + A(10)*16^2 + 0*16^1 + F(15)*16^0 = 10767
```

<br>

## 2.3 문자 타입


```java
package day1;
public class TypeTest4 {
	public static void main(String[] args) {
		char c1 = 'A';          	//문자 저장
		char c2 = 65;          	//유니코드 직접 저장
		char c3 = '\u0041';    	//유니코드 직접 저장
		
		char c4 = '가';         	//문자 저장
		char c5 = 44032;      	//유니코드 직접 저장
		char c6 = '\uAC00';	//유니코드 직접 저장		
		
		System.out.println(c1);
		System.out.println(c2);
		System.out.println(c3);
		System.out.println(c4);
		System.out.println(c5);		
		System.out.println(c6);		
	}
}
```


### char형

  - char형은 정수형의 일부임
  - 양의값만 저장할 수 있음
  - signed & unsigned를 지정할 수 없음.
  - char형은 문자 데이터를 처리하기에 적합한 타입.



#### 대문자 A의 값을 저장하는 방법

```java
char c1 = 'A';          	//문자 저장 -> 가독성이 가장 좋음 
char c2 = 65;          	//유니코드 직접 저장
char c3 = '\u0041';    	//유니코드 직접 저장
```

- `\u`는 유니코드를 사용할 때 사용. `\u`뒤에 16진수가 옴. (4개의 숫자 등장)



<br>

## 2.4 실수 타입

### 예제1

```java
package day1;
public class TypeTest3 {
	public static void main(String[] args) {
		long var1 = 10;
		long var2 = 20L;
		//long var3 = 1000000000000; //컴파일러는 int로 간주하기 때문에 에러 발생
		long var4 = 1000000000000L;

		System.out.println(var1);
		System.out.println(var2);
		System.out.println(var4);
	}
}
```

- int형의 범위를 넘어설 경우 L을 붙여서 해결해도 됨 

### TIP

- 노란색 오류 
  - warning error
  - 변수는 선언했으나 실제로 이 변수를 사용하지 않았으므로 노란색 오류 발생
  - 가장 안좋은 프로그래밍 습관으로 봄 → 메모리 공간의 낭비

- 빨간색 오류 
  - 컴파일 에러 → 실행을 못시킴

<br>

### 예제2

```java
package day1;

public class TypeTest5 {
	public static void main(String[] args) {
		// 정밀도 확인
		float var1 = 0.1234567890123456789f;
		double var2 = 0.1234567890123456789;
		System.out.println("var1: " + var1);
		System.out.println("var2: " + var2);
		System.out.printf("%.3f\n", var1);	
		System.out.printf("%.6f\n", var1);	

		// 10의 거듭제곱 리터럴
		double var3 = 3e6;  // 3*10^6
		float var4 = 3e6F;   // 3*10^6
		double var5 = 2e-3;   // 2*10^-3
		System.out.println("var3: " + var3);
		System.out.println("var4: " + var4);
		System.out.println("var5: " + var5);
	}
}
```

- 자바는 실수형 데이터 입력시 double형으로 인식
- 따라서 float형 → double형으로 바로 넘겨줄 수 없음(명시를 해주어야 형변환이 가능)

#### var1, var2의 결괏값 차이 해석

- 오차가 발생. 몇째자리 까지 나온다라고 정해놓은 것은 없음
- float는 보통 8째자리에서 짤리거나 8째자리에서 오차 발생
- double은 17~18번쨰쯤에 오차가 발생하거나 오차가 발생


- 자바의 정밀도에 대한 데이터를 다루는것에 대한 내용은 공식적으로 자세한 설명이 나와있지 않음
- 실질적인 데이터 처리는 2진수로 바꾸어서 처리함


- 정밀한 연산이 필요한 경우에는 자바로 짜면 안됨
- floating point를 필요로하는 언어를 사용하는게 좋음




<br>



# 3. 연산자

## 3.10. 대입연산자

### l-value

- l-value는 `방,장소`를 사용한다는 뜻

- 좌측에는 반드시 변수가 와야함 (`l-value`)
- 리터럴은 그 자체가 값이므로 l-value로 쓰일 수 없음.


### r-value

- r-value는 `값`을 사용한다는 뜻
- 우측에는 변수, 리터럴, 연산식, 리턴값이 있는 메서드의 호출식 등 모든것이 등장할 수 있음. 
- 우측에 있는것을 식이라 함 (r-value)

```java
변수 = 식  // l-value = r-value
```

- 메서드 호출시 매개변수, 인자 전달하는 것도 l-value, r-value관계임 
- 리턴값이 없는 메서드의 호출식은 r-value자리에 갈 수 없음 
- 초기화를 안한 변수는 l-value로 사용할 수는 있어도 r-value로는 사용할 수 없음
  <br>(변수는 초기화를 한 상태에서만 r-value로 사용할 수 있다. 초기화하지 않으면 l-value로만 사용)

<br>

# 값을 표준 출력장치로 출력하는 방법

- 자바상 어떤 값을 출력시 흔히 '표준 출력'한다고 함
- 이는 표준 출력장치(기본적으로 '화면'을 뜻함)로 출력하는 것을 뜻함

## 1. System.out.println() API 사용

- 출력 & 행바꿈

## 2. System.out.print() API 사용

- 출력

## 3. System.out.printf()

- 본인 입맛대로 출력 


### 예제

```java
package day1;
public class VarTest2 {
	public static void main(String[] args) {
		System.out.println(100);
		int num;  // 변수 선언
		num = 1000;   // 변수 초기화
		System.out.println("연산 전 : "+num);
		num = 10+20;
		System.out.println("연산 후 : "+num);  // 30
		char munja = 'A';  
		System.out.print(munja); 
		munja++;  // 문자변수값을 1증가 시킴 -> B가 됨
		System.out.print(munja); 
		munja += 1;  // 문자 변수값을 1증가 시켜서 다시 문자 변수에 담아라 -> C가 됨
		System.out.print(munja); 
		munja = (char)(munja+1); // 문자변수+1 -> D가 됨 
		System.out.println(munja);  
	}
}
```

<br>


# 3. 연산자


- 식에 포함된 데이터값을 계산할 때, 상황을 체크할 때 연산자를 사용함

- 연산자는 대부분 기호로 되어있으며 기능에 따라 구분함


## 3.1 증감 연산자

| 연산식   | 설명              |
|:------|:----------------|
| ++피연산자| 피연산자의 값을 1 증가시킴 |
| --피연산자| 피연산자의 값을 1 감소시킴 |
| 피연산자++| 다른 연산을 수행한 후에 피연산자의 값을 1 증가시킴|
|피연산자--|다른 연산을 수행한 후에 피연산자의 값을 1 감소시킴|

```java
int a = 1;
int b = 1;
int resultA = ++a + 10;  // (1+1)+10 = 12
int resultB = b++ + 10;  // 1+10 = 11 -> 이후에 b의 값이 2가됨
```

<br>

## 3.2 산술 연산자

- 피연산자가 정수 타입(byte, short, char, int)이면 연산의 결과는 int 타입
- 피연산자가 정수 타입이고 그 중 하나가 long 타입이면 연산의 결과는 long 타입
- 피연산자 중 하나가 실수 타입이면 연산의 결과는 실수 타입


`+`

`-`: 음의 값을 표현할 때 사용

`/`: 몫을 구할 때 사용

`%`: 나머지 값을 구할 때 사용

<br>

## 3.3 오버플로우 & 언더플로우

### 오버플로우

- 타입이 허용하는 최대값을 벗어나는 것


### 언더플로우

- 타입이 허용하는 최소값을 벗어나는 것

<br>

## 3.6 비교 연산자

- 피연산자의 타입이 다를 경우에는 비교 연산을 수행하기 전에 타입을 일치시킴

```java
0.1f == 0.1 // false -> float타입과 double 타입의 정밀도가 다름
0.1f == (float)0.1 // true (float형으로 강제 타입 변환 후에 비교 연산을 수행할 것)
```

- 문자열 비교시 동등(==, !=) 연산자 대신 equals(), !equals()를 사용할 것

```java
boolean isSame = str1.equals(str2); // 문자열이 같은지 검사 (대/소문자를 구분하여 검사함)
```

### 비교연산자는 이항연산자이기도 함

- `>`
- `<`
- `≥`
- `≤`
- `==`
- `≠`
- `instanceof`



### 타입 크기 비교

- 여기서 `크기`는 `저장할 수 있는 값의 범위`를 뜻함


- double > float > long > int > short > byte
- double > float > long > int > char


- short, char, byte와의 관계성은 비교할 수 없음
- float형을 double형에 대입하는 것은 가능

#### dobule

- 자바에서 가장 큰 값을 저장할 수 있는 타입

#### float vs long
  - 실수는 지수 형태로 값을 저장
  - 따라서 정수형태보다 더 많은 값을 저장할 수 있음


<br>

## 3.8 비트 연산자 (주어진 데이터를 이진수로 변환해서 비트단위 연산하는 것)
  <br>(자바가 비트 연산자를 지원하지만 우리가 직접 비트 연산자를 사용해서 웹 크롤링을 할 일은 거의 없다)
  <br>(그럼에도 비트 연산자가 포함된 이유는 자바가 C언어의 영향을 많이 받았고, 암호화 프로그래밍등에서는 사용할 수 있기 때문이다.)
  <br>(C언어에서는 시스템 레벨의 프로그래밍을 할 일이 많고 비트단위로 뭔가를 처리해야할 일이 많다. 시스템단위의 제어는 비트단위 연산을 할 일이 많다.)

<br>


## 3.9 비트 이동 연산자

- 비트를 좌/우측으로 밀어서 이동시키는 연산을 수행

| 구분         |  연산식  | 설명                                                                           |
|:-----------|:-----:|:-----------------------------------------------------------------------------|
| 이동 (shift) | a<<b  | 정수a의 각 비트를 b만큼 왼쪽으로 이동<br>오른쪽 빈 자리는 0으로 채움<br>a*2^b와 동일한 결과가 나옴              |
| 이동 (shift) | a>>b  | 정수a의 각 비트를 b만큼 오른쪽으로 이동<br>왼쪽 빈 자리는 최상위 부호 비트와 같은 값으로 채움<br>a/(2^b) 와 동일한 결과 |
| 이동 (shift) | a>>>b | 정수a의 각 비트를 b만큼 오른쪽으로 이동<br>왼쪽 빈 자리는 0으로 채움                                   |                                                                            |


<br>

## 3.10 대입 연산자 (복합 대입 연산자)

복합 대입 연산자는 대입 연산자를 확장한 것


<br>

## 형 변환 연산자

형 변환은 우리가 지정하지 않아도, 값이 손실되지 않는 범위 내에서는 자동으로 형 변환을 함


### 1. 단항연산자


`!`: 논리 부정 연산자

`++`: 주어진 항의 값을 1증가시킴

`—`: 주어진 항의 값을 1감소 시킴


### 2. 이항 연산자


### 대입연산자

`=`

### 복합 대입 연산자

`+=`

`-=`

`*=`

`/=`

`%=`

### 3. 삼항 연산자

`항1 ? 항2 : 항3`

- 조건식이 참이면 항2, 거짓이면 항3

- 항의 개수가 적을수록 우선순위가 높다.

```java
package day1;

public class OperTest1 {

	public static void main(String[] args) {
		// 숫자 연산
		int result1 = 10 + 2 + 8;  // 20
		System.out.println("result1: " + result1);

		// 결합 연산
		String result2 = 10 + 2 + "8";  // 128
		System.out.println("result2: " + result2);
 
		String result3 = 10 + "2" + 8;   // 1028
		System.out.println("result3: " + result3);

		String result4 = "10" + 2 + 8;   // 1028
		System.out.println("result4: " + result4);

		String result5 = "10" + (2 + 8);  // 1010
		System.out.println("result5: " + result5);		
	
	}
}
```