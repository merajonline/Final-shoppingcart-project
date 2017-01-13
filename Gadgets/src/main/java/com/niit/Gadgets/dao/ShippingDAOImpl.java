package com.niit.Gadgets.dao;




import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;


import com.niit.Gadgets.model.Shipping;



@EnableTransactionManagement
@Repository("shippingDAO")
public class ShippingDAOImpl implements ShippingDAO
{
	@Autowired
	SessionFactory sessionFactory;
	public ShippingDAOImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Transactional
	public void addShipping(Shipping shipping)
	{	
		sessionFactory.getCurrentSession().save(shipping);
	}
	
	@Transactional
	public void updateShipping(Shipping shipping)
	{
		sessionFactory.getCurrentSession().update(shipping);
	}
	
	@Transactional
	@SuppressWarnings("unchecked")
	public List<Shipping> listShippings() {
		Session session = sessionFactory.getCurrentSession();

		List<Shipping> shippingList = (List<Shipping>)session.createQuery("from Shipping").list();
		for (Shipping s : shippingList) {
			System.out.println("Shipping List::" + s);
		}

		return shippingList;
	}
	/*@Transactional
	public Shipping getShipping(String emailid)
	{
		Shipping s = (Shipping) sessionFactory.getCurrentSession().createQuery("from Shipping where emailid =" +"'"+emailid+"'").getSingleResult();
		return s;
	}*/
	
	/*@Transactional
	public Customer getCustomer(int id)
	{
		String hql="from Customer where id="+id;
		//String hql="from Customer where id="+"'"+cPhone+"'";
		Query query=sessionFactory.getCurrentSession().createQuery(hql);
		List<Customer> list=(List<Customer>) query.list();
		if(list!=null&& !list.isEmpty())
		{
			return list.get(0);
		}
		return null;
		
	}*/
	
	/*@Transactional
	public void delete(int id)
	{
		Customer customer=new Customer();
		customer.setId(id);
		sessionFactory.getCurrentSession().delete(customer);
	}*/
	
	
	
}