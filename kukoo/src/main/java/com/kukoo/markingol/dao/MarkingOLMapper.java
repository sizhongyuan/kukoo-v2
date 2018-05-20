package com.kukoo.markingol.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.kukoo.markingol.model.MarkingOL;



public interface MarkingOLMapper {
	
	
	
	public List queryQSWprofessionByName(@Param("professionCnName") String professionCnName);
	
	/**
	 * 新增答题信息至用户答题表
	 * 
	 */
	public void addMarkingOL(MarkingOL markingOL);
	/**
	 * 获取所有魁北克专业
	 * 
	 */
	public List getAllProfession();
}
