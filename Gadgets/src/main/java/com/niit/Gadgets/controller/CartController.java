package com.niit.Gadgets.controller;

import java.security.Principal;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.niit.Gadgets.dao.CartDAO;
import com.niit.Gadgets.dao.CategoryDAO;
import com.niit.Gadgets.dao.ProductDAO;
import com.niit.Gadgets.dao.CustomerDAO;
import com.niit.Gadgets.model.Cart;
import com.niit.Gadgets.model.Category;
import com.niit.Gadgets.model.Product;
import com.niit.Gadgets.model.Customer;

@Controller
public class CartController 
{
	
 @Autowired(required=true)
 Cart cart;
 
 @Autowired(required=true)
 CartDAO cartDAO;
 
 @Autowired(required=true)
 CategoryDAO categoryDAO;
 
 @Autowired(required=true)
 ProductDAO productDAO;
 
 @Autowired(required=true)
 Product product;
 
 @Autowired(required=true)
 Customer customerDAO;
	
 	@Autowired(required=true)
   private Customer custmer;
   
   
	@RequestMapping(value = "/myCart", method = RequestMethod.GET)
	public String myCart(Model model,Principal principal)
	{
		try
		{
		model.addAttribute("cart",new Cart());
		model.addAttribute("cartList",this.cartDAO.userCartList(principal.getName()));
		model.addAttribute("category",new Category());
		model.addAttribute("categoryList",this.categoryDAO.listCategories());
		model.addAttribute("displayCart","true");
		
		
		int i,j=0;
		int s=0;
		int n=cartDAO.userCartList(principal.getName()).size();
		System.out.println(n);
		for(i=0;i<n;i++)
		{
			s=s+(cartDAO.userCartList(principal.getName()).get(i).getPrice())*cartDAO.userCartList(principal.getName()).get(i).getQuantity();
		}
		System.out.print(s);
		model.addAttribute("sum",s);
		
		}
		catch(Exception ex)
		{
			System.out.println("ex.getMessage");
		}
		return "cart";
		
		
	}
	
	@RequestMapping(value = "cart/add/{p_id}", method = RequestMethod.GET)
	public String addToCart(@PathVariable("p_id") String id, HttpServletRequest request ,Principal principal)
	{
		int flag =0;
		int quantities;
		try
		{
		
		Product product=productDAO.getProduct(id);
		//User user = userDAO.getUser(id);
		List <Cart> l = cartDAO.list();
		for(Cart c : l)
		{
			System.out.println(c.getId());
			if(c.getP_id().equals(id) && c.getU_id().equals(principal.getName()))
			{
				System.out.println("inside loop and matched");
				quantities=c.getQuantity() + 1;
				c.setQuantity(quantities);
				cartDAO.updateCart(c);
				flag = 1;
				break;
			}
		}
		if(flag==0)
		{
			System.out.println("no matche found so");	
		cart.setPrice(product.getp_price());
		cart.setP_id(product.getp_id());
		cart.setP_name(product.getp_name());
		cart.setQuantity(1);
		cart.setU_id(principal.getName());
		cart.setStatus("N");
		
		//cartDAO.updateCart(cart);
		cartDAO.addCart(cart);
		}}
		catch(Exception e)
		{
			System.out.println(e.getMessage());
		}
		return "redirect:/";
		
		
		
	}
	@RequestMapping(value = "/checkout", method = RequestMethod.GET)
	public String checkout(Model model,Principal principal)
	{
		int i,j=0;
		int s=0;
		int n=cartDAO.userCartList(principal.getName()).size();
		System.out.println(n);
		for(i=0;i<n;i++)
		{
			s=s+((cartDAO.userCartList(principal.getName()).get(i).getPrice()))*cartDAO.userCartList(principal.getName()).get(i).getQuantity();
		}
		System.out.print(s);
		model.addAttribute("sum",s);
		model.addAttribute("cart",new Cart());
		model.addAttribute("cartList",this.cartDAO.userCartList(principal.getName()));
		
		return "/checkout";
	    
	}
	@RequestMapping("/cart/delete/{id}")
	public String deleteCart(@PathVariable("id") int id,Model model)
	{
		cartDAO.deleteCart(id);
		return "redirect:/myCart";
	}
	/*@RequestMapping("/cart/edit/{id}")
	public String editCart(@PathVariable("id") String id, Model model) {
		System.out.println("editcart");
		model.addAttribute("cart", this.cartDAO.getCart(id));
		model.addAttribute("cart", this.cartDAO.list());
		return "redirect:/myCart";
	}*/
	
	
	
	@RequestMapping("/payment")
	public String getPayment()
	{
		return "payment";
	}
	
	@RequestMapping("/thanks")
	public String getThanks(Principal principal)
	{
		String id = principal.getName();//customerDAO.getEmailid();
		
		cartDAO.deleteforuser(id);
		
		
			/*int i;
			int n=cartDAO.userCartList(principal.getName()).size();
			System.out.println("cart size for this customer="+n);
			for(i=0;i<=n;i++)
			{
				cartDAO.deleteCart((cartDAO.userCartList(principal.getName()).get(i).getId()));
			}*/
		
		
		
		return "thanks";
	}
	
}
