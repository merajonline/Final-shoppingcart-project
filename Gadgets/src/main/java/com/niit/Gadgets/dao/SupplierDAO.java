package com.niit.Gadgets.dao;

import java.util.List;

import com.niit.Gadgets.model.Category;
import com.niit.Gadgets.model.Customer;
import com.niit.Gadgets.model.Supplier;

public interface SupplierDAO 
{
	
	
	public void addSupplier(Supplier supplier);
	public Supplier getSupplier(String id);
	public void delete(String suppId);
    public List<Supplier> listSuppliers();
    public Supplier getByName(String suppName);
}
