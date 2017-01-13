package com.niit.Gadgets.dao;

import java.util.List;

import com.niit.Gadgets.model.Category;
import com.niit.Gadgets.model.Product;

public interface ProductDAO 
{
	public void addProduct(Product product);
	  public Product getProduct(String id); 	   
	   public void delete(String id);   	   
	   public List<Product> list(); 	   
	   public Product getByName(String name);
	   
}