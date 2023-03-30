# 과제1

다음에 제시된 소스 5개를 주어진 클래스명으로 구현하여 소스만 압축한 다음 강사메일로 제출하세요...

압축소스명 : 실습8.zip
강사메일주소 : unicodaum@hanmail.net
메일제목 : 자바기초실습8-XXX

[ 실습 1 ]
1. 클래스명 : MethodLab1

2. 구현해야 하는 추가 메서드 2개 (static 붙여서)

   매개변수 : 없음
   리턴값 : 없음
   메서드명 : printTitle
   기능 : 우리 자바 교재의 책제목을 화면에 출력한다.(개행처리 제외)

   매개변수 : 없음
   리턴값 : int
   메서드명 : getPrice
   기능 : 우리 자바 교재의 책 가격을 리턴한다.

3. main() 메서드에서는 위에 정의한 메서드들을 호출하고
   다음과 같은 결과가 출력되도록 구현한다.

   [ 실행 결과 ]
```
   우리의 자바교재명은 <이것이 자바다>입니다.
   가격은 36,000원입니다.
```


[ 실습 2 ]
1. 클래스명 : MethodLab2

2. 구현해야 하는 추가 메서드 (static 붙여서)
   매개변수 : char 타입 1개, int 타입 1 개
   리턴값 : 없음
   메서드명 : 임의로
   기능 : 첫 번째 아규먼트로 전달된 문자를
   두 번째 아규먼트로 전달된 숫자의 행으로 구성되는 삼각형을 출력한다.
   (출력해야 하는 삼각형 모양은 3번을 참고한다.-직각삼각형)

3. main() 메서드에서는 다음과 같이 아규먼트를 전달하면서 2번에 구현한 메서드를 다음과 같이 호출한다.

```
     xxxx('@', 3)
```
```
	 @
           @@
        @@@

     xxxx('%', 4)
```
```
	%
           %%
         %%%
       %%%%

     xxxx('A', 5)
```
```
	A
           AA
         AAA
       AAAA
     AAAAA

```
[ 실습 3 ]
1. 클래스명 : MethodLab3

2. 구현해야 하는 추가 메서드(static 붙여서)

   매개변수 : int 타입으로 1개
   리턴값 : boolean
   메서드명 : isEven
   기능 : 매개변수를 통해서 전달받은 숫자가 짝수면 true 를 리턴하고
   홀수면 false를 리턴한다.

3. main() 메서드에서는 위에 정의한 메서드를 호출하고
   다음과 같이 결과가 되도록 구현한다.

   2번에서 구현한 함수를 다음과 같은 아규먼트를 전달하여 호출하는 것으로 정한다.
```
   	xxxx(10)
   	xxxx(13)
```
   [ 실행 결과 ]
```
    	10은 짝수 입니다.
   	13은 홀수 입니다.
```
   (*) 2번의 함수를 호출하고 리턴결과가 참인지 거짓인지에 따라
   위와 같은 결과가 출력되도록 구현하는데 반드시 3항 연산자(조건 연산자)를 사용한다.


[ 실습 4 ]
1. 클래스명 : MethodLab4

2. 구현해야 하는 추가 메서드 (static 붙여서)
   매개변수 : int 타입으로 2 개
   리턴값 : int 타입으로 1개
   메서드명 : 임의로
   기능 : 전달받은 2개의 데이터 중에서 큰 값에서 작은 값의
   차를 리턴 두 값이 동일하면 0 을 리턴한다.
   10, 20 이 전달되면 ---> 10 리턴
   20, 5 가 전달되면 ---> 15 리턴
   5, 30 이 전달되면 ---> 25 리턴
   6, 3 이 전달되면  ---> 3 리턴

3. main() 메서드에서는
   1부터 30 사이의 난수 2 개를 추출하여 2번에서 구현된 메서드를 호출하고
   리턴되는 결과를 가지고 다음과 같은 형식으로 출력한다.
   "X 와 Y 의 차는 W 입니다."
   ----> 5회 반복

   [ 실행 결과 ]
```
   X 와 Y 의 차는 W 입니다.
   X 와 Y 의 차는 W 입니다.
   X 와 Y 의 차는 W 입니다.
   X 와 Y 의 차는 W 입니다.
   X 와 Y 의 차는 W 입니다.
```

[ 실습 5 ]
1. 클래스명 : MethodLab5

2. 구현해야 하는 메서드
```
   public static int getRandom(int n)
   1 부터 n 까지 범위의 난수 리턴
   public static int getRandom(int n1, int n2)
   n1 부터 n2 범위의 난수 리턴
```
3. main() 메서드
   getRandom(10) 을 5번 호출하고 리턴값을 하나의 행에 출력한다.
   x, x, x, x, x

       getRandom(10, 20) 을 5번 호출하고 리턴값을 하나의 행에 출력한다.
   x, x, x, x, x





<br>

# 과제2


다음에 제시된 소스 5개를 주어진 클래스명으로 구현하여 소스만 압축한 다음 강사메일로 제출하세요...

압축소스명 : 실습9.zip
강사메일주소 : unicodaum@hanmail.net
메일제목 : 자바기초실습9-XXX

[ 실습 1 ]

1. 클래스명 : MethodLab6
2. 정의해야 하는 메서드  
   메서드명 : maxNumArray
   매개변수 타입 : int[]
   리턴값의 타입 : int

   매개변수에 전달된 배열의 원소값들 중에서 가장 큰값 리턴

3. main() 메서드에서 maxNumArray 를 3번 호출한다.
```
   다음 배열들을 전달하여
   배열 1 : 10, 20, 30
   배열 2 : 100, 500, 300, 200, 400
   배열 3 : 1, 10, 3, 4, 5, 8, 7, 6, 9, 2
```
   호출하고 리턴값을 다음과 같이 출력한다.
```
   가장 큰 값은 30 입니다.
   가장 큰 값은 500 입니다.
   가장 큰 값은 10 입니다.
```
[ 실습 2 ]

1. 클래스명 : MethodLab7
2. 정의해야 하는 메서드(2개)
```
   메서드명 : powerArray
   매개변수 타입 : int
   리턴값의 타입 : int[]
   기능 : 1부터 10까지의 값으로 구성되는 배열을 만들어
   매개변수에 전달된 값만큼 배수로 element 값들을 변경하여 리턴한다.

   메서드명 : printArray
   매개변수 타입 : int[]
   리턴값의 타입 : void
   기능 : 매개변수를 통해서 전달된 배열을 element 값들을 다음 형식으로 출력한다.

   x,x,x,x,x,x,x,x,x,x
```

3. main() 메서드에서 powerArray() 를 다음과 같이 아규먼트를 전달하여 3번 호출하고 리턴된
   배열을 printArray() 에 전달하여 각 element 값을 출력한다.
```
   powerArray(2);
   powerArray(3);
   powerArray(4);
```
             
[ 실행 결과 ]

```
   2,4,6,8,10,12,14,16,18,20
   3,6,9,12,15,18,21,24,27,30
   4,8,12,16,20,24,28,32,36,40

```

[ 실습 3 ]

1. 클래스명 : MethodLab8
2. 정의해야 하는 메서드
```
   메서드명 : addEven
   매개변수 타입 : int...
   리턴값의 타입 : int
   기능 : 0 개 이상의 int 타입의 데이터들을 전달받아 짝수들의 합만 구하여 리턴한다.  
   아규먼트가 한 개도 전달되지 않으면 -1을 리턴한다.
```
3. 다음과 같이 addEven() 을 호출하고 리턴 결과를 화면에 출력한다.
```
   addEven(10, 2, 5, 13, 7)
   addEven(11, 22, 33, 44, 55, 66)
   addEven()
   addEven(100, 101, 103)
```
   [ 실행 결과 ]
```
   호출 1 : 12
   호출 2 : 132
   호출 3 : -1
   호출 4 : 100
```
[ 실습 4 ]

1. 클래스명 : MethodLab9
2. 정의해야 하는 메서드
   메서드명 :  isRightTriangle
   매개변수 타입 :  int width, int height, int hypo
   리턴값의 타입 : boolean
   기능 : 너비와 높이 그리고 빗변의 데이터를 받아서 직각삼각형인지 판별하고(순서도작성-04.pdf 참조)
   직각삼각형이면 true 를 아니면 false 를 리턴한다.

3. 다음과 같이 isRightTriangle() 을 호출하고 리턴 결과를 화면에 출력한다.
```
   isRightTriangle(3, 4, 5)
   isRightTriangle(1, 2, 3)
```
```
   [ 실행 결과 ]

   true
   false
```
[ 실습 5 ]

1. 클래스명 : MethodLab10
2. 정의해야 하는 메서드
   메서드명 : powerArray
   매개변수 타입 : int 타입배열, int
   리턴값의 타입 : void
   기능 : 첫 번째 아규먼트로 전달된 배열의 element 값들을 두 번째 아규먼트로 전달된 값만큼 배수로 만들어 변경한다.
   두 번째 아규먼트가 2~5 사이가 아니면 아무것도 수행하지 않고 그냥 리턴한다.

3. 다음과 같이 powerArray() 를 호출하고 리턴 결과를 화면에 출력한다.
```
   int a1[] = new int[] { 1,2,3,4,5};
   MethodLab7.printArray(a1);
   powerArray(a1, 3)
   MethodLab7.printArray(a1);

   int a2[] = new int[] { 10,20,30,40,50, 60 };
   MethodLab7.printArray(a2);
   powerArray(a2, 10)
   MethodLab7.printArray(a2);
```
   [ 실행 결과 ]
```
   1,2,3,4,5
   3,6,9,12,15

   10,20,30,40,50,60
   10,20,30,40,50,60
```