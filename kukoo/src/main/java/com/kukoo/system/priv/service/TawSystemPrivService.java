package com.kukoo.system.priv.service;

import java.util.List;

import com.kukoo.system.priv.model.TawSystemPriv;

/**
 * 权限模型servcie接口
 * 
 * @author sizhongyuan
 * 
 */
public interface TawSystemPrivService {

	/**
	 * 根据操作权限ID获取权限模型
	 * @param operationId 操作权限ID
	 * @return TawSystemPriv 权限模型对象
	 */
	public TawSystemPriv queryTawSystemPrivByOperationId(String operationId);

	/**
	 * 保存权限模型对象
	 * @param tawSystemPriv 权限模型对象
	 */
	public void saveTawSystemPriv(TawSystemPriv tawSystemPriv);
	
	/**
	 * 根据 条件 查询权限模型对象集合
	 * @param conditions 查询条件sql
	 * @return List<TawSystemPriv> 权限模型对象集合
	 */
	public List<TawSystemPriv> queryTawSystem(String conditions);
	
	/**
	 * 删除权限模型对象
	 * @param operationId 操作权限ID
	 */
	public void deleteTawSystemPriv(String operationId); 
}
