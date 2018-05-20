package com.kukoo.system.priv.model;
/**
 * 用户权限关联对象
 * @author sizhongyuan
 *
 */
public class TawSystemUserPriv {
	/**
	 * 主键
	 */
	private int id;
	/**
	 * 用户id、用户组id、角色id
	 */
	private String userId;
	/**
	 * 类型 eg.1用户，2用户组，3角色
	 */
	private String type;
	/**
	 * 权限id
	 */
	private String operationId;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getOperationId() {
		return operationId;
	}
	public void setOperationId(String operationId) {
		this.operationId = operationId;
	}
}
