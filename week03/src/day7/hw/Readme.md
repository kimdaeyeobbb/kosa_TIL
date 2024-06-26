# 0314 실습 풀이

```java
package exercise;  // 제출시 packge exercise로 변경

class Human{
    private String name;
    private int age;
    private int height;
    private int weight;

    /* 멤버변수를 기본값으로 초기화 */
    // 얘로 객체 생성가능 
    public Human(){}

    /* 멤버변수 초기화 */
    // 얘로 객체생성 가능
    public Human(String name, int age, int height, int weight){
        this.name = name;
        this.age = age;
        this.height = height;
        this.weight = weight;
    }

    public String printInformation(){
        return name + "\t" + age + "\t" + height + "\t" + weight;
    }
}

class Student extends Human{
    private String number;
    private String major;

    public Student(){}

    // number, major는 직접 세팅. 나머지는 조상 생성자를 통해 세팅 
    public Student(String name, int age, int height, int weight, String number, String major){
        super(name, age, height, weight);
        this.number = number;
        this.major = major;
    }

    /* 조상을 호출하지 않으면 자기 자신을 재귀적으로 호출 => 스택오버플로우 발생 */
    @Override
    public String printInformation() {
        return super.printInformation() + "\t" + number + "\t" + major;
    }
}

public class StudentTest {
    public static void main(String[] args) {
        Student arrays[] = new Student[3];
        arrays[0] = new Student("홍길동", 20, 171,81,"2001101","영문");
        arrays[1] = new Student("고길동", 21, 183,72,"2001102","건축");
        arrays[2] = new Student("박길동", 22, 175,65,"2001103","컴공");

        for(Student st: arrays){
            System.out.println(st.printInformation());
        }
    }
}
```