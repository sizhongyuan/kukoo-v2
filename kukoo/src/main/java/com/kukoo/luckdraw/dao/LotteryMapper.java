package com.kukoo.luckdraw.dao;

import java.util.List;
import java.util.Map;

import com.kukoo.luckdraw.model.Lottery;

/**
 * 奖品dao接口
 * @author gang
 *
 */
public interface LotteryMapper {
	/**
	 * 保存奖品
	 * @param lottery
	 */
	public void saveLottery(Lottery lottery);
	/**
	 * 更新奖品
	 * @param lottery
	 */
	public void updateLottery(Lottery lottery);
	
	/**
	 * 删除奖品
	 * @param lottery
	 */
	public void delLottery(Lottery lottery);
	/**
	 * 查询奖品
	 * @return
	 */
	public List<Map<String,Object>> queryLotteryList();
	/**
	 * 根据ID查询奖品
	 * @return
	 */
	public Lottery queryLotteryById(String id);
	/**
	 * 查询奖品
	 * @return
	 */
	public List<Lottery> queryLottery();
	
	
}
