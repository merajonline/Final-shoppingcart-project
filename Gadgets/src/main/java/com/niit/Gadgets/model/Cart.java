package com.niit.Gadgets.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

//replica of table
@Entity

//it is used to represent table name 
@Table(name="Cart")

//it has to pass atributes(variables)  to DAO
@Component
public class Cart 
{
	//refers to primary key automatically
	  @Id
	  
	  //here Id we are not taking from user so it should be autogenerated.
	  @GeneratedValue(strategy=GenerationType.IDENTITY)
	  private int id;
	  private String p_name;
	  private int price;
	  private int quantity;
	  private String status;
	  private String u_id;
	  private String p_id;
	  
	 
	  
	  
	  
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	public String getP_id() {
		return p_id;
	}
	public void setP_id(String p_id) {
		this.p_id = p_id;
	}
	public String getP_name() {
		return p_name;
	}
	public void setP_name(String p_name) {
		this.p_name = p_name;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getU_id() {
		return u_id;
	}
	public void setU_id(String u_id) {
		this.u_id = u_id;
	}
}
