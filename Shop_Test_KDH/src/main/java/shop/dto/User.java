package shop.dto;

import java.io.Serializable;
import java.util.Date;

public class User implements Serializable {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	
	private String id;
	private String password;
	private String name;
	private String gender;
	private String birth;
	private String mail;
	private String phone;
	private String address;
	private Date registDay;
	
	public User() {
		super();
	}
	
	
	
	public User(String id, String password, String name, String gender, String birth, String mail, String phone,
			String address, Date registDay) {
		this.id = id;
		this.password = password;
		this.name = name;
		this.gender = gender;
		this.birth = birth;
		this.mail = mail;
		this.phone = phone;
		this.address = address;
		this.registDay = registDay;
	}



	


	public User(String name, String phone) {
		this.name = name;
		this.phone = phone;
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

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getBirth() {
		return birth;
	}

	public void setBirth(String birth) {
		this.birth = birth;
	}

	public String getMail() {
		return mail;
	}

	public void setMail(String mail) {
		this.mail = mail;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public Date getRegistDay() {
		return registDay;
	}

	public void setRegistDay(Date registDay) {
		this.registDay = registDay;
	}

	@Override
	public String toString() {
		return "User [id=" + id + ", password=" + password + ", name=" + name + ", gender=" + gender + ", birth="
				+ birth + ", mail=" + mail + ", phone=" + phone + ", address=" + address + ", registDay=" + registDay
				+ "]";
	}
	

}
