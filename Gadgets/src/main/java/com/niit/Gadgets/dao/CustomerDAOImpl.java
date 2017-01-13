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

@Repository("customerDAO")
@EnableTransactionManagement
public class CustomerDAOImpl implements CustomerDAO
{
	@Autowired
	SessionFactory sessionFactory;
	public CustomerDAOImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Transactional
	public void addCustomer(Customer customer)
	{
		sessionFactory.getCurrentSession().saveOrUpdate(customer);
	}
	
	/*@Transactional
	public void updateCustomer(Customer customer)
	{
		sessionFactory.getCurrentSession().update(customer);
	}*/
	
	@Transactional
	@SuppressWarnings("unchecked")
	public List<Customer> listCustomers() {
		Session session = sessionFactory.getCurrentSession();

		List<Customer> customerList = (List<Customer>)session.createQuery("from Customer").list();
		for (Customer c : customerList) {
			System.out.println("Customer List::" + c);
		}

		return customerList;
	}
	
	@Transactional
	public Customer getCustomer(String phone)
	{
		//String hql="from Customer where cid="+cid;
		String hql="from Customer where phone="+"'"+phone+"'";
		Query query=sessionFactory.getCurrentSession().createQuery(hql);
		List<Customer> list=(List<Customer>) query.list();
		if(list!=null&& !list.isEmpty())
		{
			return list.get(0);
		}
		return null;
		
	}
	
	@Transactional
	public void delete(String phone)
	{
		Customer customer=new Customer();
		customer.setPhone(phone);
		sessionFactory.getCurrentSession().delete(customer);
	}
	
	
	
}
