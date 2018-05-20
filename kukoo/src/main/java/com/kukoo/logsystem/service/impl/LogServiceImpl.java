package com.kukoo.logsystem.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kukoo.logsystem.dao.LogDaoMapper;
import com.kukoo.logsystem.model.Log;
import com.kukoo.logsystem.service.LogService;


@Service("logService")
public class LogServiceImpl  implements LogService{
	

	@Autowired
	private LogDaoMapper logDao;
	
	@Override
	public void createLog(Log log) {
		System.out.println("日志入库"+log);
		this.logDao.saveLog(log);
	}
	
	@Override
	public void updateLog(Log log) {
		System.out.println("日志更新"+log);
		this.logDao.updateLog(log);
	}

	@Override
	public List<Map<String,Object>> queryLogByPage() {
		// TODO Auto-generated method stub
		return this.logDao.queryLogList();
	}



}
