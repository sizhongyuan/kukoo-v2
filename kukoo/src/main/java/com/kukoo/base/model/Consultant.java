package com.kukoo.base.model;

import java.util.Date;

/**
 * 顾问模型
 * @author chenjianghe
 *
 */
public class Consultant {

	/**
	 * 主键id
	 */
	private String id;
	
	/**
	 * 顾问姓名
	 */
	private String con_name;
	
	/**
	 * 顾问头像
	 */
	private String con_photo;
	
	/**
	 * 顾问手机号码
	 */
	private String mobile;
	
	/**
	 * 顾问注册时间
	 */
	private Date regist_time;
	
	/**
	 * 邮件地址
	 */
	private String con_email;
	
	/**
	 * 更新时间
	 */
	private Date update_time;
	
	/**
	 * 删除标识
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

	public String getCon_name() {
		return con_name;
	}

	public void setCon_name(String con_name) {
		this.con_name = con_name;
	}

	public String getCon_photo() {
		return con_photo;
	}

	public void setCon_photo(String con_photo) {
		this.con_photo = con_photo;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public Date getRegist_time() {
		return regist_time;
	}

	public void setRegist_time(Date regist_time) {
		this.regist_time = regist_time;
	}

	public String getCon_email() {
		return con_email;
	}

	public void setCon_email(String con_email) {
		this.con_email = con_email;
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
