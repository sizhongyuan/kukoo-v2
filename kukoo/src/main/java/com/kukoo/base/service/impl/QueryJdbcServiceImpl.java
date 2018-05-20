package com.kukoo.base.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kukoo.base.dao.IQueryJdbcDao;
import com.kukoo.base.service.IQueryJdbcService;

@Service("queryJdbcService")
public class QueryJdbcServiceImpl implements IQueryJdbcService {
	
	@Autowired
	private IQueryJdbcDao queryJdbcDao;
	@Override
	public List<Map<String, Object>> getQueryList(String sql) throws Exception {
		List<Map<String, Object>> list = queryJdbcDao.getQueryList(sql);
		return list;
	}

	@Override
	public void insertInfoBySql(String sql) {
		queryJdbcDao.insertInfoBySql(sql);
	}

	@Override
	public void updateInfoBySql(String sql) {
		queryJdbcDao.updateInfoBySql(sql);
	}

}
