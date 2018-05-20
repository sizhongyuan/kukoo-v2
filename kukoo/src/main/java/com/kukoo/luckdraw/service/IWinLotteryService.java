package com.kukoo.luckdraw.service;

import java.util.List;
import java.util.Map;

import com.kukoo.luckdraw.model.WinLottery;

public interface IWinLotteryService {
	/**
	 * 保存中奖记录
	 * @param winLottery
	 */
	public void saveWinLottery(WinLottery winLottery);
	/**
	 * 查询中奖记录
	 * @return
	 */
	public List<Map<String,Object>> queryWinLotteryList(String userId);
	
	/**
	 * 查询全部中奖记录
	 * @return
	 */
	public List<Map<String,Object>> queryAllWinLotteryList();
	
}
