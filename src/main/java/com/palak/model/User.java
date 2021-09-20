package com.palak.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="user")
public class User {
	@Id
	private int id;
	private String firstname;
	private String lastname;
	private int age;
	private String username;
	private String password;
	private String Cpassword;
	
	//Constructor
	
	public User() {
		
	}
	
	public User(String username, String firstname, String lastname, int age, String password,String Cpassword) {
		super();
		this.username = username;
		this.firstname = firstname;
		this.lastname = lastname;
		this.age = age;
		this.password = password;
		this.Cpassword = Cpassword;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getFirstname() {
		return firstname;
	}
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	public String getLastname() {
		return lastname;
	}
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getCpassword() {
		return Cpassword;
	}


	public void setCpassword(String cpassword) {
		this.Cpassword = cpassword;
	}


	@Override
	public String toString() {
		return "User [id=" + id + ", firstname=" + firstname + ", lastname=" + lastname + ", age=" + age + ", username="
				+ username + ", password=" + password + ", Cpassword=" + Cpassword + "]";
	}
}
