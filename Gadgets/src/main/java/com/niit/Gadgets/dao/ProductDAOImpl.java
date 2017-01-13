package com.niit.Gadgets.dao;


import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.niit.Gadgets.model.Category;
import com.niit.Gadgets.model.Product;

//import antlr.collections.List;

//connects the database by taking from pojo class 
@EnableTransactionManagement
@Repository("productDAO")
public class ProductDAOImpl implements ProductDAO
{	
	@Autowired
	private SessionFactory sessionFactory; 
	
	public ProductDAOImpl(SessionFactory sessionFactory)
	{
		this.sessionFactory=sessionFactory;
	}
	
	
	@Transactional
	public void addProduct(Product product)
	{
		sessionFactory.getCurrentSession().saveOrUpdate(product);
	}
	
	@Transactional
	public void delete(String Id)
	{
		Product product=new Product();
		product.setp_id(Id);
		sessionFactory.getCurrentSession().delete(product);
	}
	
	@Transactional
	public Product getProduct(String Id)
	{
		String hql="from Product where p_id=" +"'"+Id+"'";
		Query query=sessionFactory.getCurrentSession().createQuery(hql);
		List<Product> listProduct=(List<Product>)query.list();
		if(listProduct!=null && !listProduct.isEmpty())
		{
			return listProduct.get(0);
		}
		
		return null;
	}
	
	
	
	@Transactional
	public Product getByName(String name)
	{
		String hql="from Product where p_name=" +"'"+name+"'";
		Query query=sessionFactory.getCurrentSession().createQuery(hql);
		List<Product> listProduct=(List<Product>)query.list();
		if(listProduct!=null && !listProduct.isEmpty())
		{
			return listProduct.get(0);
		}
		
		return null;
	}
	
	@Transactional
	public List<Product> list()
	{
		List<Product> listProduct=(List<Product>)sessionFactory.getCurrentSession().createCriteria(Product.class).setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
	    return listProduct;
	}
	
}
