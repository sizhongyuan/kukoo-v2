package com.kukoo.project.model;

import java.util.Date;

/**
 * 项目信息model
 * 对应表名tt_project
 * @author sizhongyuan
 * @since 2018-03-25 20:57:06
 * */
public class ProjectModel{
	/**
	 * 项目信息表主键,自增
	 * */
	private String id;
	/**
	 * 项目名称
	 * */
	private String projectName;
	/**
	 * 国家
	 * */
	private String country;
	/**
	 * 简介
	 * */
	private String description;
	/**
	 * 图片
	 * */
	private String picture;
	/**
	 * 状态
	 * */
	private String status;
	/**
	 * 官网地址
	 * */
	private String url;
	/**
	 * 签证类别
	 * */
	private String visa_type;
	/**
	 * 办理周期
	 * */
	private String period;
	/**
	 * 居住条件
	 * */
	private String livingCondition;
	/**
	 * 总费用
	 * */
	private String cost;
	/**
	 * 创建时间
	 * */
	private Date createTime;
	/**
	 * 创建人
	 * */
	private String createUserId;
	/**
	 * 删除标识
	 * 0:正常，1:已删除
	 * */
	private String deleted;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getProjectName() {
		return projectName;
	}
	public void setProjectName(String projectName) {
		this.projectName = projectName;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getPicture() {
		return picture;
	}
	public void setPicture(String picture) {
		this.picture = picture;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public String getVisa_type() {
		return visa_type;
	}
	public void setVisa_type(String visa_type) {
		this.visa_type = visa_type;
	}
	public String getPeriod() {
		return period;
	}
	public void setPeriod(String period) {
		this.period = period;
	}
	public String getLivingCondition() {
		return livingCondition;
	}
	public void setLivingCondition(String livingCondition) {
		this.livingCondition = livingCondition;
	}
	public String getCost() {
		return cost;
	}
	public void setCost(String cost) {
		this.cost = cost;
	}
	public Date getCreateTime() {
		return createTime;
	}
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	public String getCreateUserId() {
		return createUserId;
	}
	public void setCreateUserId(String createUserId) {
		this.createUserId = createUserId;
	}
	public String getDeleted() {
		return deleted;
	}
	public void setDeleted(String deleted) {
		this.deleted = deleted;
	}
}
