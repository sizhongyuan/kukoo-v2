package com.kukoo.base.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kukoo.base.mapper.UserMapper;
import com.kukoo.base.model.User;
import com.kukoo.base.service.IUserService;

/**
 * 用户service接口实现
 * @author chenjianghe
 *
 */
@Service("userService")
public class UserServiceImpl implements IUserService{

	/**
	 * 注入userMapper
	 */
	@Autowired
	private UserMapper userMapper;

	/**
	 * 根据用户手机号查询用户对象
	 * @param mobile 手机号
	 * @return user 用户对象
	 */
	@Override
	@Transactional
	public User queryUserByMobile(String mobile) {
		// TODO Auto-generated method stub
		//调用userMapper中根据用户手机号查询用户对象接口
		return userMapper.queryUserByMobile(mobile);
	}

	/**
	 * 保存用户
	 */
	@Override
	@Transactional
	public void saveUser(User user) {
		// TODO Auto-generated method stub
		userMapper.saveUser(user);
	}
}
