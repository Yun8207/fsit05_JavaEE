package tw.alex.beans;

import java.io.Serializable;

/*java bean
 * 1.public class
 * (X)2.implement serializable
 * (X)3.all fields not public => private
 * 4.default constructor
 * 5.getter & setter => getXxx(), setXxx()
 */

//public class Member implements Serializable{
public class Member {
	private String id, name;
	
	public Member() {
	}
	public Member(String id, String name) {
		this.id = id; this.name = name;
	}
	public void setId(String id) {
		this.id = id;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getId() {return this.id;}
	public String getName() {return this.name;}
	
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return super.toString();
	}

}
