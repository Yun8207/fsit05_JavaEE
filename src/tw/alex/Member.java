package tw.alex;

public class Member {

	private String name, account;
	private int age;
	public Member(String name, String account, int age) {
		this.name = name; this.account = account;
		this.age= age; this.account = account;
	}
	public String getName() {return name;}
	public int getAge() {return age;}
	public String getAccount() {return account;}
	public void setAge(int age) {this.age = age;}
}
