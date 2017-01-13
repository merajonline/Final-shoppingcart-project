package com.niit.Gadgets.dao;

import java.util.List;

import com.niit.Gadgets.model.Category;
import com.niit.Gadgets.model.Customer;

public interface CategoryDAO 
{
	
	
	public void addCategory(Category category);
	//public void updateCustomer(Customer customer);
	public Category getCategory(String categoryId);
	public void delete(String categoryId);
	public List<Category> listCategories();
	public Category getByName(String categoryName);

}