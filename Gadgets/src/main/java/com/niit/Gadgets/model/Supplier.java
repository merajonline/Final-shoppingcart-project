package com.niit.Gadgets.model;

import javax.persistence.Entity;
import javax.persistence.Id;

import org.springframework.stereotype.Component;

@Entity
@Component
public class Supplier {
	
	@Id
	private String suppId;
	private String suppName;
	
	private String suppDes;
	
	private String suppPhone; 
	private String suppAdd;
	public String getSuppId() {
		return suppId;
	}
	public void setSuppId(String suppId) {
		this.suppId = suppId;
	}
	public String getSuppName() {
		return suppName;
	}
	public void setSuppName(String suppName) {
		this.suppName = suppName;
	}
	public String getSuppDes() {
		return suppDes;
	}
	public void setSuppDes(String suppDes) {
		this.suppDes = suppDes;
	}
	public String getSuppPhone() {
		return suppPhone;
	}
	public void setSuppPhone(String suppPhone) {
		this.suppPhone = suppPhone;
	}
	public String getSuppAdd() {
		return suppAdd;
	}
	public void setSuppAdd(String suppAdd) {
		this.suppAdd = suppAdd;
	}
	
	
}
