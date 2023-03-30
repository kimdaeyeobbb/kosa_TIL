# 실습 1

다음에 제시된 소스 5개를 주어진 클래스명으로 구현하여 소스만 압축한 다음 강사메일로 제출하세요...

압축소스명 : 실습6.zip
강사메일주소 : unicodaum@hanmail.net
메일제목 : 자바기초실습6-XXX

[ 실습 1 ]
- 배열 생성 후 element 출력하는 실습

1. ArrayLab1 이라는 클래스를 하나 만든다.
2. ary 라는 int 타입의 배열 변수를 선언하고 10개의 엘리먼트를 갖는 배열을 생성하여 대입한다.
3. 배열의 값들을 하나의 행에 다음 형식으로 출력한다. (한 행에 출력 이후에는 개행)

```0 0 0 0 0 0 0 0 0 0```

4. 생성된 배열에 10, 20, 30, 40, 50, 60, 70, 80, 90, 100 을 각각의 element 로 저장한다.
5. 첫 번째 원소와 마지막 원소만 출력하고 합도 출력한다.
```
   첫 번째 : 10
   마지막 : 100
   합 : 110
   ```
6. 배열의 값들을 하나의 행에 다음 형식으로 출력한다.
   
``` 10 20 30 40 50 60 70 80 90 100```
7. 배열의 값들을 하나의 행에 다음 형식으로 출력한다.(역순으로)

```   100 90 80 70 60 50 40 30 20 10```
8. 배열의 값들을 하나의 행에 다음 형식으로 출력한다.
   20 40 60 80 100



[ 실습 2 ]

1. ArrayLab2 라는 클래스를 하나 만든다.
2. 10개의 숫자(정수)를 저장할 수 있는 배열을 하나 만든다.
3. 각각의 element로  4부터 20사이의 난수를 추출하여 저장한다.
4. 모든 원소의 합을 구한다.
5. 다음과 같은 형식으로 출력한다.
```
   모든 원소의 값 : x,x,x,x,x,x,x,x,x,x
   모든 원소의 합 : xxx
```
[ 실습 3 ]
1. ArrayLab3 라는 클래스를 하나 만든다.
2. 'J', 'a', 'v', 'a' 라는 element 로 구성되는 char 타입의 배열을 만든다.
3. 각 원소들의 값에서 대문자는 소문자로 소문자는 대문자로 변환하여 저장한다.
4. 배열의 element 들을 다음과 같이 출력한다.
 ```
   j
   A
   V
   A
```

[ 실습 4 ]
1. ArrayLab4 이라는 클래스를 하나 만든다.
2. 5부터 10사이의 난수를 추출한다.
3. 추출된 난수값을 크기로 갖는 int 타입의 배열을 생성한 후에 이 배열의
   각각의 원소값으로 1부터 26 사이의 난수를 추출하여 저장한다.
4. 3에서 생성된 int 타입의 배열과 동일한 크기를 갖는 char 타입의 배열을 생성한다.
5. int 타입의 배열에 저장된 각각의 원소값을 이용하여 char 타입의 배열에
   알파벳 소문자를 원소값으로 저장하는데 1이면 'a', 2 이면 'b', ... 26이면 'z'를 저장한다.
6. 두 배열의 원소값을 다음과 같이 출력한다.

   [ 출력형식 ]
```
   10,1,3,21,6,8,11,26,22,19
   j,a,c,u,f,h,k,z,v,s

```
[ 실습 5 ]
- 로또는 중복을 허용하지 않음

1. LottoMachine1 이라는 클래스를  생성한다.
2. 1부터 45 사이의 난수 6개를 추출하여 다음 형식으로 출력한다.
   단, 6개 숫자는 중복을 허용하지 않는다.

   [ 출력형식 ]
```
   오늘의 로또 번호 - x, x, x, x, x, x
```




# 실습 2


다음에 제시된 소스 5개를 주어진 클래스명으로 구현하여 소스만 압축한 다음 강사메일로 제출하세요...

압축소스명 : 실습7.zip
강사메일주소 : unicodaum@hanmail.net
메일제목 : 자바기초실습7-XXX

[ 실습 1 ]
1. TwoArrayLab1 라는 클래스를 만든다.
2. 4개의 행과 4개의 열을 갖는 int 타입의 2차원 배열을 생성한다.

3. 다음과 같은 구성이 되도록 생성된 2차원 배열에 데이터를 대입한다.
```
   10, 12, 14, 16
   18, 20, 22, 24
   26, 28, 30, 32
   34, 36, 38, 40
```
4. 출력형식
```
    	1행 1열의 데이터 : 10
   	3행 4열의 데이터 : 32
   행의 갯수 : 4
   열의 갯수 : 4
   3행의 데이터들 : 26 28 30 32
   2열의 데이터들 : 12 20 28 36
   왼쪽 대각선 데이터들 : 10 20 30 40
   오른쪽 대각선 데이터들 : 16 22 28 34
```
   (*) 이 실습 문제를 해결할 때 제시된 배열은 4행 4열이지만 3행 3열 또는 5행 5열 등
   사이즈가 다른 정방행열인 경우에도 요구사항이 처리될 수 있게 구현한다.

[ 실습 2 ]
1. TwoArrayLab2 라는 클래스를 만든다.
2. 다음의 내용대로 char 타입의 2차원 배열을 생성한다.
```
         'B', 'C', 'A', 'A'
         'C', 'C', 'B', 'B'
         'D', 'A', 'A', 'D'
```
3. 4개의 원소를 갖는 int 타입의 배열을 생성한다.
```
   첫번째 원소에는 'A' 문자의 개수    
   두번째 원소에는 'B' 문자의 개수    
   세번째 원소에는 'C' 문자의 개수    
   네번째 원소에는 'D' 문자의 개수    
   를 저장한다.
```
4. 출력형식
```
   A 는 x개 입니다.
   B 는 x개 입니다.
   C 는 x개 입니다.
   D 는 x개 입니다.
```

[ 실습 3 ]

1. TwoArrayLab3 라는 클래스를 만든다.
2. 다음의 내용대로 int 타입의 2차원 배열을 생성한다.
   데이터는 4주간의 요일별 게임 시간이다.
```
            일 월  화  수 목 금  토  
   1주 	5,  2,  1,  0,  2,  3,  6
   2주	4,  3,  2,  1,  1,  0,  5
   3주	3,  1,  2,  1,  3,  1,  3
   4주	4,  3,  1,  0,  4   2,  7
```

월별 게임시간의 합을 구하고 7개의 방을 갖는 int 타입의 배열을 생성해서 저장하고 출력한다. 이 때 저장 순서는 일~ 토 순이다.
```
	일요일 : 16시간
	월요일 : 9시간
	화요일 : 6시간
	수요일 : 2시간
	목요일 : 10시간
	금요일 : 6시간
	토요일 : 21시간
```
주별 게임 시간의 합을 구하고 4개의 방을 갖는 int 타입의 배열을 생성해서 저장하고 출력한다.
```
	1주차 : 19시간
	2주차 : 16시간
	3주차 : 14시간
	4주차 : 21시간
```
[ 실습4 ]

1. TwoArrayLab4 라는 클래스를 만든다.
2. 다음 사양의 int 타입 2차원 배열을 생성한다.
```
   1행   10, 20, 30, 40, 50
   2행   5, 10, 15
   3행  11, 22, 33, 44
   4행  9, 8, 7, 6, 5, 4, 3, 2, 1
```
3. 행단위 합을 구하여 다음과 같이 출력한다.
```
   1행의 합은 x 입니다.
   2행의 합은 x 입니다.
   3행의 합은 x 입니다.
   4행의 합은 x 입니다.
```

[ 실습5 ]

1. TwoArrayLab5 라는 클래스를 만든다.

2. 5개의 행과 3개의 열을 갖는 int 타입의 2차원 배열을 생성하여 다음과 같이 출력한다.
```
   0	0	0
   0	0	0
   0	0	0
   0	0	0
   0	0	0
```
3. 2번에서 만든 2차원 배열에 다음과 같이 구성되도록 데이터를 대입한다.
```
   1	0	0		
   2	6	0		
   3	7	9		
   4	8	0		
   5	0	0
```
(*) 2번에서의 출력과 3번에서의 출력 사이에는 빈행을 출력한다.
또한 규칙을 잘 찾아서 로직을 잘 구현해 본다.

- 수행 결과
```
0	0	0
0	0	0
0	0	0
0	0	0
0	0	0

1	0	0
2	6	0
3	7	9
4	8	0
5	0	0
```