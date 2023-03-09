다음에 제시된 소스 5개를 주어진 클래스명으로 구현하여 소스만 압축한 다음 강사메일로 제출하세요...

압축소스명 : 실습6.zip
강사메일주소 : unicodaum@hanmail.net
메일제목 : 자바기초실습6-XXX

[ 실습 1 ]
- 배열 생성 후 element 출력하는 실습

1. ArrayLab1 이라는 클래스를 하나 만든다.
2. ary 라는 int 타입의 배열 변수를 선언하고 10개의 엘리먼트를 갖는 배열을 생성하여 대입한다.
3. 배열의 값들을 하나의 행에 다음 형식으로 출력한다. (한 행에 출력 이후에는 개행)
   0 0 0 0 0 0 0 0 0 0
4. 생성된 배열에 10, 20, 30, 40, 50, 60, 70, 80, 90, 100 을 각각의 element 로 저장한다.
5. 첫 번째 원소와 마지막 원소만 출력하고 합도 출력한다.
   첫 번째 : 10
   마지막 : 100
   합 : 110
6. 배열의 값들을 하나의 행에 다음 형식으로 출력한다.
   10 20 30 40 50 60 70 80 90 100
7. 배열의 값들을 하나의 행에 다음 형식으로 출력한다.(역순으로)
   100 90 80 70 60 50 40 30 20 10
8. 배열의 값들을 하나의 행에 다음 형식으로 출력한다.
   20 40 60 80 100



[ 실습 2 ]

1. ArrayLab2 라는 클래스를 하나 만든다.
2. 10개의 숫자(정수)를 저장할 수 있는 배열을 하나 만든다.
3. 각각의 element로  4부터 20사이의 난수를 추출하여 저장한다.
4. 모든 원소의 합을 구한다.
5. 다음과 같은 형식으로 출력한다.

   모든 원소의 값 : x,x,x,x,x,x,x,x,x,x
   모든 원소의 합 : xxx

[ 실습 3 ]
1. ArrayLab3 라는 클래스를 하나 만든다.
2. 'J', 'a', 'v', 'a' 라는 element 로 구성되는 char 타입의 배열을 만든다.
3. 각 원소들의 값에서 대문자는 소문자로 소문자는 대문자로 변환하여 저장한다.
4. 배열의 element 들을 다음과 같이 출력한다.
   j
   A
   V
   A


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

   10,1,3,21,6,8,11,26,22,19
   j,a,c,u,f,h,k,z,v,s


[ 실습 5 ]
- 로또는 중복을 허용하지 않음

1. LottoMachine1 이라는 클래스를  생성한다.
2. 1부터 45 사이의 난수 6개를 추출하여 다음 형식으로 출력한다.
   단, 6개 숫자는 중복을 허용하지 않는다.

   [ 출력형식 ]

   오늘의 로또 번호 - x, x, x, x, x, x

