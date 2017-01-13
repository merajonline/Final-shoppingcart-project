package com.niit.Gadgets.dao;

import java.util.List;


import com.niit.Gadgets.model.Cart;
//An interface in java is a blueprint of a class. It has static constants and abstract methods only.
public interface CartDAO 
{
  //addcart method initialization
  public void addCart(Cart cart);
  public void updateCart(Cart cart);
  // delete cart method initialization
  public void deleteCart(int id);
  public void deleteforuser(String uid);
  //getcart method initialization
  public Cart getCart(String p_id);
  //public Cart getCartByid(int id);
  public List<Cart> list();
  public List<Cart> userCartList(String uname);
  
}
