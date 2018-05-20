package com.kukoo.logsystem.service;

import java.util.List;
import java.util.Map;

import com.kukoo.logsystem.model.Log;


public interface LogService {
	/**
	 * 创建日志
	 * @param log
	 * @return
	 */
	public void createLog(Log log);
	/**
	 * 更新日志
	 * @param log
	 * @return
	 */
	public void updateLog(Log log);
	/**
	 * 分页查询日志
	 * @param pageNo
	 * @param pageSize
	 * @return
	 */
	public List<Map<String,Object>> queryLogByPage();
	
}
