package com.niit.Gadgets.controller;



import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.niit.Gadgets.dao.ShippingDAO;
import com.niit.Gadgets.model.Shipping;


@Controller
public class ShippingController 
{
	@Autowired
	ShippingDAO shippingDAO;
	
	
	@RequestMapping("/shipping")
	public ModelAndView newShipping(Model m1) {
		m1.addAttribute("shipping", new Shipping());
		List<Shipping> shippings = shippingDAO.listShippings();
		String json = new Gson().toJson(shippings);
		ModelAndView model = new ModelAndView("shipping");
		model.addObject("shippings", json);
		return model;
	}
	
	@RequestMapping(value = "/shipping/add",method=RequestMethod.POST)
	public String addShip(Model model,@Valid @ModelAttribute("shipping") Shipping sp, BindingResult result) {
		
		
		if(result.hasErrors())
		return "shipping";
		shippingDAO.addShipping(sp);
		return "redirect:/payment";
	
	}
	
	/*@RequestMapping("/supplier/remove/{supplierId}")
	public String deleteSupplier(@PathVariable("supplierId") String spid, ModelMap model) throws Exception {

		try {
			supplierDAO.delete(spid);
			model.addAttribute("message", "Successfully Deleted");
		} catch (Exception e) {
			model.addAttribute("message", e.getMessage());
			e.printStackTrace();
		}
		
		return "redirect:/supplier";
	}*/
	

	/*@RequestMapping("/shipping/edit/{emailid}")
	public String editshipping(@PathVariable("emailid") String spid, Model model) {
		System.out.println("editShipping");
		model.addAttribute("shipping", this.shippingDAO.getShipping(spid));
		model.addAttribute("shippings", this.shippingDAO.listShippings());
		return "shipping";
	}*/
	
}
