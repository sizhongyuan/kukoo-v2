package com.kukoo.luckdraw.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.kukoo.luckdraw.model.WinLottery;

/**
 * 中奖记录 dao接口
 * @author gang
 *
 */
public interface WinLotteryMapper {
	/**
	 * 保存中奖记录
	 * @param winLottery
	 */
	public void saveWinLottery(WinLottery winLottery);
	/**
	 * 查询中奖记录
	 * @return
	 */
	public List<Map<String,Object>> queryWinLotteryList(@Param("userId")String userId);
	/**
	 * 查询全部中奖记录
	 * @return
	 */
	public List<Map<String, Object>> queryAllWinLotteryList();
}
