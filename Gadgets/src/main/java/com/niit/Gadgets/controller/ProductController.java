package com.niit.Gadgets.controller;


/*import java.util.List;

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
import com.niit.Gadgets.dao.ProductDAO;
import com.niit.Gadgets.model.Product;

@Controller
public class ProductController 
{
	@Autowired
	ProductDAO productDAO;
	
	
	@RequestMapping("/product")
	public ModelAndView newProduct(Model m) {
		m.addAttribute("product", new Product());
		List<Product> products = productDAO.listProducts();
		String json = new Gson().toJson(products);
		ModelAndView model = new ModelAndView("product");
		model.addObject("products", json);
		return model;
	}
	
	@RequestMapping(value = "/product/add",method=RequestMethod.POST)
	public String addProducts(Model model,@Valid @ModelAttribute("product") Product c, BindingResult result) {

		if(result.hasErrors())
			return "product";
		
		productDAO.addProduct(c);
		
		return "redirect:/home";
	
	}
	
	@RequestMapping("product/remove/{id}")
	public String deleteCategory(@PathVariable("id") String id, ModelMap model) throws Exception {

		try {
			productDAO.delete(id);
			model.addAttribute("message", "Successfully Deleted");
		} catch (Exception e) {
			model.addAttribute("message", e.getMessage());
			e.printStackTrace();
		}
		// redirectAttrs.addFlashAttribute(arg0, arg1)
		return "redirect:/product";
	}
	

	
	@RequestMapping("product/edit/{id}")
	public String editProduct(@PathVariable("id") String id, Model model) {
		System.out.println("editProduct");
		model.addAttribute("product", this.productDAO.getProduct(id));
		model.addAttribute("products", this.productDAO.listProducts());
		return "product";
	}
	
}*/

import java.io.File;
import java.nio.file.Path;
import java.nio.file.Paths;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.niit.Gadgets.dao.CategoryDAO;
import com.niit.Gadgets.dao.ProductDAO;
import com.niit.Gadgets.dao.SupplierDAO;
import com.niit.Gadgets.model.Category;
import com.niit.Gadgets.model.Product;
import com.niit.Gadgets.model.Supplier;
//import com.niit.shopingkartfront.util.FileUtil;

@Controller
public class ProductController 
{
	@Autowired
	ProductDAO productDAO;
	
	@Autowired
	Category category;
	
	@Autowired
	CategoryDAO categoryDAO;
	
	@Autowired
	SupplierDAO supplierDAO;
	
	@Autowired
	Supplier supplier;
	
	@Autowired
	Product product;
	
	private Path path;
	
	@RequestMapping(value="/product/add", method=RequestMethod.POST)
	public String addProduct(Model model,@Valid @ModelAttribute("product") Product product,HttpServletRequest request)
	{
		
		Category category=categoryDAO.getByName(product.getCategory().getCategoryName());
		categoryDAO.addCategory(category);
		
		Supplier supplier=supplierDAO.getByName(product.getSupplier().getSuppName());
		supplierDAO.addSupplier(supplier);
		
		
		product.setCategory(category);
		product.setSupplier(supplier);
		
		product.setCategoryId(category.getCategoryId());
		product.setSuppId(supplier.getSuppId());
		
		productDAO.addProduct(product);

		MultipartFile file =product.getImage();
		String rootDirectory=request.getSession().getServletContext().getRealPath("/");
		path=Paths.get(rootDirectory + "\\WEB-INF\\resources\\images\\"+product.getp_id()+".jpg");
		
		if(file!=null &&!file.isEmpty())
		{
			try{
				file.transferTo(new File(path.toString()));
				System.out.println("image uploaded....");
			}
			catch(Exception e)
			{
				e.printStackTrace();
				throw new RuntimeException("image saving failed",e);
			}
			
		}
		//FileUtil.upload(path.toString(), file, product.getp_id()+".jpg");
		//System.out.println("image uploaded"+product.getp_id());
		return "redirect:/product";
		//return "product";
	}
	
	
	
	
	@RequestMapping("product/remove/{p_id}")
	public String deleteProduct(@PathVariable("p_id") String id, ModelMap model) throws Exception {

		try {
			productDAO.delete(id);
			model.addAttribute("message", "Successfully Added");
		} catch (Exception e)
		{
			model.addAttribute("message", e.getMessage());
			e.printStackTrace();
		}
		// redirectAttrs.addFlashAttribute(arg0, arg1)
		return "redirect:/product";
	}
	

	@RequestMapping("product/edit/{p_id}")
	public String editProduct(@PathVariable("p_id") String id, Model model) 
	{
		System.out.println("editProduct");
		model.addAttribute("product", this.productDAO.getProduct(id));
		model.addAttribute("productList", this.productDAO.list());
		model.addAttribute("categoryList", this.categoryDAO.listCategories());
		model.addAttribute("supplierList", this.supplierDAO.listSuppliers());
		return "product";
	}
	

	@RequestMapping(value = "/product", method = RequestMethod.GET)
	public String listProducts(Model model)
	{
		model.addAttribute("product",new Product());
		model.addAttribute("supplier",new Supplier());
		model.addAttribute("category",new Category());
		model.addAttribute("productList",this.productDAO.list());
		model.addAttribute("categoryList",this.categoryDAO.listCategories());
		model.addAttribute("supplierList",this.supplierDAO.listSuppliers());
		return "product";
	}
	
	@RequestMapping(value="product/get/{p_id}")
	public String getSelectedProduct(@PathVariable("p_id") String id,Model model,RedirectAttributes redirectAttributes)
	{
		redirectAttributes.addFlashAttribute("selectedProduct",productDAO.getProduct(id));
		
		return "redirect:/backToHome";		
	}

	@RequestMapping(value="/backToHome",method=RequestMethod.GET)
	public String backToHome(@ModelAttribute("selectedProduct")
	final Product selectedProduct,final Model model)
	{
		model.addAttribute("selectedProduct",selectedProduct);
		model.addAttribute("categoryList",this.categoryDAO.listCategories());
		return "item";
		
		
	}
	
}

