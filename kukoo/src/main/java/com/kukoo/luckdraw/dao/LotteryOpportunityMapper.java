package com.kukoo.luckdraw.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.kukoo.luckdraw.model.LotteryOpportunity;

/**
 * 抽奖机会dao接口
 * @author gang
 *
 */
public interface LotteryOpportunityMapper {
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
	 * 根据ID查询是否有抽奖机会
	 * @param id
	 * @return
	 */
	public LotteryOpportunity queryLotteryOpportunity(@Param("id")String id,@Param("userId")String userId);
}
