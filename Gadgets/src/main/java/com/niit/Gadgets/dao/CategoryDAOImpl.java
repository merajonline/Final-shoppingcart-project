package com.niit.Gadgets.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.niit.Gadgets.model.Category;
import com.niit.Gadgets.model.Customer;

@Repository("categoryDAO")
@EnableTransactionManagement
public class CategoryDAOImpl implements CategoryDAO
{
	@Autowired
	SessionFactory sessionFactory;
	
	public CategoryDAOImpl(SessionFactory sessionFactory) {
		
		this.sessionFactory = sessionFactory;
	}

	//category method implementation

	@Transactional
	public void addCategory(Category category)
	{
		sessionFactory.getCurrentSession().saveOrUpdate(category);
	}
	
	
	@Transactional
	@SuppressWarnings("unchecked")
	public List<Category> listCategories() {
		Session session = sessionFactory.getCurrentSession();

		List<Category> categoryList = session.createQuery("from Category").list();
		for (Category ct : categoryList) {
			System.out.println("Category List::" + ct);
		}

		return categoryList;
	}
	
	@Transactional
	public Category getCategory(String categoryId)
	{
		String hql="from Category where categoryId="+"'"+categoryId+"'";
		Query query=sessionFactory.getCurrentSession().createQuery(hql);
		List<Category> list=(List<Category>) query.list();
		if(list!=null&& !list.isEmpty())
		{
			return list.get(0);
		}
		return null;
		
	}
	
	@Transactional
	public void delete(String categoryId)
	{
		Category category=new Category();
		category.setCategoryId(categoryId);
		sessionFactory.getCurrentSession().delete(category);
	}
	
	@Transactional
	public Category getByName(String categoryName)
	{
		String hql="from Category where categoryName="+"'"+ categoryName +"'";
		@SuppressWarnings("rawtypes")
		Query query=sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Category> list= query.list();
		if(list!=null && !list.isEmpty())
		{
			return list.get(0);
		}
		return null;
		
	}
	
}
