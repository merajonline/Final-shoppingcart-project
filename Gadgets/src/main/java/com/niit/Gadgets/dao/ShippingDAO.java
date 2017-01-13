package com.niit.Gadgets.dao;

import java.util.List;

import com.niit.Gadgets.model.Shipping;




public interface ShippingDAO 
{
	public void addShipping(Shipping shipping);
	public void updateShipping(Shipping shipping);
	//public Shipping getShipping(String emailid);
	//public void delete(String emailid);
	public List<Shipping> listShippings();

}
