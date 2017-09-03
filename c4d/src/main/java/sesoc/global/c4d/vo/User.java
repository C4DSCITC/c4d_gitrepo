package sesoc.global.c4d.vo;

public class User {
	private String id;
	private String password;
	private String name;
	private String email;
	private String birthdate;
	private int age;
	private String address;
	private String tel;
	private String gender;
	private String field;
	private String language;
	private String image;
	
	public User() {
		// TODO Auto-generated constructor stub
	}

	public User(String id, String password, String name, String email, String birthdate, int age, String address,
			String tel, String gender, String field, String language, String image) {
		super();
		this.id = id;
		this.password = password;
		this.name = name;
		this.email = email;
		this.birthdate = birthdate;
		this.age = age;
		this.address = address;
		this.tel = tel;
		this.gender = gender;
		this.field = field;
		this.language = language;
		this.image = image;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getBirthdate() {
		return birthdate;
	}

	public void setBirthdate(String birthdate) {
		this.birthdate = birthdate;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getField() {
		return field;
	}

	public void setField(String field) {
		this.field = field;
	}

	public String getLanguage() {
		return language;
	}

	public void setLanguage(String language) {
		this.language = language;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	@Override
	public String toString() {
		return "User [id=" + id + ", password=" + password + ", name=" + name + ", email=" + email + ", birthdate="
				+ birthdate + ", age=" + age + ", address=" + address + ", tel=" + tel + ", gender=" + gender
				+ ", field=" + field + ", language=" + language + ", image=" + image + "]";
	}
	
}
