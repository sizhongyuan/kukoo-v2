package com.kukoo.system.priv.dao;

import java.util.List;

import com.kukoo.system.priv.model.TawSystemUserPriv;

public interface TawSystemUserPrivMapper {
	
	/**
	 * 根据 条件 查询用户权限
	 * @param conditions 条件
	 * @return List<TawSystemUserPriv> 用户权限关联对象
	 */
	public List<TawSystemUserPriv> queryByUserId(String conditions);
	
	/**
	 * 保存用户权限关联对象
	 * @param tawSystemUserPriv 用户权限关联对象
	 */
	public void saveTawSystemUserPriv(TawSystemUserPriv tawSystemUserPriv);
	
	/**
	 * 删除用户权限关联对象
	 * @param tawSystemUserPriv 用户权限关联对象
	 */
	public void deleteTawSystemUserPriv(int id);
	
	
}
