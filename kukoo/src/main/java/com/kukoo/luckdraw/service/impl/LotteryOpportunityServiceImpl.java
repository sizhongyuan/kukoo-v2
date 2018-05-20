package com.kukoo.luckdraw.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kukoo.luckdraw.dao.LotteryOpportunityMapper;
import com.kukoo.luckdraw.model.LotteryOpportunity;
import com.kukoo.luckdraw.service.ILotteryOpportunityService;

@Service("lotteryOpportunityService")
public class LotteryOpportunityServiceImpl implements ILotteryOpportunityService {

	@Autowired
	private LotteryOpportunityMapper lotteryOpportunityMapper;
	
	@Override
	public void saveLotteryOpportunity(LotteryOpportunity lottery) {
		lotteryOpportunityMapper.saveLotteryOpportunity(lottery);
	}

	@Override
	public void updateLotteryOpportunity(LotteryOpportunity lottery) {
		lotteryOpportunityMapper.updateLotteryOpportunity(lottery);
	}

	@Override
	public List<Map<String, Object>> queryLotteryOpportunityList() {
		// TODO Auto-generated method stub
		return lotteryOpportunityMapper.queryLotteryOpportunityList();
	}

	@Override
	public LotteryOpportunity queryLotteryOpportunity(String id,String userId) {
		return lotteryOpportunityMapper.queryLotteryOpportunity(id,userId);
	}
	
}
