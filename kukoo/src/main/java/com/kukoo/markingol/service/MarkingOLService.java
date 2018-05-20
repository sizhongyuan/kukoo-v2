package com.kukoo.markingol.service;

import java.util.List;
import java.util.Map;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.kukoo.markingol.model.MarkingOL;




/**
 * 在线答题Service 接口
 * @author zhaobowen
 *
 */
public interface MarkingOLService{
	
	/**
	 * 新增信息
	 * @param timingchecktasktemplate
	 * @param baseMain
	 * @param commonAssignmentMain
	 * @throws Exception
	 */
	public void saveMarkingOL(MarkingOL markingOL) throws Exception;
	
	/**
	 * 阿省雇主担保（熟练）
	 * @param jsonArray
	 * @return JSONObject
	 * @throws Exception
	 */
	public JSONObject extendProjectOne(JSONArray jsonArray) throws Exception;

	/**
	 * 阿省雇主担保（半熟练）
	 * @param jsonArray
	 * @return JSONObject
	 * @throws Exception
	 */
	public JSONObject extendProjectTwo(JSONArray jsonArray) throws Exception;
	
	/**
	 * 安省雇主担保
	 * @param jsonArray
	 * @return JSONObject
	 * @throws Exception
	 */
	public JSONObject extendProjectThree(JSONArray jsonArray) throws Exception;
	
	/**
	 * 大西洋
	 * @param jsonArray
	 * @return JSONObject
	 * @throws Exception
	 */
	public JSONObject extendProjectFour(JSONArray jsonArray) throws Exception;
	
	/**
	 * 萨省
	 * @param jsonArray
	 * @return JSONObject
	 * @throws Exception
	 */
	public JSONObject extendProjectFive(JSONArray jsonArray) throws Exception;
	
	/**
	 * BC（B类）
	 * @param jsonArray
	 * @return JSONObject
	 * @throws Exception
	 */
	public JSONObject extendProjectSix(JSONArray jsonArray) throws Exception;
	
	/**
	 * BC（C类）
	 * @param jsonArray
	 * @return JSONObject
	 * @throws Exception
	 */
	public JSONObject extendProjectSeven(JSONArray jsonArray) throws Exception;
	
	/**
	 * EE联邦
	 * @param jsonArray
	 * @return JSONObject
	 * @throws Exception
	 */
	public JSONObject EEProject(JSONArray jsonArray) throws Exception;
	
	/**
	 * ON安省
	 * @param jsonArray
	 * @return JSONObject 
	 * @throws Exception
	 */
	public JSONObject OAProject(JSONArray jsonArray) throws Exception;
	
	/**
	 * NS省
	 * @param jsonArray
	 * @return JSONObject 
	 * @throws Exception
	 */
	public JSONObject NSProject(JSONArray jsonArray) throws Exception;
	/**
	 * SPIN省
	 * @param jsonArray
	 * @return JSONObject 
	 * @throws Exception
	 */
	public JSONObject SINPProject(JSONArray jsonArray) throws Exception;
	/**
	 * QSW省
	 * @param jsonArray
	 * @return JSONObject 
	 * @throws Exception
	 */
	public JSONObject QSWProject(JSONArray jsonArray) throws Exception;
	
	/**
	 * 获取所有魁北克专业
	 * 
	 */
	public List getAllProfession() throws Exception;
	
}
