package com.kukoo.luckdraw.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kukoo.luckdraw.dao.WinLotteryMapper;
import com.kukoo.luckdraw.model.WinLottery;
import com.kukoo.luckdraw.service.IWinLotteryService;

@Service("winLotteryService")
public class WinLotteryServiceImpl implements IWinLotteryService {

	@Autowired
	private WinLotteryMapper winLotteryMapper;
	
	@Override
	public void saveWinLottery(WinLottery winLottery) {
		winLotteryMapper.saveWinLottery(winLottery);
	}

	@Override
	public List<Map<String, Object>> queryWinLotteryList(String userId) {
		return winLotteryMapper.queryWinLotteryList(userId);
	}

	@Override
	public List<Map<String, Object>> queryAllWinLotteryList() {
		return winLotteryMapper.queryAllWinLotteryList();
	}

}
