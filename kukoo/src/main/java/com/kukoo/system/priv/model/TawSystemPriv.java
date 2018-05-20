package com.kukoo.system.priv.model;

/**
 * 权限模型
 * @author sizhongyuan
 *
 */
public class TawSystemPriv {
	/**
	 * 应用ID
	 */
	private String appId;
	/**
	 * 模块（一级或二级操作）ID
	 */
	private String moduleId;
	/**
	 * 操作权限ID
	 */
	private String operationId;
	/**
	 * 操作内容
	 */
	private String operationContent;
	
	public String getAppId() {
		return appId;
	}
	public void setAppId(String appId) {
		this.appId = appId;
	}
	public String getModuleId() {
		return moduleId;
	}
	public void setModuleId(String moduleId) {
		this.moduleId = moduleId;
	}
	public String getOperationId() {
		return operationId;
	}
	public void setOperationId(String operationId) {
		this.operationId = operationId;
	}
	public String getOperationContent() {
		return operationContent;
	}
	public void setOperationContent(String operationContent) {
		this.operationContent = operationContent;
	}
}
