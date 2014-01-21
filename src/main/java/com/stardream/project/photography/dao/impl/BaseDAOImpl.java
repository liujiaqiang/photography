package com.stardream.project.photography.dao.impl;

import java.io.Serializable;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.DetachedCriteria;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;


@Component("baseDAO")
public class BaseDAOImpl<T, K extends Serializable>  implements com.stardream.project.photography.dao.BaseDAO<T, K>{
	
	@Autowired
	private SessionFactory sessionFactory;
	
	public Session getSession(){
		return sessionFactory.getCurrentSession();
	}

	@Override
	public T saveEntity(T t) throws Exception {
		getSession().save(t);
		return t;
	}

	@SuppressWarnings("unchecked")
	@Override
	public T getEntity(Class<T> clasz, K id) throws Exception {
		return (T) getSession().get(clasz, id);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<T> findEntity(Class<T> clasz) throws Exception {
		DetachedCriteria dc=DetachedCriteria.forClass(clasz);
		return dc.getExecutableCriteria(getSession()).list();
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<T> findEntityBySQL(Class<T> clazz, String sql) {
		return getSession().createSQLQuery(sql).addEntity(clazz).list();
	}

	@Override
	public void updateEntity(String name, K id) {
	}

	@Override
	public void deleteEntity(Class<T> clazz, K id) {
		String sql="delete from "+clazz.getSimpleName()+"  where id="+id;
		getSession().createQuery(sql).executeUpdate();
	}

	@Override
	public void updateEntity(T t) throws Exception {
		getSession().update(t);
	}


	@SuppressWarnings("unchecked")
	@Override
	public List<T> findEntity(Class<T> clazz, K id) throws Exception {
		String sql="from "+clazz.getSimpleName();
		if(id!=null){
			sql+=" where id="+id;
		}
		return getSession().createQuery(sql).list();
	}

}
