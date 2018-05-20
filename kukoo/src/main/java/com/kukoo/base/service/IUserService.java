package com.kukoo.base.service;

import com.kukoo.base.model.User;

/**
 * 用户servcie接口
 * @author chenjianghe
 *
 */
public interface IUserService {

	/**
	 * 根据用户手机号查询用户对象
	 * @param mobile 手机号
	 * @return user 用户对象
	 */
	public User queryUserByMobile(String mobile);
	
	/**
	 * 保存用户
	 * @param user
	 */
	public void saveUser(User user);
}
