package com.model;

import javax.persistence.Entity;
import javax.persistence.Id;

import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.format.annotation.NumberFormat;
import org.springframework.format.annotation.NumberFormat.Style;
import org.springframework.stereotype.Component;

import com.sun.istack.internal.NotNull;

@Entity
@Component
public class NewUser {

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
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhonenumber() {
		return phonenumber;
	}
	public void setPhonenumber(String phonenumber) {
		this.phonenumber = phonenumber;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getConfirmpassword() {
		return confirmpassword;
	}
	public void setConfirmpassword(String confirmpassword) {
		this.confirmpassword = confirmpassword;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
		@NotEmpty(message="Name field is mandatory")
		private String firstname;
		@NotNull
		private String lastname;
		
		@Id
		@NotEmpty(message="Name field is mandatory")
		private String email;
		@Length(max=10,min=10,message="Phone number is not valid. Should be of length 10.")
	    @NumberFormat(style= Style.NUMBER)
		private String phonenumber;
		@NotEmpty(message="Password field is mandatory")
		private String password;
		@NotEmpty(message="This field is mandatory")
		private String confirmpassword;
		@NotEmpty(message="Age field is mandatory")
		private String age;
}
