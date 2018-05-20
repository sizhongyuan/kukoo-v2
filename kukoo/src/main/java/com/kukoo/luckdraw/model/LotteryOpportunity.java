package com.kukoo.luckdraw.model;

import java.io.Serializable;

/**
 * 抽奖机会表
 * @author gang
 *
 */
public class LotteryOpportunity implements Serializable{
	
	private static final long serialVersionUID = -1595371216905016137L;
	/**
	 * 主键ID
	 */
	private String id;
	/**
	 * 抽奖URL
	 */
	private String lotteryUrl;
	/**
	 * 抽奖次数
	 */
	private Integer lotteryNum;
	/**
	 * 创建时间
	 */
	private String createTime;
	/**
	 * 抽奖人
	 */
	private String lotteryUserId;
	
	
	public LotteryOpportunity() {
	}
	
	public LotteryOpportunity(String id, String lotteryUrl, Integer lotteryNum, String createTime,
			String lotteryUserId) {
		super();
		this.id = id;
		this.lotteryUrl = lotteryUrl;
		this.lotteryNum = lotteryNum;
		this.createTime = createTime;
		this.lotteryUserId = lotteryUserId;
	}
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getLotteryUrl() {
		return lotteryUrl;
	}
	public void setLotteryUrl(String lotteryUrl) {
		this.lotteryUrl = lotteryUrl;
	}
	public Integer getLotteryNum() {
		return lotteryNum;
	}
	public void setLotteryNum(Integer lotteryNum) {
		this.lotteryNum = lotteryNum;
	}
	public String getCreateTime() {
		return createTime;
	}
	public void setCreateTime(String createTime) {
		this.createTime = createTime;
	}
	public String getLotteryUserId() {
		return lotteryUserId;
	}
	public void setLotteryUserId(String lotteryUserId) {
		this.lotteryUserId = lotteryUserId;
	}
	
	@Override
	public String toString() {
		return "LotteryOpportunity [id=" + id + ", lotteryUrl=" + lotteryUrl + ", lotteryNum=" + lotteryNum
				+ ", createTime=" + createTime + ", lotteryUserId=" + lotteryUserId + "]";
	}
	
}
