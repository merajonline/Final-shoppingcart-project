package com.niit.Gadgets.dao;

import java.util.List;

import com.niit.Gadgets.model.Category;
import com.niit.Gadgets.model.Customer;

public interface CustomerDAO 
{
	public void addCustomer(Customer customer);
	//public void updateCustomer(Customer customer);
	public Customer getCustomer(String phone);
	public void delete(String phone);
	public List<Customer> listCustomers();

}