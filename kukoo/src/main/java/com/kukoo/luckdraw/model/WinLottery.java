package com.kukoo.luckdraw.model;

import java.io.Serializable;

/**
 * 中奖记录表
 * @author gang
 *
 */
public class WinLottery implements Serializable{
	
	private static final long serialVersionUID = -1595371216905016136L;
	/**
	 * 主键ID
	 */
	private String id;
	/**
	 * 奖品ID
	 */
	private String lotteryId;
	/**
	 * 中奖人ID
	 */
	private String winUserId;
	/**
	 * 中奖人电话
	 */
	private String winPhone;
	/**
	 * 中奖时间
	 */
	private String winTime;
	/**
	 * 奖品是否发放到中奖人手中
	 */
	private String isGiveOut;
	
	
	public WinLottery() {
	}
	public WinLottery(String id, String lotteryId, String winUserId, String winPhone, String winTime, String isGiveOut) {
		super();
		this.id = id;
		this.lotteryId = lotteryId;
		this.winUserId = winUserId;
		this.winPhone = winPhone;
		this.winTime = winTime;
		this.isGiveOut = isGiveOut;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getLotteryId() {
		return lotteryId;
	}
	public void setLotteryId(String lotteryId) {
		this.lotteryId = lotteryId;
	}
	public String getWinUserId() {
		return winUserId;
	}
	public void setWinUserId(String winUserId) {
		this.winUserId = winUserId;
	}
	public String getWinPhone() {
		return winPhone;
	}
	public void setWinPhone(String winPhone) {
		this.winPhone = winPhone;
	}
	public String getWinTime() {
		return winTime;
	}
	public void setWinTime(String winTime) {
		this.winTime = winTime;
	}
	public String getIsGiveOut() {
		return isGiveOut;
	}
	public void setIsGiveOut(String isGiveOut) {
		this.isGiveOut = isGiveOut;
	}
	
	@Override
	public String toString() {
		return "WinLottery [id=" + id + ", lotteryId=" + lotteryId + ", winUserId=" + winUserId + ", winPhone="
				+ winPhone + ", winTime=" + winTime + ", isGiveOut=" + isGiveOut + "]";
	}
	
	
}
