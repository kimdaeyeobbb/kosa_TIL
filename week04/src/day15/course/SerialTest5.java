package day15.course;
import java.io.FileOutputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
class StepDTO implements Serializable{
	private static final long serialVersionUID = -9060430121447664088L;
	private String stepId;
	transient private String password;
	// transient: 일시적임.
	// 이 멤버변수의 값은 영구적으로 보관될 수 없다.
	// 인스턴스 멤버변수 중 transient를 붙이면 객체의 직렬화의 대상에서 제외됨
	private int age;
	transient private int score;
	// transient: 일시적임.
	// 인스턴스 멤버변수 중 transient를 붙이면 객체의 직렬화의 대상에서 제외됨
	public StepDTO(String stepId, String password, int age, int score) {
		super();
		this.stepId = stepId;
		this.password = password;
		this.age = age;
		this.score = score;
	}
	public String getStepId() {
		return stepId;
	}
	public void setStepId(String stepId) {
		this.stepId = stepId;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}	
	public int getScore() {
		return score;
	}
	public void setScore(int score) {
		this.score = score;
	}
}

public class SerialTest5 {
   public static void main(String[] args) throws Exception{ 
      FileOutputStream fos = 
    		  new FileOutputStream("c:/iotest/test3.ser"); 
      ObjectOutputStream oos = 
    		  new ObjectOutputStream(fos);
      
      StepDTO dto  = new StepDTO("unico", "@12345", 33, 100);
      oos.writeObject(dto);
      oos.close();
      fos.close();
      System.out.println("직렬화 출력 완료");      
   }
}



