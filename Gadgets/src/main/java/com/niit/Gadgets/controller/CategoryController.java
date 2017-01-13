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
import com.niit.Gadgets.dao.CategoryDAO;
//import com.niit.Gadgets.dao.CustomerDAO;
import com.niit.Gadgets.model.Category;
import com.niit.Gadgets.model.Customer;

@Controller
public class CategoryController 
{
	@Autowired
	CategoryDAO categoryDAO;
	
	
	
	//category method implementation
	
	
	@RequestMapping("/category")
	public ModelAndView newCategory(Model m1) {
		m1.addAttribute("category", new Category());
		List<Category> categories = categoryDAO.listCategories();
		String json = new Gson().toJson(categories);
		ModelAndView model = new ModelAndView("category");
		//m1.addAttribute("categoryList",this.categoryDAO.listCategories());
		model.addObject("categories", json);
		return model;
	}
	
	@RequestMapping(value = "/category/add",method=RequestMethod.POST)
	public String addCategory(Model model,@Valid @ModelAttribute("category") Category ct, BindingResult result) {
		
		
		if(result.hasErrors())
		return "category";
		categoryDAO.addCategory(ct);
		return "redirect:/category";
	
	}
	
	@RequestMapping("category/remove/{categoryId}")
	public String deleteCategory(@PathVariable("categoryId") String ctid, ModelMap model) throws Exception {

		try {
			categoryDAO.delete(ctid);
			model.addAttribute("message", "Successfully Deleted");
		} catch (Exception e) {
			model.addAttribute("message", e.getMessage());
			e.printStackTrace();
		}
		
		return "redirect:/category";
	}
	

	@RequestMapping("category/edit/{categoryId}")
	public String editCategory(@PathVariable("categoryId") String ctid, Model model) {
		System.out.println("editCategory");
		model.addAttribute("category", this.categoryDAO.getCategory(ctid));
		model.addAttribute("categories", this.categoryDAO.listCategories());
		return "category";
	}
	
	
	
	
	
	
}
