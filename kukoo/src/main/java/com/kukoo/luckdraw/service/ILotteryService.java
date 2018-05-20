package com.kukoo.luckdraw.service;

import java.util.List;
import java.util.Map;

import com.kukoo.luckdraw.model.Lottery;

public interface ILotteryService {
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
	 * @param id
	 */
	public Lottery queryLotteryById(String id);
	/**
	 * 查询奖品 初始化转盘的奖品
	 * @return
	 */
	public List<Lottery> queryLottery();
}
