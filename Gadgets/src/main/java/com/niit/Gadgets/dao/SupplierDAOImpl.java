package com.niit.Gadgets.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.niit.Gadgets.model.Supplier;


@Repository("supplierDAO")
@EnableTransactionManagement
public  class SupplierDAOImpl implements SupplierDAO
{
	@Autowired
	SessionFactory sessionFactory;
	
	public SupplierDAOImpl(SessionFactory sessionFactory) {
		
		this.sessionFactory = sessionFactory;
	}



	@Transactional
	public void addSupplier(Supplier supplier)
	{
		sessionFactory.getCurrentSession().saveOrUpdate(supplier);
	}
	
	
	@Transactional
	@SuppressWarnings("unchecked")
	public List<Supplier> listSuppliers() {
		Session session = sessionFactory.getCurrentSession();

		List<Supplier> supplierList = session.createQuery("from Supplier").list();
		for (Supplier sp : supplierList) {
			System.out.println("Supplier List::" + sp);
		}

		return supplierList;
	}
	
	@Transactional
	public Supplier getSupplier(String suppId)
	{
		String hql="from Supplier where suppId="+"'"+suppId+"'";
		Query query=sessionFactory.getCurrentSession().createQuery(hql);
		List<Supplier> list=(List<Supplier>) query.list();
		if(list!=null&& !list.isEmpty())
		{
			return list.get(0);
		}
		return null;
		
	}
	
	@Transactional
	public void delete(String suppId)
	{
		Supplier supplier=new Supplier();
		supplier.setSuppId(suppId);
		sessionFactory.getCurrentSession().delete(supplier);
	}
	
	@Transactional
	public Supplier getByName(String name)
	{
		String hql= "from Supplier where suppName = " +"'" + name +"'";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		List<Supplier> listSupplier= query.list();
		if (listSupplier != null || !listSupplier.isEmpty())
		{
			return listSupplier.get(0);
		}
		return  null;
	}
	
}
