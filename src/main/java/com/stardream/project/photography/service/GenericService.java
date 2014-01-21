package com.stardream.project.photography.service;

import java.io.Serializable;
import java.util.List;

/**
 * 公用方法
 */
public interface GenericService<T, K extends Serializable> {

	/**
	 * 保存或更新一个实体 判断实体的主键是否为空，为空则新增，反之更新
	 */
	public T saveorupdate(T t) throws Exception;
	
	/**
	 * 根据clazz，k 获得实体
	 */
	public T getEntity(Class<T> clazz, K k) throws Exception;
	
	
	public List<T> findEntity(Class<T> clazz) throws Exception ;
	
	public List<T> findEntity(Class<T> clazz,K id) throws Exception ;
	
	public List<T> findEntityBySQL(Class<T> clazz,String sql);
	
	public void updateEntity(String name, K id);
	
	public void deleteEntity(Class<T> clazz, K id);
	
	public void updateEntity(T t) throws Exception;

}
