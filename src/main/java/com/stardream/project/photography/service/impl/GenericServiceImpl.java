package com.stardream.project.photography.service.impl;

import java.io.Serializable;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.stardream.project.photography.dao.BaseDAO;
import com.stardream.project.photography.service.GenericService;


/**
 * 公用方法实现层
 */
public class GenericServiceImpl<T, K extends Serializable> implements GenericService<T, K> {
	@Autowired
	protected BaseDAO<T, K> baseDAO;

	@Override
	public T saveorupdate(T t) throws Exception {
		baseDAO.saveEntity(t);
		return t;
	}

	@Override
	public T getEntity(Class<T> clazz, K k) throws Exception {
		return baseDAO.getEntity(clazz, k);
	}

	@Override
	public List<T> findEntity(Class<T> clazz) throws Exception {
		return baseDAO.findEntity(clazz);
	}

	@Override
	public List<T> findEntityBySQL(Class<T> clazz, String sql) {
		return baseDAO.findEntityBySQL(clazz, sql);
	}

	@Override
	public void updateEntity(String name, K id) {
		baseDAO.updateEntity(name, id);
	}

	@Override
	public void deleteEntity(Class<T> clazz, K id) {
		baseDAO.deleteEntity(clazz, id);
	}

	@Override
	public void updateEntity(T t) throws Exception {
		baseDAO.updateEntity(t);
	}

	@Override
	public List<T> findEntity(Class<T> clazz, K id) throws Exception {
		return baseDAO.findEntity(clazz, id);
	}
}