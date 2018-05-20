package com.kukoo.luckdraw.service;

import java.util.List;
import java.util.Map;

import com.kukoo.luckdraw.model.LotteryOpportunity;

public interface ILotteryOpportunityService {
	/**
	 * 保存一个抽奖URL
	 * @param lottery
	 */
	public void saveLotteryOpportunity(LotteryOpportunity lottery);
	
	/**
	 * 更新一个抽奖URL
	 * @param lottery
	 */
	public void updateLotteryOpportunity(LotteryOpportunity lottery);
	/**
	 * 查询抽奖URL
	 * @return
	 */
	public List<Map<String,Object>> queryLotteryOpportunityList();
	/**
	 * 查询
	 * @param id
	 * @return
	 */
	public LotteryOpportunity queryLotteryOpportunity(String id,String userId);
}
