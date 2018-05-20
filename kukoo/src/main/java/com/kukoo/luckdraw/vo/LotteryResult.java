package com.kukoo.luckdraw.vo;

public class LotteryResult <T>{
	
	private boolean success;
	private T data;
	private String error;
	
	public LotteryResult(boolean success, T data, String error) {
		super();
		this.success = success;
		this.data = data;
		this.error = error;
	}
	public boolean isSuccess() {
		return success;
	}
	public void setSuccess(boolean success) {
		this.success = success;
	}
	public T getData() {
		return data;
	}
	public void setData(T data) {
		this.data = data;
	}
	public String getError() {
		return error;
	}
	public void setError(String error) {
		this.error = error;
	}
	
	
}
