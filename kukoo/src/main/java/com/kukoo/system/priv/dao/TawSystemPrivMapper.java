package com.kukoo.system.priv.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.kukoo.system.priv.model.TawSystemPriv;

/**
 * 权限模型mapper接口
 * @author sizhongyuan
 *
 */
public interface TawSystemPrivMapper {

	/**
	 * 根据操作权限ID获取权限模型
	 * @param operationId 操作权限ID
	 * @return TawSystemPriv 权限模型对象
	 */
	public TawSystemPriv queryTawSystemPrivByOperationId(@Param("operationId") String operationId);

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
	 * 根据操作权限ID删除权限模型对象
	 * @param operationId 操作权限ID
	 */
	public void deleteTawSystemPriv(String operationId); 
}
