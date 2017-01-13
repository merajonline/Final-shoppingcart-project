package com.niit.Gadgets.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.hibernate.annotations.GenericGenerator;
import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.stereotype.Component;

@Entity
@Component
public class Shipping {
	
	/*@Id @GeneratedValue(generator="increment")
	@GenericGenerator(name = "increment", strategy = "increment")
	private String id;*/
	@NotEmpty(message="Name should not be null")
	private String fname;
	private String lname;
	private String city;
	private String country;
	@NotEmpty(message="shipping address should not be null")
	private String shippingaddress;
	@NotEmpty(message="pincode should not be null")
	private String pincode;
	@NotEmpty(message="phone no. should not be null")
	private String phone;
	@Id
	private String emailid;
	private String state;
	
	
	
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getShippingaddress() {
		return shippingaddress;
	}
	public void setShippingaddress(String shippingaddress) {
		this.shippingaddress = shippingaddress;
	}
	public String getPincode() {
		return pincode;
	}
	public void setPincode(String pincode) {
		this.pincode = pincode;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmailid() {
		return emailid;
	}
	public void setEmailid(String emailid) {
		this.emailid = emailid;
	}
	
	
	
	/*@Id @GeneratedValue(generator="increment")
	@GenericGenerator(name = "increment", strategy = "increment")
	@Id
	@NotNull(message="id  should not be null")
	private int id;
	@Size(min=10,max=14,message="phone number should have 10 to 14 characters")
	private String phone;
	private String role;
	private boolean enabled;
	@NotEmpty(message="emailid  should not be null")
	private String emailid;
	@NotEmpty(message="password should not be null")
	private String password;
	@NotEmpty(message="name should not be null")
	private String name;
	
	
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	
	
	public boolean getEnabled() {
		return enabled;
	}
	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmailid() {
		return emailid;
	}
	public void setEmailid(String emailid) {
		this.emailid = emailid;
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
	}*/
	

}