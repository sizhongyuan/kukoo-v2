package com.kukoo.base.mapper;

import org.apache.ibatis.annotations.Param;

import com.kukoo.base.model.User;

/**
 * 用户mapper接口
 * @author chenjianghe
 *
 */
public interface UserMapper {

	/**
	 * 根据用户手机号查询用户对象
	 * @param mobile 手机号
	 * @return user 用户对象
	 */
	public User queryUserByMobile(@Param("mobile") String mobile);
	
	/**
	 * 保存用户
	 * @param user
	 */
	public void saveUser(User user);
}
