package com.kukoo.base.model;

import java.util.Date;

/**
 * 用户模型
 * @author chenjianghe
 *
 */
public class User {

	/**
	 * 主键id
	 */
	private String id;
	
	/**
	 * 用户头像
	 */
	private String user_photo;
	
	/**
	 * 邮箱
	 */
	private String email;
	
	/**
	 * 密码
	 */
	private String password;
	
	/**
	 * 用户名
	 */
	private String user_name;
	
	/**
	 * 账号状态 0正常 1锁定
	 */
	private String status;
	
	/**
	 * 注册时间
	 */
	private Date regist_time;
	
	/**
	 * 手机号
	 */
	private String mobile;
	
	/**
	 * 更新时间
	 */
	private Date update_time;
	
	/**
	 * 删除标识 0未删除 1已删除
	 */
	private String deleted;
	
	/**
	 * 删除时间
	 */
	private Date deleted_time;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getUser_photo() {
		return user_photo;
	}

	public void setUser_photo(String user_photo) {
		this.user_photo = user_photo;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public Date getRegist_time() {
		return regist_time;
	}

	public void setRegist_time(Date regist_time) {
		this.regist_time = regist_time;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public Date getUpdate_time() {
		return update_time;
	}

	public void setUpdate_time(Date update_time) {
		this.update_time = update_time;
	}

	public String getDeleted() {
		return deleted;
	}

	public void setDeleted(String deleted) {
		this.deleted = deleted;
	}

	public Date getDeleted_time() {
		return deleted_time;
	}

	public void setDeleted_time(Date deleted_time) {
		this.deleted_time = deleted_time;
	}
	
	
}
