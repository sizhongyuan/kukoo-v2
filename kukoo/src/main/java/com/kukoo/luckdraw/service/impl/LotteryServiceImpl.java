package com.kukoo.luckdraw.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kukoo.luckdraw.dao.LotteryMapper;
import com.kukoo.luckdraw.model.Lottery;
import com.kukoo.luckdraw.service.ILotteryService;

@Service("lotteryService")
public class LotteryServiceImpl implements ILotteryService {

	@Autowired
	private LotteryMapper lotteryMapper;
	
	@Override
	public void saveLottery(Lottery lottery) {
		lotteryMapper.saveLottery(lottery);
	}

	@Override
	public void updateLottery(Lottery lottery) {
		lotteryMapper.updateLottery(lottery);
	}

	@Override
	public void delLottery(Lottery lottery) {
		lotteryMapper.delLottery(lottery);
	}

	@Override
	public List<Map<String, Object>> queryLotteryList() {
		return lotteryMapper.queryLotteryList();
	}

	@Override
	public Lottery queryLotteryById(String id) {
		return lotteryMapper.queryLotteryById(id);
	}

	@Override
	public List<Lottery> queryLottery() {
		return lotteryMapper.queryLottery();
	}

}
