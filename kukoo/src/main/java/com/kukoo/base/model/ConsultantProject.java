package com.kukoo.base.model;

/**
 * 顾问关联项目模型
 * @author chenjianghe
 *
 */
public class ConsultantProject {
	
	/**
	 * 顾问id
	 */
	private String con_id;
	
	/**
	 * 项目id
	 */
	private String project_id;
	
	/**
	 * 项目名
	 */
	private String project_name;
	
	/**
	 * 国家
	 */
	private String county;

	public String getCon_id() {
		return con_id;
	}

	public void setCon_id(String con_id) {
		this.con_id = con_id;
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

	public String getCounty() {
		return county;
	}

	public void setCounty(String county) {
		this.county = county;
	}
	
	

}
