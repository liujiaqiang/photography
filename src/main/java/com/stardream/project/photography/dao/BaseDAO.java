package com.stardream.project.photography.dao;
import java.io.Serializable;
import java.util.List;


public interface BaseDAO <T, K extends Serializable> extends DAO {

	/**
	 * 保存实体
	 */
	public T saveEntity(T t) throws Exception;
	
	/**
	 * 加载实体
	 */
	public T getEntity(Class<T> clasz, K id) throws Exception;
	
	/**
	 * 通过hql语句查找实体集合
	 */
	public List<T> findEntity(Class<T> clasz) throws Exception;
	
	public List<T> findEntityBySQL(Class<T> clazz, String sql);
	
	public void updateEntity(String name, K id);
	
	public void deleteEntity(Class<T> clazz, K id);
	
	public void updateEntity(T t) throws Exception;
	
	public List<T> findEntity(Class<T> clazz, K id) throws Exception;

}
