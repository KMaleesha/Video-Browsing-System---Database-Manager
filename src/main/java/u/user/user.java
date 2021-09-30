package u.user;

public class user {
	private int user_id;
	private String name;
	private String userName;
	private String email;
	private String telNo;
	private String password;
	private String birthD;
	
	//generate constructor for the attributes
	public user(int user_id, String name, String userName, String email, String telNo, String password, String birthD) {
		this.user_id = user_id;
		this.name = name;
		this.userName = userName;
		this.email = email;
		this.telNo = telNo;
		this.password = password;
		this.birthD = birthD;
	}

	//generate get methods for the attributes
	public int getUser_id() {
		return user_id;
	}

	public String getName() {
		return name;
	}

	public String getUserName() {
		return userName;
	}

	public String getEmail() {
		return email;
	}

	public String getTelNo() {
		return telNo;
	}

	public String getPassword() {
		return password;
	}

	public String getBirthD() {
		return birthD;
	}

}
