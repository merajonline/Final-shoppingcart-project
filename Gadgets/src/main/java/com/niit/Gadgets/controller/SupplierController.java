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
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.niit.Gadgets.dao.SupplierDAO;

import com.niit.Gadgets.model.Supplier;


@Controller
public class SupplierController 
{
	@Autowired
	SupplierDAO supplierDAO;
	
	
	@RequestMapping("/supplier")
	public ModelAndView newSupplier(Model m1) {
		m1.addAttribute("supplier", new Supplier());
		List<Supplier> suppliers = supplierDAO.listSuppliers();
		String json = new Gson().toJson(suppliers);
		ModelAndView model = new ModelAndView("supplier");
		model.addObject("suppliers", json);
		return model;
	}
	
	@RequestMapping(value = "/supplier/add",method=RequestMethod.POST)
	public String addSupplier(Model model,@Valid @ModelAttribute("supplier") Supplier sp, BindingResult result) {
		
		
		if(result.hasErrors())
		return "supplier";
		supplierDAO.addSupplier(sp);
		return "redirect:/supplier";
	
	}
	
	@RequestMapping("/supplier/remove/{supplierId}")
	public String deleteSupplier(@PathVariable("supplierId") String spid, ModelMap model) throws Exception {

		try {
			supplierDAO.delete(spid);
			model.addAttribute("message", "Successfully Deleted");
		} catch (Exception e) {
			model.addAttribute("message", e.getMessage());
			e.printStackTrace();
		}
		
		return "redirect:/supplier";
	}
	

	@RequestMapping("/supplier/edit/{supplierId}")
	public String editSupplier(@PathVariable("supplierId") String spid, Model model) {
		System.out.println("editSupplier");
		model.addAttribute("supplier", this.supplierDAO.getSupplier(spid));
		model.addAttribute("suppliers", this.supplierDAO.listSuppliers());
		return "supplier";
	}
	
}