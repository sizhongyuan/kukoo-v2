package com.kukoo.logsystem.dao;

import java.util.List;
import java.util.Map;

import com.kukoo.logsystem.model.Log;

public interface LogDaoMapper {
	/**
	 * 保存日志
	 * @param log
	 */
	public void saveLog(Log log);
	/**
	 * 更新日志
	 * @param log
	 */
	public void updateLog(Log log);
	/**
	 * 查询日志
	 * @return
	 */
	public List<Map<String,Object>> queryLogList();
	
}
