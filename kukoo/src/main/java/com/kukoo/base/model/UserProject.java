package com.kukoo.base.model;

import java.util.Date;

/**
 * 用户关联项目模型
 * @author chenjianghe
 *
 */
public class UserProject {

	/**
	 * 用户id
	 */
	private String user_id;
	
	/**
	 * 项目id
	 */
	private String project_id;
	
	/**
	 * 项目名
	 */
	private String project_name;
	
	/**
	 * 签约时间
	 */
	private Date sign_time;
	
	/**
	 * 顾问id
	 */
	private String con_id;
	
	/**
	 * 顾问姓名
	 */
	private String con_name;
	
	/**
	 * 合同金额
	 */
	private String amount;
	
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
	
	/**
	 * 签约状态
	 */
	private String sign_status;

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getProject_id() {
		return project_id;
	}

	public void setProject_id(String project_id) {
		this.project_id = project_id;
	}

	public String getProject_name() {
		return project_name;
	}

	public void setProject_name(String project_name) {
		this.project_name = project_name;
	}

	public Date getSign_time() {
		return sign_time;
	}

	public void setSign_time(Date sign_time) {
		this.sign_time = sign_time;
	}

	public String getCon_id() {
		return con_id;
	}

	public void setCon_id(String con_id) {
		this.con_id = con_id;
	}

	public String getCon_name() {
		return con_name;
	}

	public void setCon_name(String con_name) {
		this.con_name = con_name;
	}

	public String getAmount() {
		return amount;
	}

	public void setAmount(String amount) {
		this.amount = amount;
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

	public String getSign_status() {
		return sign_status;
	}

	public void setSign_status(String sign_status) {
		this.sign_status = sign_status;
	}
}
