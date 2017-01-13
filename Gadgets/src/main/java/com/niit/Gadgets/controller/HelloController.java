package com.niit.Gadgets.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.niit.Gadgets.dao.CategoryDAO;
import com.niit.Gadgets.dao.CustomerDAO;
import com.niit.Gadgets.model.Category;
import com.niit.Gadgets.model.Customer;

@Controller
public class HelloController {
	@Autowired
	CustomerDAO customerDAO;
	
	@Autowired
	CategoryDAO categoryDAO;
	
	@Autowired
	Category category;
	
	@RequestMapping("/")
	public String getLanding(Model m)
	{
		System.out.println("Landing");
		m.addAttribute("category", category);
		m.addAttribute("categoryList",this.categoryDAO.listCategories());
		return "index";
	}
	
	@RequestMapping("/home")
	public String getHome(Model m)
	{
		m.addAttribute("category", category);
		m.addAttribute("categoryList",this.categoryDAO.listCategories());
		System.out.println("home Page");
		return "index";
	}
	@RequestMapping("/admin")
	public String getAdmin()
	{
		System.out.println("Admin Page");
		return "admin";
	}
	@RequestMapping(value="/login")
	public String  login(@RequestParam(value="error",required=false)String error,@RequestParam(value="logout",required=false) String logout,Model model)
	{
		if(error!=null)
		{
			System.out.println("Error..");
			model.addAttribute("loginerror","...Invalid username and password");
		}
		
		if(logout!=null)
		{
			System.out.println("Logout called..");
			model.addAttribute("loginmsg","...you have been logged out");
		}
		
		return "login";
	}
	
	@RequestMapping("/customer")
	public ModelAndView newCustomer(Model m) {
		m.addAttribute("customer", new Customer());
		List<Customer> customers = customerDAO.listCustomers();
		String json = new Gson().toJson(customers);
		ModelAndView model = new ModelAndView("customer");
		model.addObject("customers", json);
		return model;
	}
	
	@RequestMapping(value = "/customer/add",method=RequestMethod.POST)
	public String addCustomer(Model model,@Valid @ModelAttribute("customer") Customer c, BindingResult result) {
		c.setEnabled(false);
		c.setRole("ROLE_USER");	
		if(result.hasErrors())
		{
			model.addAttribute("msg","User cannot be added");
			return "customer";
		}
		else
		{
			model.addAttribute("msg","User added successfully!");
			customerDAO.addCustomer(c);
			return "redirect:/home";
		}
		
		/*if(result.hasErrors())
		return "customer";
		customerDAO.addCustomer(c);
		return "redirect:/home";*/
	
	}
	
	@RequestMapping("customer/remove/{phone}")
	public String deleteCustomer(@PathVariable("phone") String phone, ModelMap model) throws Exception {

		try {
			customerDAO.delete(phone);
			model.addAttribute("message", "Successfully Deleted");
		} catch (Exception e) {
			model.addAttribute("message", e.getMessage());
			e.printStackTrace();
		}
		// redirectAttrs.addFlashAttribute(arg0, arg1)
		return "redirect:/customer";
	}
	

	@RequestMapping("customer/edit/{phone}")
	public String editCustomer(@PathVariable("phone") String phone, Model model) {
		System.out.println("editCustomer");
		model.addAttribute("customer", this.customerDAO.getCustomer(phone));
		model.addAttribute("customers", this.customerDAO.listCustomers());
		return "customer";
	}
	
	/*@RequestMapping("/login")
	public String loginMethod()
	{
		System.out.println("login Page");
		return "login";
	}
	@RequestMapping("customer/login")
	public String loginCustomer(@RequestParam("cPhone") String cPhone,@RequestParam("password")String pass, Model model) {
		System.out.println("loginCustomer");
		Customer cust = customerDAO.getCustomer(cPhone);
		if(cust.getcPassword().equals(pass))
		{
			model.addAttribute("msg","Login Successfull");
		}
		else
		{
			model.addAttribute("msg","Login not Successfull");
		}
		return "redirect:/customer";
	}*/

}
