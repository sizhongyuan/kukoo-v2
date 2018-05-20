package com.kukoo.markingol.service.impl;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.kukoo.base.util.StaticMethod;
import com.kukoo.markingol.dao.MarkingOLMapper;
import com.kukoo.markingol.model.MarkingOL;
import com.kukoo.markingol.service.MarkingOLService;
import com.kukoo.markingol.util.NSutil;
import com.kukoo.markingol.util.QSWutil;
import com.kukoo.markingol.util.SINPutil;




/**
 * 在线答题实现类
 * @author Boco
 *
 */
@Service("markingOLService")
public class MarkingOLServiceImpl implements MarkingOLService{

	
	@Autowired
	private MarkingOLMapper markingOLMapper;
	
	/**
	 * 新增信息
	 * @param timingchecktasktemplate
	 * @param baseMain
	 * @param commonAssignmentMain
	 * @throws Exception
	 */
	public void saveMarkingOL(MarkingOL markingOL) throws Exception {
		markingOLMapper.addMarkingOL(markingOL);
	}


	/**
	 * 阿省雇主担保（熟练）
	 * @param jsonArray
	 * @return string 项目名
	 * @throws Exception
	 */
	@Override
	public JSONObject extendProjectOne(JSONArray jsonArray) throws Exception {
		// TODO Auto-generated method stub
		boolean ticket = true;
		JSONObject jsonObject = new JSONObject();
		String projectName = "阿省雇主担保（熟练）";
		int length = jsonArray.size();
		if(length > 0) {
			JSONObject json = (JSONObject)jsonArray.get(0);
			String question4 = StaticMethod.nullObject2String(json.get("question4"));
			//学历部分
			boolean questine4_ticket = extendProject137Question4(question4);
			//工作部分
			JSONArray question5_JSONArray = (JSONArray)json.get("question5");
			boolean questine5_ticket = extendProject1245Question5(question5_JSONArray);
			if(questine4_ticket && questine5_ticket) {
				ticket = true;
				JSONObject jsonObj = new JSONObject();
				jsonObj.put("projectName", "阿省雇主担保（熟练）");
				jsonObj.put("country", "加拿大");
				jsonObj.put("major", "您");
				//json.put("language", (firstLanguage == "french")?"法语":"英语");
				jsonObj.put("visaType", "PR");
				jsonObj.put("capital", "5万");
				jsonObj.put("period", "3年");
				jsonObj.put("intro", "阿省雇主担保（熟练）项目简介");
				jsonObj.put("projectType", "雇主担保移民");
				//json.put("score", score);
				//jsonObj.put("pass", 425);
				jsonObject.put("recommend", jsonObj);
				return jsonObject;
			}else {
				ticket = true;
				return jsonObject;
			}
		}
			return jsonObject;
	}
	
	/**
	 * 阿省雇主担保（半熟练）
	 * @param jsonArray
	 * @return string 项目名
	 * @throws Exception
	 */
	@Override
	public JSONObject extendProjectTwo(JSONArray jsonArray) throws Exception {
		JSONObject jsonObject = new JSONObject();
		boolean ticket = true;
		String projectName = "阿省雇主担保（半熟练）";
		int length = jsonArray.size();
		if(length > 0) {
			JSONObject json = (JSONObject)jsonArray.get(0);
			
			String question4 = StaticMethod.nullObject2String(json.get("question4"));
			//学历部分
			boolean questine4_ticket = extendProject245Question4(question4);
			//工作部分
			JSONArray question5_JSONArray = (JSONArray)json.get("question5");
			boolean questine5_ticket = extendProject1245Question5(question5_JSONArray);
			//clb部分
			JSONObject question6_jsonObject = (JSONObject)json.get("question6");
			JSONObject question7_jsonObject = (JSONObject)json.get("question7");
			boolean questine67_ticket = extendProject2457uestion67(question6_jsonObject,question7_jsonObject);
			if(questine4_ticket && questine5_ticket && questine67_ticket) {
				//绿手推荐
				ticket = true;
				JSONObject jsonObj = new JSONObject();
				jsonObj.put("projectName", "阿省雇主担保（半熟练）");
				jsonObj.put("country", "加拿大");
				jsonObj.put("major", "您");
				//json.put("language", (firstLanguage == "french")?"法语":"英语");
				jsonObj.put("visaType", "PR");
				jsonObj.put("capital", "5万");
				jsonObj.put("period", "3年");
				jsonObj.put("intro", "阿省雇主担保（半熟练）项目简介");
				jsonObj.put("projectType", "雇主担保移民");
				//json.put("score", score);
				//jsonObj.put("pass", 425);
				jsonObject.put("recommend", jsonObj);
				return jsonObject;
			}else if(questine4_ticket && questine5_ticket && !questine67_ticket){
				//黄手推荐
				ticket = true;
				JSONObject jsonObj = new JSONObject();
				jsonObj.put("projectName", "阿省雇主担保（半熟练）");
				jsonObj.put("country", "加拿大");
				jsonObj.put("major", "您");
				//json.put("language", (firstLanguage == "french")?"法语":"英语");
				jsonObj.put("visaType", "PR");
				jsonObj.put("capital", "5万");
				jsonObj.put("period", "3年");
				jsonObj.put("intro", "阿省雇主担保（半熟练）项目简介");
				jsonObj.put("projectType", "雇主担保移民");
				//json.put("score", score);
				//jsonObj.put("pass", 425);
				jsonObject.put("promote", jsonObj);
				return jsonObject;
			}else {
				ticket = false;
				return jsonObject;
			}
		}
		return jsonObject;
	}
	
	/**
	 * 安省雇主担保
	 * @param jsonArray
	 * @return string 项目名
	 * @throws Exception
	 */
	@Override
	public JSONObject extendProjectThree(JSONArray jsonArray) throws Exception {
		JSONObject jsonObject = new JSONObject();
		boolean ticket = true;
		String projectName = "安省雇主担保";
		int length = jsonArray.size();
		if(length > 0) {
			JSONObject json = (JSONObject)jsonArray.get(0);
			//年龄部分
			int question2 = StaticMethod.nullObject2int(json.get("question2"));
			boolean questine2_ticket = extendProject37Question2(question2);
			
			String question4 = StaticMethod.nullObject2String(json.get("question4"));
			//学历部分
			boolean questine4_ticket = extendProject137Question4(question4);
			//工作部分
			JSONArray question5_JSONArray = (JSONArray)json.get("question5");
			boolean questine5_ticket = extendProject3Question5(question5_JSONArray);
			if(questine2_ticket && questine4_ticket && questine5_ticket) {
				ticket = true;
				
				JSONObject jsonObj = new JSONObject();
				jsonObj.put("projectName", "安省雇主担保");
				jsonObj.put("country", "加拿大");
				jsonObj.put("major", "您");
				//json.put("language", (firstLanguage == "french")?"法语":"英语");
				jsonObj.put("visaType", "PR");
				jsonObj.put("capital", "5万");
				jsonObj.put("period", "3年");
				jsonObj.put("intro", "安省雇主担保项目简介");
				jsonObj.put("projectType", "雇主担保移民");
				//json.put("score", score);
				//jsonObj.put("pass", 425);
				jsonObject.put("recommend", jsonObj);
				return jsonObject;
			}else {
				ticket = false;
				return jsonObject;
			}
		}
		return jsonObject;
	}
	
	/**
	 * 大西洋
	 * @param jsonArray
	 * @return string 项目名
	 * @throws Exception
	 */
	@Override
	public JSONObject extendProjectFour(JSONArray jsonArray) throws Exception {
		JSONObject jsonObject = new JSONObject();
		boolean ticket = true;
		String projectName = "大西洋";
		int length = jsonArray.size();
		if(length > 0) {
			JSONObject json = (JSONObject)jsonArray.get(0);
			
			String question4 = StaticMethod.nullObject2String(json.get("question4"));
			//学历部分
			boolean questine4_ticket = extendProject245Question4(question4);
			//工作部分
			JSONArray question5_JSONArray = (JSONArray)json.get("question5");
			boolean questine5_ticket = extendProject1245Question5(question5_JSONArray);
			
			//clb部分
			JSONObject question6_jsonObject = (JSONObject)json.get("question6");
			JSONObject question7_jsonObject = (JSONObject)json.get("question7");
			boolean questine67_ticket = extendProject2457uestion67(question6_jsonObject,question7_jsonObject);

			if(questine4_ticket && questine5_ticket && questine67_ticket) {
				//绿手推荐
				ticket = true;
				
				JSONObject jsonObj = new JSONObject();
				jsonObj.put("projectName", "大西洋");
				jsonObj.put("country", "加拿大");
				jsonObj.put("major", "您");
				//json.put("language", (firstLanguage == "french")?"法语":"英语");
				jsonObj.put("visaType", "PR");
				jsonObj.put("capital", "5万");
				jsonObj.put("period", "3年");
				jsonObj.put("intro", "大西洋项目简介");
				jsonObj.put("projectType", "雇主担保移民");
				//json.put("score", score);
				//jsonObj.put("pass", 425);
				jsonObject.put("recommend", jsonObj);
				return jsonObject;
			}else if(questine4_ticket && questine5_ticket && !questine67_ticket){
				//黄手推荐
				ticket = true;
				JSONObject jsonObj = new JSONObject();
				jsonObj.put("projectName", "大西洋");
				jsonObj.put("country", "加拿大");
				jsonObj.put("major", "您");
				//json.put("language", (firstLanguage == "french")?"法语":"英语");
				jsonObj.put("visaType", "PR");
				jsonObj.put("capital", "5万");
				jsonObj.put("period", "3年");
				jsonObj.put("intro", "大西洋项目简介");
				jsonObj.put("projectType", "雇主担保移民");
				//json.put("score", score);
				//jsonObj.put("pass", 425);
				jsonObject.put("promote", jsonObj);
				return jsonObject;
			}else {
				ticket = false;
				return jsonObject;
			}
		}
		return jsonObject;
	}
	
	/**
	 * 萨省
	 * @param jsonArray
	 * @return string 项目名
	 * @throws Exception
	 */
	@Override
	public JSONObject extendProjectFive(JSONArray jsonArray) throws Exception {
		JSONObject jsonObject = new JSONObject();
		boolean ticket = true;
		String projectName = "萨省";
		int length = jsonArray.size();
		if(length > 0) {
			JSONObject json = (JSONObject)jsonArray.get(0);
			
			//年龄部分
			int question2 = StaticMethod.nullObject2int(json.get("question2"));
			boolean questine2_ticket = extendProject5Question2(question2);
			
			String question4 = StaticMethod.nullObject2String(json.get("question4"));
			//学历部分
			boolean questine4_ticket = extendProject245Question4(question4);
			//工作部分
			JSONArray question5_JSONArray = (JSONArray)json.get("question5");
			boolean questine5_ticket = extendProject1245Question5(question5_JSONArray);
			
			//clb部分
			JSONObject question6_jsonObject = (JSONObject)json.get("question6");
			JSONObject question7_jsonObject = (JSONObject)json.get("question7");
			boolean questine67_ticket = extendProject2457uestion67(question6_jsonObject,question7_jsonObject);

			if(questine2_ticket && questine4_ticket && questine5_ticket && questine67_ticket) {
				//绿手推荐
				ticket = true;
				
				JSONObject jsonObj = new JSONObject();
				jsonObj.put("projectName", "大西洋");
				jsonObj.put("country", "加拿大");
				jsonObj.put("major", "您");
				//json.put("language", (firstLanguage == "french")?"法语":"英语");
				jsonObj.put("visaType", "PR");
				jsonObj.put("capital", "5万");
				jsonObj.put("period", "3年");
				jsonObj.put("intro", "大西洋项目简介");
				jsonObj.put("projectType", "雇主担保移民");
				//json.put("score", score);
				//jsonObj.put("pass", 425);
				jsonObject.put("recommend", jsonObj);
				return jsonObject;
			}else if(questine2_ticket && questine4_ticket && questine5_ticket && !questine67_ticket){
				//黄手推荐
				ticket = true;
				
				JSONObject jsonObj = new JSONObject();
				jsonObj.put("projectName", "大西洋");
				jsonObj.put("country", "加拿大");
				jsonObj.put("major", "您");
				//json.put("language", (firstLanguage == "french")?"法语":"英语");
				jsonObj.put("visaType", "PR");
				jsonObj.put("capital", "5万");
				jsonObj.put("period", "3年");
				jsonObj.put("intro", "大西洋项目简介");
				jsonObj.put("projectType", "雇主担保移民");
				//json.put("score", score);
				//jsonObj.put("pass", 425);
				jsonObject.put("promote", jsonObj);
				return jsonObject;
			}else {
				ticket = false;
				return jsonObject;
			}
		}
		return jsonObject;
	}
	
	/**
	 * BC（B类）
	 * @param jsonArray
	 * @return string 项目名
	 * @throws Exception
	 */
	@Override
	public JSONObject extendProjectSix(JSONArray jsonArray) throws Exception {
		JSONObject jsonObject = new JSONObject();
		boolean ticket = true;
		String projectName = "BC（B类）";
		int length = jsonArray.size();
		if(length > 0) {
			JSONObject json = (JSONObject)jsonArray.get(0);
			
			String question4 = StaticMethod.nullObject2String(json.get("question4"));
			//学历部分
			boolean questine4_ticket = extendProject6Question4(question4);
			//工作部分
			JSONArray question5_JSONArray = (JSONArray)json.get("question5");
			boolean questine5_ticket = extendProject6Question5(question5_JSONArray);
			
			//clb部分
			JSONObject question6_jsonObject = (JSONObject)json.get("question6");
			JSONObject question7_jsonObject = (JSONObject)json.get("question7");
			boolean questine67_ticket = extendProject6uestion67(question6_jsonObject,question7_jsonObject);

			if(questine4_ticket && questine5_ticket && questine67_ticket) {
				//绿手推荐
				ticket = true;
				JSONObject jsonObj = new JSONObject();
				jsonObj.put("projectName", "BC（B类）");
				jsonObj.put("country", "加拿大");
				jsonObj.put("major", "您");
				//json.put("language", (firstLanguage == "french")?"法语":"英语");
				jsonObj.put("visaType", "PR");
				jsonObj.put("capital", "5万");
				jsonObj.put("period", "3年");
				jsonObj.put("intro", "BC（B类）项目简介");
				jsonObj.put("projectType", "雇主担保移民");
				//json.put("score", score);
				//jsonObj.put("pass", 425);
				jsonObject.put("recommend", jsonObj);
				return jsonObject;
			}else if(questine4_ticket && questine5_ticket && !questine67_ticket){
				//黄手推荐
				ticket = true;
				JSONObject jsonObj = new JSONObject();
				jsonObj.put("projectName", "BC（B类）");
				jsonObj.put("country", "加拿大");
				jsonObj.put("major", "您");
				//json.put("language", (firstLanguage == "french")?"法语":"英语");
				jsonObj.put("visaType", "PR");
				jsonObj.put("capital", "5万");
				jsonObj.put("period", "3年");
				jsonObj.put("intro", "BC（B类）项目简介");
				jsonObj.put("projectType", "雇主担保移民");
				//json.put("score", score);
				//jsonObj.put("pass", 425);
				jsonObject.put("promote", jsonObj);
				return jsonObject;
				
			}else {
				ticket = false;
				return jsonObject;
			}
		}
		return jsonObject;
	}
	
	/**
	 * BC（C类）
	 * @param jsonArray
	 * @return string 项目名
	 * @throws Exception
	 */
	@Override
	public JSONObject extendProjectSeven(JSONArray jsonArray) throws Exception {
		JSONObject jsonObject = new JSONObject();
		boolean ticket = true;
		String projectName = "BC（B类）";
		int length = jsonArray.size();
		if(length > 0) {
			JSONObject json = (JSONObject)jsonArray.get(0);
			 
			//年龄部分
			int question2 = StaticMethod.nullObject2int(json.get("question2"));
			boolean questine2_ticket = extendProject37Question2(question2);
			
			String question4 = StaticMethod.nullObject2String(json.get("question4"));
			//学历部分
			boolean questine4_ticket = extendProject137Question4(question4);
			
			//clb部分
			JSONObject question6_jsonObject = (JSONObject)json.get("question6");
			JSONObject question7_jsonObject = (JSONObject)json.get("question7");
			boolean questine67_ticket = extendProject2457uestion67(question6_jsonObject,question7_jsonObject);

			if(questine2_ticket && questine4_ticket && questine67_ticket) {
				//绿手推荐
				ticket = true;
				
				JSONObject jsonObj = new JSONObject();
				jsonObj.put("projectName", "BC（C类）");
				jsonObj.put("country", "加拿大");
				jsonObj.put("major", "您");
				//json.put("language", (firstLanguage == "french")?"法语":"英语");
				jsonObj.put("visaType", "PR");
				jsonObj.put("capital", "5万");
				jsonObj.put("period", "3年");
				jsonObj.put("intro", "BC（B类）项目简介");
				jsonObj.put("projectType", "雇主担保移民");
				//json.put("score", score);
				//jsonObj.put("pass", 425);
				jsonObject.put("recommend", jsonObj);
				return jsonObject;
				
			}else if(questine2_ticket && questine4_ticket && !questine67_ticket){
				//黄手推荐
				ticket = true;
				
				JSONObject jsonObj = new JSONObject();
				jsonObj.put("projectName", "BC（C类）");
				jsonObj.put("country", "加拿大");
				jsonObj.put("major", "您");
				//json.put("language", (firstLanguage == "french")?"法语":"英语");
				jsonObj.put("visaType", "PR");
				jsonObj.put("capital", "5万");
				jsonObj.put("period", "3年");
				jsonObj.put("intro", "BC（B类）项目简介");
				jsonObj.put("projectType", "雇主担保移民");
				//json.put("score", score);
				//jsonObj.put("pass", 425);
				jsonObject.put("promote", jsonObj);
				return jsonObject;
			}else {
				ticket = false;
				return jsonObject;
			}
		}
		return jsonObject;
	}
	
	/**
	 * EE联邦
	 * @param jsonArray
	 * @return JSONObject 
	 * @throws Exception
	 */
	@Override
	public JSONObject EEProject(JSONArray jsonArray) throws Exception {
		// TODO Auto-generated method stub
		JSONObject jsonObject = new JSONObject();
//		String projectName = "EE联邦";
		int length = jsonArray.size();
		if(length > 0) {
			JSONObject jsonMain = (JSONObject)jsonArray.get(0);//主
			int count = 0;//总分
			//判断主申人是否有伴侣
			String isLivingAlone = StaticMethod.nullObject2String(jsonMain.get("question1"));
			if("无".equals(isLivingAlone)) {
				//调用无伴侣算法
				JSONObject scoreJson = EEProjectNone(jsonMain);
				int score = StaticMethod.nullObject2int(scoreJson.get("titleScore"));//总得分
				int[] englishCLB = (int[]) scoreJson.get("englishCLB");//英语clb等级
				int[] frenchCLB = (int[]) scoreJson.get("frenchCLB");//法语clb等级
				String firstLanguage = StaticMethod.nullObject2String(scoreJson.get("firstLanguage"));//第一语言 
				int languageScore = StaticMethod.nullObject2int(scoreJson.get("question67MainScore"));//语言得分
				//未达标提示语言
				String tips = "";
				//分数达标
				if(score >= 425) {
					tips = notStandardLanguage(firstLanguage, englishCLB, frenchCLB);
					JSONObject json = new JSONObject();
					json.put("projectName", "加拿大联邦技术移民");
					json.put("country", "加拿大");
					json.put("major", "您");
					json.put("language", (firstLanguage == "french")?"法语":"英语");
					json.put("visaType", "PR");
					json.put("capital", "5万");
					json.put("period", "3年");
					json.put("intro", "加拿大联邦技术移民项目是由加拿大联邦移民局直接受理的移民项目，联邦技术移民采用快速通道（Express Entry, 'EE'）系统进行申请，具有名额充沛、无职业限制、无加拿大境内居住地要求、审理速度快等优点，最快可在8个月内办理成功并登陆加拿大。 同时，从申请条件上对语言水平等条件要求较高，通常适合学历高，年纪轻，英语好的申请人。");
					json.put("score", score);
					json.put("pass", 425);
					json.put("projectType", "技术移民");
					jsonObject.put("recommend", json);
					return jsonObject;
				}
				//分数不达标可推荐
				if(score < 425) {
					int raiseScore = raiseScoreNone(firstLanguage,languageScore,englishCLB, frenchCLB);
					if((score+raiseScore) >= 425) {
						//语言努力可达标
						
						JSONObject json = new JSONObject();
						json.put("projectName", "加拿大联邦技术移民");
						json.put("country", "加拿大");
						json.put("major", "您");
						json.put("language", (firstLanguage == "french")?"法语":"英语");
						json.put("visaType", "PR");
						json.put("capital", "5万");
						json.put("period", "3年");
						json.put("intro", "加拿大联邦技术移民项目是由加拿大联邦移民局直接受理的移民项目，联邦技术移民采用快速通道（Express Entry, 'EE'）系统进行申请，具有名额充沛、无职业限制、无加拿大境内居住地要求、审理速度快等优点，最快可在8个月内办理成功并登陆加拿大。 同时，从申请条件上对语言水平等条件要求较高，通常适合学历高，年纪轻，英语好的申请人。");
						json.put("score", score);
						json.put("pass", 425);
						json.put("projectType", "技术移民");
						jsonObject.put("promote", json);
						
						return jsonObject;
					}else {
						//语言努力都达不到
						tips = notStandardLanguage(firstLanguage, englishCLB, frenchCLB);
						return jsonObject;
					}
				}
			}else {
				JSONObject jsonAssi = (JSONObject)jsonArray.get(1);//副
				int score = 0;//总得分
				boolean isVerb = false;//是否对调
				int languageNorScore = 0;//语言得分
				String firstLanguage = "";//主语言
				int[] englishCLBMain;
				int[] englishCLBAssi;
				int[] frenchCLBMain;
				int[] frenchCLBAssi;
				
				//调用有伴侣算法
				JSONObject scoreJson = EEProjectHave(jsonMain,jsonAssi);
				//不对调算法结果
				JSONObject scoreJsonNor = (JSONObject)scoreJson.get("scoreJsonNor");
				int scoreNor = StaticMethod.nullObject2int(scoreJsonNor.get("titleScore"));//总得分
				//对调算法
				JSONObject scoreJsonVerb = (JSONObject)scoreJson.get("scoreJsonVerb");
				int sorceVerb = StaticMethod.nullObject2int(scoreJsonVerb.get("titleScore"));
				
				if(scoreNor < sorceVerb ) {
					//对调之后分高
					isVerb = true;
					score = sorceVerb;
					languageNorScore = StaticMethod.nullObject2int(scoreJsonVerb.get("question67AssiScore"));//语言得分
					firstLanguage = StaticMethod.nullObject2String(scoreJsonVerb.get("firstLanguage"));//主语言
					englishCLBMain = (int[]) scoreJsonVerb.get("englishCLBMain");
					englishCLBAssi = (int[]) scoreJsonVerb.get("englishCLBAssi");
					frenchCLBMain = (int[]) scoreJsonVerb.get("frenchCLBMain");
					frenchCLBAssi = (int[]) scoreJsonVerb.get("frenchCLBAssi");
				
				}else {
					//不对调分高
					score = scoreNor;
					languageNorScore = StaticMethod.nullObject2int(scoreJsonNor.get("question67AssiScore"));//语言得分
					firstLanguage = StaticMethod.nullObject2String(scoreJsonNor.get("firstLanguage"));//主语言
					englishCLBMain = (int[]) scoreJsonNor.get("englishCLBMain");
					englishCLBAssi = (int[]) scoreJsonNor.get("englishCLBAssi");
					frenchCLBMain = (int[]) scoreJsonNor.get("frenchCLBMain");
					frenchCLBAssi = (int[]) scoreJsonNor.get("frenchCLBAssi");
				
				}
				
				//未达标提示语言
				String tips = "";
				//达标
				if(score >= 425) {
					tips = notStandardLanguage(firstLanguage, englishCLBMain, frenchCLBMain);
					
					JSONObject json = new JSONObject();
					json.put("projectName", "加拿大联邦技术移民");
					json.put("country", "加拿大");
					json.put("major", (isVerb)?"您伴侣":"您");
					json.put("language", (firstLanguage == "french")?"法语":"英语");
					json.put("visaType", "PR");
					json.put("capital", "5万");
					json.put("period", "3年");
					json.put("intro", "加拿大联邦技术移民项目是由加拿大联邦移民局直接受理的移民项目，联邦技术移民采用快速通道（Express Entry, 'EE'）系统进行申请，具有名额充沛、无职业限制、无加拿大境内居住地要求、审理速度快等优点，最快可在8个月内办理成功并登陆加拿大。 同时，从申请条件上对语言水平等条件要求较高，通常适合学历高，年纪轻，英语好的申请人。");
					json.put("score", score);
					json.put("pass", 425);
					json.put("projectType", "技术移民");
					jsonObject.put("recommend", json);
					
					return jsonObject;
				}
				//不达标
				if(score < 425) {
					int rasieScore = raiseScoreHave(firstLanguage, languageNorScore,englishCLBMain, englishCLBAssi, frenchCLBMain,frenchCLBAssi);
					if((scoreNor+rasieScore) >= 425) {
						//语言努力可达标
						
						JSONObject json = new JSONObject();
						json.put("projectName", "加拿大联邦技术移民");
						json.put("country", "加拿大");
						json.put("major", (isVerb)?"您伴侣":"您");
						json.put("language", (firstLanguage == "french")?"法语":"英语");
						json.put("visaType", "PR");
						json.put("capital", "5万");
						json.put("period", "3年");
						json.put("intro", "加拿大联邦技术移民项目是由加拿大联邦移民局直接受理的移民项目，联邦技术移民采用快速通道（Express Entry, 'EE'）系统进行申请，具有名额充沛、无职业限制、无加拿大境内居住地要求、审理速度快等优点，最快可在8个月内办理成功并登陆加拿大。 同时，从申请条件上对语言水平等条件要求较高，通常适合学历高，年纪轻，英语好的申请人。");
						json.put("score", score);
						json.put("pass", 425);
						json.put("projectType", "技术移民");
						jsonObject.put("promote", json);
						
						return jsonObject;
					}else {
						//努力也不达标
						tips = notStandardLanguage(firstLanguage, englishCLBMain, frenchCLBMain);
						return jsonObject;
					}
				}
			}
		}
		return jsonObject;
	}
	
	/**
	 * ON安省
	 * @param jsonArray
	 * @return JSONObject 
	 * @throws Exception
	 */
	@Override
	public JSONObject OAProject(JSONArray jsonArray) throws Exception {
		// TODO Auto-generated method stub
		JSONObject jsonObject = new JSONObject();
		String projectName = "ON安省";
		boolean workTypeLimit = false;//职业限制
		int length = jsonArray.size();
		if(length > 0) {
			JSONObject jsonMain = (JSONObject)jsonArray.get(0);//主
			
			int count = 0;//总分
			//判断主申人是否有伴侣
			String isLivingAlone = StaticMethod.nullObject2String(jsonMain.get("question1"));
			if("无".equals(isLivingAlone)) {
				
				JSONArray question5_JSONArray = (JSONArray)jsonMain.get("question5");
				List list = workType(question5_JSONArray);
				if(list != null && list.size() > 0) {
					workTypeLimit = list.contains("维修/操作技师、技工类");
					workTypeLimit = list.contains("企业咨询类");
					workTypeLimit = list.contains("计算机类");
					workTypeLimit = list.contains("广告市场");
					workTypeLimit = list.contains("行政助理");
					workTypeLimit = list.contains("金融财会类");
					workTypeLimit = list.contains("其他");
				}
				if(!workTypeLimit) {
					//职业限制不能申请
					return jsonObject;
				}
				
				//调用无伴侣算法
				JSONObject scoreJson = EEProjectNone(jsonMain);
				int score = StaticMethod.nullObject2int(scoreJson.get("titleScore"));//总得分
				int[] englishCLB = (int[]) scoreJson.get("englishCLB");//英语clb等级
				int[] frenchCLB = (int[]) scoreJson.get("frenchCLB");//法语clb等级
				String firstLanguage = StaticMethod.nullObject2String(scoreJson.get("firstLanguage"));//第一语言 
				int languageScore = StaticMethod.nullObject2int(scoreJson.get("question67MainScore"));//语言得分
				//未达标提示语言
				String tips = "";
				//分数达标
				if(score >= 400) {
					tips = notStandardLanguage(firstLanguage, englishCLB, frenchCLB);
					JSONObject json = new JSONObject();
					json.put("projectName", "安大略省技术移民");
					json.put("country", "加拿大");
					json.put("major", "您");
					json.put("language", (firstLanguage == "french")?"法语":"英语");
					json.put("visaType", "PR");
					json.put("capital", "5万");
					json.put("period", "3年");
					json.put("intro", "该项目属于省提名移民项目；首先经安省移民局审批获得省提名，再经联邦移民局进行健康、安全等审核。申请人须表明有意向居住在提名省份，获得永居身份后通常可迁徙至加拿大任意地区居住。该项目采用快速通道（Express Entry, 'EE'）系统进行申请，需要被动接受邀请；审理速度相对较快，但通常不定期发邀请。同时要求申请人职业为安省非限制类职业。");
					json.put("score", score);
					json.put("pass", 425);
					json.put("projectType", "技术移民");
					jsonObject.put("recommend", json);
					return jsonObject;
				}
				//分数不达标可推荐
				if(score < 400) {
					int raiseScore = raiseScoreNone(firstLanguage,languageScore,englishCLB, frenchCLB);
					if((score+raiseScore) >= 400) {
						//语言努力可达标
						JSONObject json = new JSONObject();
						json.put("projectName", "安大略省技术移民");
						json.put("country", "加拿大");
						json.put("major", "您");
						json.put("language", (firstLanguage == "french")?"法语":"英语");
						json.put("visaType", "PR");
						json.put("capital", "5万");
						json.put("period", "3年");
						json.put("intro", "该项目属于省提名移民项目；首先经安省移民局审批获得省提名，再经联邦移民局进行健康、安全等审核。申请人须表明有意向居住在提名省份，获得永居身份后通常可迁徙至加拿大任意地区居住。该项目采用快速通道（Express Entry, 'EE'）系统进行申请，需要被动接受邀请；审理速度相对较快，但通常不定期发邀请。同时要求申请人职业为安省非限制类职业。");
						json.put("score", score);
						json.put("pass", 425);
						json.put("projectType", "技术移民");
						jsonObject.put("promote", json);
						return jsonObject;
					}else {
						//语言努力都达不到
						tips = notStandardLanguage(firstLanguage, englishCLB, frenchCLB);
						return jsonObject;
					}
				}
			}else {
				JSONObject jsonAssi = (JSONObject)jsonArray.get(1);//副
				int score = 0;//总得分
				boolean isVerb = false;//是否对调
				int languageNorScore = 0;//语言得分
				String firstLanguage = "";//主语言
				int[] englishCLBMain;
				int[] englishCLBAssi;
				int[] frenchCLBMain;
				int[] frenchCLBAssi;
				
				//调用有伴侣算法
				JSONObject scoreJson = EEProjectHave(jsonMain,jsonAssi);
				//不对调算法结果
				JSONObject scoreJsonNor = (JSONObject)scoreJson.get("scoreJsonNor");
				int scoreNor = StaticMethod.nullObject2int(scoreJsonNor.get("titleScore"));//总得分
				//对调算法
				JSONObject scoreJsonVerb = (JSONObject)scoreJson.get("scoreJsonVerb");
				int sorceVerb = StaticMethod.nullObject2int(scoreJsonVerb.get("titleScore"));
				
				if(scoreNor < sorceVerb ) {
					//对调之后分高
					isVerb = true;
					score = sorceVerb;
					languageNorScore = StaticMethod.nullObject2int(scoreJsonVerb.get("question67AssiScore"));//语言得分
					firstLanguage = StaticMethod.nullObject2String(scoreJsonVerb.get("firstLanguage"));//主语言
					englishCLBMain = (int[]) scoreJsonVerb.get("englishCLBMain");
					englishCLBAssi = (int[]) scoreJsonVerb.get("englishCLBAssi");
					frenchCLBMain = (int[]) scoreJsonVerb.get("frenchCLBMain");
					frenchCLBAssi = (int[]) scoreJsonVerb.get("frenchCLBAssi");
				}else {
					//不对调分高
					score = scoreNor;
					languageNorScore = StaticMethod.nullObject2int(scoreJsonNor.get("question67AssiScore"));//语言得分
					firstLanguage = StaticMethod.nullObject2String(scoreJsonNor.get("firstLanguage"));//主语言
					englishCLBMain = (int[]) scoreJsonNor.get("englishCLBMain");
					englishCLBAssi = (int[]) scoreJsonNor.get("englishCLBAssi");
					frenchCLBMain = (int[]) scoreJsonNor.get("frenchCLBMain");
					frenchCLBAssi = (int[]) scoreJsonNor.get("frenchCLBAssi");
				}
				
				//未达标提示语言
				String tips = "";
				//达标
				if(score >= 400) {
					tips = notStandardLanguage(firstLanguage, englishCLBMain, frenchCLBMain);
					JSONObject json = new JSONObject();
					json.put("projectName", "安大略省技术移民");
					json.put("country", "加拿大");
					json.put("major", (isVerb)?"您伴侣":"您");
					json.put("language", (firstLanguage == "french")?"法语":"英语");
					json.put("visaType", "PR");
					json.put("capital", "5万");
					json.put("period", "3年");
					json.put("intro", "该项目属于省提名移民项目；首先经安省移民局审批获得省提名，再经联邦移民局进行健康、安全等审核。申请人须表明有意向居住在提名省份，获得永居身份后通常可迁徙至加拿大任意地区居住。该项目采用快速通道（Express Entry, 'EE'）系统进行申请，需要被动接受邀请；审理速度相对较快，但通常不定期发邀请。同时要求申请人职业为安省非限制类职业。");
					json.put("score", score);
					json.put("pass", 425);
					json.put("projectType", "技术移民");
					jsonObject.put("recommend", json);
					return jsonObject;
				}
				//不达标
				if(score < 400) {
					int rasieScore = raiseScoreHave(firstLanguage, languageNorScore,englishCLBMain, englishCLBAssi, frenchCLBMain,frenchCLBAssi);
					if((scoreNor+rasieScore) >= 400) {
						//语言努力可达标
						JSONObject json = new JSONObject();
						json.put("projectName", "安大略省技术移民");
						json.put("country", "加拿大");
						json.put("major", (isVerb)?"您伴侣":"您");
						json.put("language", (firstLanguage == "french")?"法语":"英语");
						json.put("visaType", "PR");
						json.put("capital", "5万");
						json.put("period", "3年");
						json.put("intro", "该项目属于省提名移民项目；首先经安省移民局审批获得省提名，再经联邦移民局进行健康、安全等审核。申请人须表明有意向居住在提名省份，获得永居身份后通常可迁徙至加拿大任意地区居住。该项目采用快速通道（Express Entry, 'EE'）系统进行申请，需要被动接受邀请；审理速度相对较快，但通常不定期发邀请。同时要求申请人职业为安省非限制类职业。");
						json.put("score", score);
						json.put("pass", 425);
						json.put("projectType", "技术移民");
						jsonObject.put("promote", json);
						return jsonObject;
					}else {
						//努力也不达标
						tips = notStandardLanguage(firstLanguage, englishCLBMain, frenchCLBMain);
						return jsonObject;
					}
				}
			}
		}
		
		return jsonObject;
	}
	
	/**
	 * EE联邦 无伴侣算法
	 * @param jsonArray
	 * @return int 总得分
	 * @throws Exception
	 */
	public JSONObject EEProjectNone(JSONObject jsonMain) throws Exception{
		JSONObject scoreJson = new JSONObject();
		int count = 0;//总得分
		int ageCount = 0;//年龄得分
		int certificateCount = 0;//学历得分
		int languageScore = 0;//语言得分
		int otherCount = 0;//额外总加分
		int otherCount1 = 0;//学历/语言奖励分
		int otherCount2 = 0;//工作/语言奖励分
		int otherCount3 = 0;//双语言奖励分
		String firstLanguage = "";//第一语言
		
		//没有伴侣不考虑数组第二个值
		//年龄项 start
		int age = StaticMethod.nullObject2int(jsonMain.get("question2"));
		if(age == 18 || age == 31) {
			ageCount = 99;
		}else if(age == 19 || age ==30) {
			ageCount = 105;
		}else if(age >= 20 && age <=29 ) {
			ageCount = 110;
		}else if(age == 32) {
			ageCount = 94;
		}else if(age == 33) {
			ageCount = 88;
		}else if(age == 34) {
			ageCount = 83;
		}else if(age == 35) {
			ageCount = 77;
		}else if(age == 36) {
			ageCount = 72;
		}else if(age == 37) {
			ageCount = 66;
		}else if(age == 38) {
			ageCount = 61;
		}else if(age == 39) {
			ageCount = 55;
		}else if(age == 40) {
			ageCount = 50;
		}else if(age == 41) {
			ageCount = 39;
		}else if(age == 42) {
			ageCount = 28;
		}else if(age == 43) {
			ageCount = 17;
		}else if(age == 44) {
			ageCount = 6;
		}else {
			ageCount = 0;
		}
		//年龄项 end
		
		//学历start
		String certificate = StaticMethod.nullObject2String(jsonMain.get("question4"));
		if("博士".equals(certificate)) {
			certificateCount = 150;
		}else if("硕士".equals(certificate)) {
			certificateCount = 135;
		}else if("双学历".equals(certificate)) {
			certificateCount = 128;
		}else if("本科（4年制）".equals(certificate) || "本科（3年制）".equals(certificate) || "专科（文科）".equals(certificate) || "专科（理科）".equals(certificate)) {
			certificateCount = 120;
		}else if("本科（2年制）".equals(certificate)) {
			certificateCount = 98;
		}else if("本科（1年制）".equals(certificate)) {
			certificateCount = 90;
		}else if("普通高中".equals(certificate) || "职业高中".equals(certificate)) {
			certificateCount = 30;
		}else {
			certificateCount = 0;
		}
		//学历end
		
		//英语CLB start
		JSONObject englishCLB =(JSONObject)jsonMain.get("question6");
		int[] englishCLBLevel = englishCLB(englishCLB);//调用CLB算法
		//英语CLB end
		
		//法语CLB  start
		JSONObject frenchCLB =(JSONObject)jsonMain.get("question7");
		int[] frenchCLBLevel = frenchCLB(frenchCLB);//调用CLB算法
		//法语CLB  end
		
//		jsonObj.put("languageScore", languageScore);//语言总得分
//		jsonObj.put("languegeOneCount", languegeOneCount);//语言1总得分
//		jsonObj.put("languegeTwoCount", languegeTwoCount);//语言2总得分
		
		//英语作为第一语言计算
		JSONObject enMainjson = languageScoreNone(englishCLBLevel, frenchCLBLevel);
		int enMainlanguageScore = StaticMethod.nullObject2int(enMainjson.get("languageScore"));
		
		//法语作为第一语言计算
		JSONObject frMainjson = languageScoreNone(frenchCLBLevel, englishCLBLevel);
		int frMainlanguageScore = StaticMethod.nullObject2int(frMainjson.get("languageScore"));
		
		//第一语言计算与语言分数计算
		if(frMainlanguageScore > enMainlanguageScore) {
			firstLanguage = "french";
			languageScore = frMainlanguageScore;
		}else {
			firstLanguage = "english";
			languageScore = enMainlanguageScore;
		}
		
		//额外加分算法 start
		int enCLB = getMinNumber(englishCLBLevel);
		//学历/语言奖励分
		if(enCLB >= 7 && ("本科（4年制）".equals(certificate) || "本科（3年制）".equals(certificate) || "本科（2年制）".equals(certificate) || "本科（1年制）".equals(certificate) || "专科（文科）".equals(certificate) || "专科（理科）".equals(certificate))) {
			otherCount1 = 13;
		}else if(enCLB >= 7 && ("双学历".equals(certificate) || "博士".equals(certificate) || "硕士".equals(certificate))) {
			otherCount1 = 25;
		}else if(enCLB >= 9 && ("本科（4年制）".equals(certificate) || "本科（3年制）".equals(certificate) || "本科（2年制）".equals(certificate) || "本科（1年制）".equals(certificate) || "专科（文科）".equals(certificate) || "专科（理科）".equals(certificate))) {
			otherCount1 = 25;
		}else if(enCLB >= 9 && ("双学历".equals(certificate) || "博士".equals(certificate) || "硕士".equals(certificate))) {
			otherCount1 = 50;
		}
		//工作/语言奖励分
		JSONArray question5_JSONArray = (JSONArray)jsonMain.get("question5");
		int worktime = worktime(question5_JSONArray);//工作时间
		if(enCLB >= 7 && worktime>=1 && worktime <3) {
			otherCount2 = 13;
		}else if(enCLB >= 7 &&  worktime >= 3) {
			otherCount2 = 25;
		}else if(enCLB >= 9 && worktime>=1 && worktime <3) {
			otherCount2 = 25;
		}else if(enCLB >= 9 && worktime >= 3) {
			otherCount2 = 50;
		}
		//双语言奖励分
		int frCLB = getMinNumber(frenchCLBLevel);
		if(enCLB <= 4 && frCLB >= 7) {
			otherCount3 = 15;
		}else if(enCLB >= 5 && frCLB >= 7) {
			otherCount3 = 30;
		}
		//额外总加分
		otherCount = otherCount1 + otherCount2 + otherCount3;
		
		//额外加分算法 end
		//总得分
		count = ageCount + certificateCount + languageScore +otherCount;
		
		scoreJson.put("titleScore", count);//总得分
		scoreJson.put("question2MainScore", ageCount);//第二题年龄得分
		scoreJson.put("question4MainScore", certificateCount);//第四题学历得分
		scoreJson.put("question67MainScore", languageScore);//语言得分
//		scoreJson.put("question6MainScore", languegeOneCount);//第六题语言1得分
//		scoreJson.put("question7MainScore", languegeTwoCount);//第七题语言2得分
		scoreJson.put("englishCLB", englishCLBLevel);//英语clb等级
		scoreJson.put("frenchCLB", frenchCLBLevel);//法语clb等级
		scoreJson.put("otherScore", otherCount);//额外加分
		scoreJson.put("firstLanguage", firstLanguage);//额外加分
		
		return scoreJson;
	}
	
	/**
	 * EE联邦 有伴侣算法
	 * @param jsonArray
	 * @return int 总得分
	 * @throws Exception
	 */
	public JSONObject EEProjectHave(JSONObject jsonMain,JSONObject jsonAssi) throws Exception {
		JSONObject scoreJson = new JSONObject();
		//正向 主副申请算法
		JSONObject scoreJsonNor = EEProjectHaveNormal(jsonMain,jsonAssi);
		//逆向 主副对调
		JSONObject scoreJsonVerb = EEProjectHaveNormal(jsonAssi,jsonMain);
		scoreJson.put("scoreJsonNor", scoreJsonNor);
		scoreJson.put("scoreJsonVerb", scoreJsonVerb);
		
		return scoreJson;
	}
	

    /** EE联邦 有伴侣算法 
	 * @param jsonObject 主/副
	 * @param jsonObject 主/副
	 * @return JSONObject 得分json
	 * @throws Exception
	 */
	public JSONObject EEProjectHaveNormal(JSONObject jsonMain,JSONObject jsonAssi) throws Exception {
		JSONObject scoreJson = new JSONObject();
		int count = 0;//总得分
		int ageCount = 0;//年龄得分
		int ageCountMain = 0;//主年龄得分
		int ageCountAssi = 0;//副年龄得分
		int certificateCount = 0;//学历总得分
		int certificateCountMain = 0;//主学历得分
		int certificateCountAssi = 0;//副学历得分
		int languageScore = 0;
		int otherCount = 0;//额外总得分
		int otherCount1 = 0;//学历/语言奖励分
		int otherCount2 = 0;//工作/语言奖励分
		int otherCount3 = 0;//双语言奖励分
		String firstLanguage = "";
		
		//年龄项 start EE项目不考虑副申
		int age = StaticMethod.nullObject2int(jsonMain.get("question2"));
		if(age == 18 || age == 31) {
			ageCountMain = 90;
		}else if(age == 19 || age ==30) {
			ageCountMain = 95;
		}else if(age >= 20 && age <=29 ) {
			ageCountMain = 100;
		}else if(age == 32) {
			ageCountMain = 85;
		}else if(age == 33) {
			ageCountMain = 80;
		}else if(age == 34) {
			ageCountMain = 75;
		}else if(age == 35) {
			ageCountMain = 70;
		}else if(age == 36) {
			ageCountMain = 65;
		}else if(age == 37) {
			ageCountMain = 60;
		}else if(age == 38) {
			ageCountMain = 55;
		}else if(age == 39) {
			ageCountMain = 50;
		}else if(age == 40) {
			ageCountMain = 45;
		}else if(age == 41) {
			ageCountMain = 35;
		}else if(age == 42) {
			ageCountMain = 25;
		}else if(age == 43) {
			ageCountMain = 15;
		}else if(age == 44) {
			ageCountMain = 5;
		}else {
			ageCountMain = 0;
		}
		ageCount = ageCountMain + ageCountAssi;
		//年龄项 end
		
		//学历start
		//主
		String certificateMain = StaticMethod.nullObject2String(jsonMain.get("question4"));
		if("博士".equals(certificateMain)) {
			certificateCountMain = 140;
		}else if("硕士".equals(certificateMain)) {
			certificateCountMain = 126;
		}else if("双学历".equals(certificateMain)) {
			certificateCountMain = 119;
		}else if("本科（4年制）".equals(certificateMain) || "本科（3年制）".equals(certificateMain) || "专科（文科）".equals(certificateMain) || "专科（理科）".equals(certificateMain)) {
			certificateCountMain = 112;
		}else if("本科（2年制）".equals(certificateMain)) {
			certificateCountMain = 91;
		}else if("本科（1年制）".equals(certificateMain)) {
			certificateCountMain = 84;
		}else if("普通高中".equals(certificateMain) || "职业高中".equals(certificateMain)) {
			certificateCountMain = 28;
		}else {
			certificateCountMain = 0;
		}
		//副
		String certificateAssi = StaticMethod.nullObject2String(jsonAssi.get("question4"));
		if("博士".equals(certificateAssi) || "硕士".equals(certificateAssi)) {
			certificateCountAssi = 10;
		}else if("双学历".equals(certificateAssi)) {
			certificateCountAssi = 9;
		}else if("本科（4年制）".equals(certificateAssi) || "本科（3年制）".equals(certificateAssi) || "专科（文科）".equals(certificateAssi) || "专科（理科）".equals(certificateAssi)) {
			certificateCountAssi = 8;
		}else if("本科（2年制）".equals(certificateAssi)) {
			certificateCountAssi = 7;
		}else if("本科（1年制）".equals(certificateAssi)) {
			certificateCountAssi = 6;
		}else if("普通高中".equals(certificateAssi) || "职业高中".equals(certificateAssi)) {
			certificateCountAssi = 2;
		}else {
			certificateCountAssi = 0;
		}
		//学历总得分
		certificateCount = certificateCountMain + certificateCountAssi;
		//学历end
		
		//英语CLB
		//主
		JSONObject englishCLBMain =(JSONObject)jsonMain.get("question6");
		int[] englishCLBLevelMain = englishCLB(englishCLBMain);//调用CLB算法
		//副
		JSONObject englishCLBAssi =(JSONObject)jsonAssi.get("question6");
		int[] englishCLBLevelAssi = englishCLB(englishCLBAssi);//调用CLB算法
		
		//法语CLB 
		//主
		JSONObject frenchCLBMain =(JSONObject)jsonMain.get("question7");
		int[] frenchCLBLevelMain = frenchCLB(frenchCLBMain);//调用CLB算法
		//副
		JSONObject frenchCLBAssi =(JSONObject)jsonAssi.get("question7");
		int[] frenchCLBLevelAssi = frenchCLB(frenchCLBAssi);//调用CLB算法
		
//		jsonObj.put("languageScore", languageScore);//语言总得分
//		jsonObj.put("languegeOneCount", languegeOneCount);//语言1总得分
//		jsonObj.put("languegeTwoCount", languegeTwoCount);//语言2总得分
		//英语作为第一语言计算
		JSONObject enfirstLanguageJson = languageScoreHave(englishCLBLevelMain, englishCLBLevelAssi, frenchCLBLevelMain);
		int enFirstlanguageScore = StaticMethod.nullObject2int(enfirstLanguageJson.get("languageScore"));
		
		//法语作为第一语言计算
		JSONObject frfirstLanguageJson = languageScoreHave(frenchCLBLevelMain, frenchCLBLevelAssi, englishCLBLevelMain);
		int frFirstlanguageScore = StaticMethod.nullObject2int(enfirstLanguageJson.get("languageScore"));
		
		//第一语言算法
		if(frFirstlanguageScore > enFirstlanguageScore) {
			firstLanguage = "french";
			languageScore = frFirstlanguageScore;
		}else {
			firstLanguage = "english";
			languageScore = enFirstlanguageScore;
		}
		
		//额外加分算法 start
		int enCLB = getMinNumber(englishCLBLevelMain);
		//学历/语言奖励分
		if(enCLB >= 7 && ("本科（4年制）".equals(certificateMain) || "本科（3年制）".equals(certificateMain) || "本科（2年制）".equals(certificateMain) || "本科（1年制）".equals(certificateMain) || "专科（文科）".equals(certificateMain) || "专科（理科）".equals(certificateMain))) {
			otherCount1 = 13;
		}else if(enCLB >= 7 && ("双学历".equals(certificateMain) || "博士".equals(certificateMain) || "硕士".equals(certificateMain))) {
			otherCount1 = 25;
		}else if(enCLB >= 9 && ("本科（4年制）".equals(certificateMain) || "本科（3年制）".equals(certificateMain) || "本科（2年制）".equals(certificateMain) || "本科（1年制）".equals(certificateMain) || "专科（文科）".equals(certificateMain) || "专科（理科）".equals(certificateMain))) {
			otherCount1 = 25;
		}else if(enCLB >= 9 && ("双学历".equals(certificateMain) || "博士".equals(certificateMain) || "硕士".equals(certificateMain))) {
			otherCount1 = 50;
		}
		//工作/语言奖励分
		JSONArray question5_JSONArray = (JSONArray)jsonMain.get("question5");
		int worktime = worktime(question5_JSONArray);//工作时间
		if(enCLB >= 7 && worktime>=1 && worktime <3) {
			otherCount2 = 13;
		}else if(enCLB >= 7 &&  worktime >= 3) {
			otherCount2 = 25;
		}else if(enCLB >= 9 && worktime>=1 && worktime <3) {
			otherCount2 = 25;
		}else if(enCLB >= 9 && worktime >= 3) {
			otherCount2 = 50;
		}
		//双语言奖励分
		int frCLB = getMinNumber(frenchCLBLevelMain);
		if(enCLB <= 4 && frCLB >= 7) {
			otherCount3 = 15;
		}else if(enCLB >= 5 && frCLB >= 7) {
			otherCount3 = 30;
		}
		//额外总加分
		otherCount = otherCount1 + otherCount2 + otherCount3;
		
		//额外加分算法 end		
		
		//总得分
		count = ageCount + certificateCount + languageScore + otherCount;
		scoreJson.put("titleScore", count);//总得分
		scoreJson.put("question2MainScore", ageCountMain);//第二题主年龄得分
		scoreJson.put("question4MainScore", certificateCountMain);//第四题主学历得分
		scoreJson.put("question4AssiScore", certificateCountAssi);//第四题副学历得分
		scoreJson.put("question67AssiScore", languageScore);//语言得分
//		scoreJson.put("question6MainScore", languegeOneCountMain);//第六题主语言1得分
//		scoreJson.put("question6AssiScore", languegeOneCountAssi);//第六题副语言1得分
//		scoreJson.put("question7MainScore", languegeTwoCountMain);//第七题主语言2得分
		scoreJson.put("englishCLBMain", englishCLBLevelMain);//主英语clb等级
		scoreJson.put("englishCLBAssi", englishCLBLevelAssi);//副英语clb等级
		scoreJson.put("frenchCLBMain", frenchCLBLevelMain);//主法语clb等级
		scoreJson.put("frenchCLBAssi", frenchCLBLevelAssi);//副法语clb等级
		scoreJson.put("otherScore", otherCount);//额外得分
		scoreJson.put("firstLanguage", firstLanguage);//主语言
		return scoreJson;
	}
	
	/**
	 * EE 无伴侣语言分数算法
	 * @param string fisrtLanguage
	 * @param int[] 第一语言clb
	 * @param int[] 第二语言clb
	 * @return JSONObject
	 * @throws Exception
	 */
	public JSONObject languageScoreNone(int[] firstCLBLevel,int[] secondCLBLevel) throws Exception {
		JSONObject jsonObj = new JSONObject();
		int languageScore = 0;//语言总得分
		int languegeOneCount = 0;//语言1得分
		int languegeOnelisteningCount = 0;//语言1听得分
		int languegeOnespeakingCount = 0;//语言1说得分
		int languegeOnereadingCount = 0;//语言1读得分
		int languegeOnewritingCount = 0;//语言1写得分
		int languegeTwoCount = 0;//语言2得分
		int languegeTwolisteningCount = 0;//语言2听得分
		int languegeTwospeakingCount = 0;//语言2说得分
		int languegeTworeadingCount = 0;//语言2读得分
		int languegeTwowritingCount = 0;//语言2写得分
		
		int listeningCLB = firstCLBLevel[0];//听
		int speakingCLB = firstCLBLevel[1];//说
		int readingCLB = firstCLBLevel[2];//读
		int writingCLB = firstCLBLevel[3];//写
		
		//听得分
		if(listeningCLB == 7) {
			languegeOnelisteningCount = 17;
		}else if(listeningCLB == 8) {
			languegeOnelisteningCount = 23;
		}else if(listeningCLB == 9) {
			languegeOnelisteningCount = 31;
		}else if(listeningCLB == 10) {
			languegeOnelisteningCount = 34;
		}else {
			languegeOnelisteningCount = 0;
		}
		
		//说得分
		if(speakingCLB == 7) {
			languegeOnespeakingCount = 17;
		}else if(speakingCLB == 8) {
			languegeOnespeakingCount = 23;
		}else if(speakingCLB == 9) {
			languegeOnespeakingCount = 31;
		}else if(speakingCLB == 10) {
			languegeOnespeakingCount = 34;
		}else {
			languegeOnespeakingCount = 0;
		}
		
		//读得分
		if(readingCLB == 7) {
			languegeOnereadingCount = 17;
		}else if(readingCLB == 8) {
			languegeOnereadingCount = 23;
		}else if(readingCLB == 9) {
			languegeOnereadingCount = 31;
		}else if(readingCLB == 10) {
			languegeOnereadingCount = 34;
		}else {
			languegeOnereadingCount = 0;
		}
		
		//写得分
		if(writingCLB == 7) {
			languegeOnewritingCount = 17;
		}else if(writingCLB == 8) {
			languegeOnewritingCount = 23;
		}else if(writingCLB == 9) {
			languegeOnewritingCount = 31;
		}else if(writingCLB == 10) {
			languegeOnewritingCount = 34;
		}else {
			languegeOnewritingCount = 0;
		}
		
		//语言1 得分
		languegeOneCount = languegeOnelisteningCount + languegeOnespeakingCount + languegeOnereadingCount + languegeOnewritingCount;
		//英语CLB end
		
		//法语CLB  start
		int flisteningCLB = secondCLBLevel[0];//听
		int fspeakingCLB = secondCLBLevel[1];//说
		int freadingCLB = secondCLBLevel[2];//读
		int fwritingCLB = secondCLBLevel[3];//写
		//听
		if(flisteningCLB == 5 || flisteningCLB == 6) {
			languegeTwolisteningCount = 1;
		}else if(flisteningCLB == 7 || flisteningCLB == 8) {
			languegeTwolisteningCount = 3;
		}else if(flisteningCLB == 9 || flisteningCLB == 10) {
			languegeTwolisteningCount = 6;
		}else {
			languegeTwolisteningCount = 0;
		}
		
		//说
		if(fspeakingCLB == 5 || fspeakingCLB == 6) {
			languegeTwospeakingCount = 1;
		}else if(fspeakingCLB == 7 || fspeakingCLB == 8) {
			languegeTwospeakingCount = 3;
		}else if(fspeakingCLB == 9 || fspeakingCLB == 10) {
			languegeTwospeakingCount = 6;
		}else {
			languegeTwospeakingCount = 0;
		}
		
		//读
		if(freadingCLB == 5 || freadingCLB == 6) {
			languegeTworeadingCount = 1;
		}else if(freadingCLB == 7 || freadingCLB == 8) {
			languegeTworeadingCount = 3;
		}else if(freadingCLB == 9 || freadingCLB == 10) {
			languegeTworeadingCount = 6;
		}else {
			languegeTworeadingCount = 0;
		}
		
		//写
		if(fwritingCLB == 5 || fwritingCLB == 6) {
			languegeTwowritingCount = 1;
		}else if(fwritingCLB == 7 || fwritingCLB == 8) {
			languegeTwowritingCount = 3;
		}else if(fwritingCLB == 9 || fwritingCLB == 10) {
			languegeTwowritingCount = 6;
		}else {
			languegeTwowritingCount = 0;
		}
		//语言2得分
		languegeTwoCount = languegeTwolisteningCount + languegeTwospeakingCount + languegeTworeadingCount + languegeTwowritingCount;
		//法语CLB  end
		
		//语言总得分
		languageScore = languegeOneCount + languegeTwoCount;
		jsonObj.put("languageScore", languageScore);//语言总得分
		jsonObj.put("languegeOneCount", languegeOneCount);//语言1总得分
		jsonObj.put("languegeTwoCount", languegeTwoCount);//语言2总得分
		return jsonObj;
	}
	
	/**
	 * EE 无伴侣可提升分数算法
	 * @param string 主语言
	 * @param int[] 英语clb
	 * @param int[] 法语clb
	 * @param int 语言分数
	 * @return int 可提升分数
	 * @throws Exception
	 */
	public int raiseScoreNone(String fisrtLanguage,int languageScore,int[] englistCLB,int[] frenchCLB) throws Exception {
		int raiseScore = 0;
		int enL = englistCLB[0];//英语听
		int enS = englistCLB[1];//英语说
		int enR = englistCLB[2];//英语读
		int enW = englistCLB[3];//英语写
		int frL = frenchCLB[0];//法语听
		int frS = frenchCLB[1];//法语听
		int frR = frenchCLB[2];//法语听
		int frW = frenchCLB[3];//法语听
		if("french".equals(fisrtLanguage)) {
			//主申第一语言为法语  主申法语增加1档  
			frL = ((frL+1)>10)?10:(frL+1);
			frS = ((frS+1)>10)?10:(frS+1);
			frR = ((frR+1)>10)?10:(frR+1);
			frW = ((frW+1)>10)?10:(frW+1);
			int[] newFrenchCLB = {frL,frS,frR,frW}; 
			//调用无伴侣语言算法
			JSONObject languageScoreJsonNor = languageScoreNone(newFrenchCLB, englistCLB);
			int reComputeScoreNor = StaticMethod.nullObject2int(languageScoreJsonNor.get("languageScore"));
			JSONObject languageScoreJsonVerb = languageScoreNone(englistCLB, newFrenchCLB);
			int reComputeScoreVerb = StaticMethod.nullObject2int(languageScoreJsonVerb.get("languageScore"));
			
			//可提升的分数
			if((reComputeScoreNor - reComputeScoreVerb) > 0) {
				raiseScore = reComputeScoreNor - languageScore;
			}else {
				raiseScore = reComputeScoreVerb - languageScore;
			}
			
		}else {
			//主申第一语言是英语 英语增加2档
			enL = ((enL+2)>10)?10:(frL+2);
			enS = ((enS+2)>10)?10:(enS+2);
			enR = ((enR+2)>10)?10:(enR+2);
			enW = ((enW+2)>10)?10:(enW+2);
			int[] newEnglishCLb = {enL,enS,enR,enW};
			//调用无伴侣语言算法
			JSONObject languageScoreJsonNor = languageScoreNone(newEnglishCLb, frenchCLB);
			int reComputeScoreNor = StaticMethod.nullObject2int(languageScoreJsonNor.get("languageScore"));
			JSONObject languageScoreJsonVerb = languageScoreNone(frenchCLB, newEnglishCLb);
			int reComputeScoreVerb = StaticMethod.nullObject2int(languageScoreJsonVerb.get("languageScore"));
			
			//可提升的分数
			if((reComputeScoreNor - reComputeScoreVerb) > 0) {
				raiseScore = reComputeScoreNor - languageScore;
			}else {
				raiseScore = reComputeScoreVerb - languageScore;
			}
		}
		return raiseScore;
	}
	
	
	/**
	 * EE 有伴侣语言分数算法
	 * @param string fisrtLanguage
	 * @param int[] 第一语言clb
	 * @param int[] 第二语言clb
	 * @return JSONObject
	 * @throws Exception
	 */
	public JSONObject languageScoreHave(int[] firstCLBMainLevel,int[] firstCLBAssiLevel,int[] secondCLBMainLevel) throws Exception {
		
		JSONObject jsonObj = new JSONObject();
		int languageScore = 0;//语言总得分
		int languegeOneCount = 0;//语言1得分
		int languegeOneCountMain = 0;//语言1主得分
		int languegeOneCountAssi = 0;//语言1主得分
		int languegeOnelisteningCountMain = 0;//语言1主听得分
		int languegeOnespeakingCountMain = 0;//语言1主说得分
		int languegeOnereadingCountMain = 0;//语言1主读得分
		int languegeOnewritingCountMain = 0;//语言1主写得分
		int languegeOnelisteningCountAssi = 0;//语言1副听得分
		int languegeOnespeakingCountAssi = 0;//语言1副说得分
		int languegeOnereadingCountAssi = 0;//语言1副读得分
		int languegeOnewritingCountAssi = 0;//语言1副写得分
		int languegeTwoCount = 0;//语言2得分
		int languegeTwoCountMain = 0;//语言2主得分
		int languegeTwoCountAssi = 0;//语言2副得分
		int languegeTwolisteningCountMain = 0;//语言2主听得分
		int languegeTwospeakingCountMain = 0;//语言2主说得分
		int languegeTworeadingCountMain = 0;//语言2主读得分
		int languegeTwowritingCountMain = 0;//语言2主写得分
		int languegeTwolisteningCountAssi = 0;//语言2副听得分
		int languegeTwospeakingCountAssi = 0;//语言2副说得分
		int languegeTworeadingCountAssi = 0;//语言2副读得分
		int languegeTwowritingCountAssi = 0;//语言2副写得分
		
		//英语CLB start
		//第一语言算法
		int listeningCLBMain = firstCLBMainLevel[0];//听
		int speakingCLBMain = firstCLBMainLevel[1];//说
		int readingCLBMain = firstCLBMainLevel[2];//读
		int writingCLBMain = firstCLBMainLevel[3];//写
		
		//听得分
		if(listeningCLBMain == 7) {
			languegeOnelisteningCountMain = 16;
		}else if(listeningCLBMain == 8) {
			languegeOnelisteningCountMain = 22;
		}else if(listeningCLBMain == 9) {
			languegeOnelisteningCountMain = 29;
		}else if(listeningCLBMain == 10) {
			languegeOnelisteningCountMain = 32;
		}else {
			languegeOnelisteningCountMain = 0;
		}
		
		//说得分
		if(speakingCLBMain == 7) {
			languegeOnespeakingCountMain = 16;
		}else if(speakingCLBMain == 8) {
			languegeOnespeakingCountMain = 22;
		}else if(speakingCLBMain == 9) {
			languegeOnespeakingCountMain = 29;
		}else if(speakingCLBMain == 10) {
			languegeOnespeakingCountMain = 32;
		}
		
		//读得分
		if(readingCLBMain == 7) {
			languegeOnereadingCountMain = 16;
		}else if(readingCLBMain == 8) {
			languegeOnereadingCountMain = 22;
		}else if(readingCLBMain == 9) {
			languegeOnereadingCountMain = 29;
		}else if(readingCLBMain == 10) {
			languegeOnereadingCountMain = 32;
		}
		
		//写得分
		if(writingCLBMain == 7) {
			languegeOnewritingCountMain = 16;
		}else if(writingCLBMain == 8) {
			languegeOnewritingCountMain = 22;
		}else if(writingCLBMain == 9) {
			languegeOnewritingCountMain = 29;
		}else if(writingCLBMain == 10) {
			languegeOnewritingCountMain = 32;
		}
		
		//语言1主得分
		languegeOneCountMain = languegeOnelisteningCountMain + languegeOnespeakingCountMain + languegeOnereadingCountMain + languegeOnewritingCountMain;

		//副
		int listeningCLBAssi = firstCLBAssiLevel[0];//听
		int speakingCLBAssi = firstCLBAssiLevel[1];//说
		int readingCLBAssi = firstCLBAssiLevel[2];//读
		int writingCLBAssi = firstCLBAssiLevel[3];//写

		//听得分
		if(listeningCLBAssi == 5 || listeningCLBAssi == 6) {
			languegeOnelisteningCountAssi = 1;
		}else if(listeningCLBAssi == 7 || listeningCLBAssi == 8) {
			languegeOnelisteningCountAssi = 3;
		}else if(listeningCLBAssi == 9 || listeningCLBAssi == 10) {
			languegeOnelisteningCountAssi = 5;
		}else {
			languegeOnelisteningCountAssi = 0;
		}
		
		//说得分
		if(speakingCLBAssi == 5 || speakingCLBAssi == 6) {
			languegeOnespeakingCountAssi = 1;
		}else if(speakingCLBAssi == 7 || speakingCLBAssi == 8) {
			languegeOnespeakingCountAssi = 3;
		}else if(speakingCLBAssi == 9 || speakingCLBAssi == 10) {
			languegeOnespeakingCountAssi = 5;
		}else {
			languegeOnespeakingCountAssi = 0;
		}
		
		//读得分
		if(readingCLBAssi == 5 || readingCLBAssi == 6) {
			languegeOnereadingCountAssi = 1;
		}else if(readingCLBAssi == 7 || readingCLBAssi == 8) {
			languegeOnereadingCountAssi = 3;
		}else if(readingCLBAssi == 9 || readingCLBAssi == 10) {
			languegeOnereadingCountAssi = 5;
		}else {
			languegeOnereadingCountAssi = 0;
		}	
		
		//写得分
		if(writingCLBAssi == 5 || writingCLBAssi == 6) {
			languegeOnewritingCountAssi = 1;
		}else if(writingCLBAssi == 7 || writingCLBAssi == 8) {
			languegeOnewritingCountAssi = 3;
		}else if(writingCLBAssi == 9 || writingCLBAssi == 10) {
			languegeOnewritingCountAssi = 5;
		}else {
			languegeOnewritingCountAssi = 0;
		}			
		
		//语言1副得分
		languegeOneCountAssi = languegeOnelisteningCountMain + languegeOnespeakingCountMain + languegeOnereadingCountMain + languegeOnewritingCountMain;

		//语言1 得分
		languegeOneCount = languegeOneCountMain + languegeOneCountAssi;
		//英语CLB end		
		
		//法语CLB start 只考虑主申
		int flisteningCLB = secondCLBMainLevel[0];//听
		int fspeakingCLB = secondCLBMainLevel[1];//说
		int freadingCLB = secondCLBMainLevel[2];//读
		int fwritingCLB = secondCLBMainLevel[3];//写
		
		//听
		if(flisteningCLB == 5 || flisteningCLB == 6) {
			languegeTwolisteningCountMain = 1;
		}else if(flisteningCLB == 7 || flisteningCLB == 8) {
			languegeTwolisteningCountMain = 3;
		}else if(flisteningCLB == 9 || flisteningCLB == 10) {
			languegeTwolisteningCountMain = 6;
		}else {
			languegeTwolisteningCountMain = 0;
		}
		
		//说
		if(fspeakingCLB == 5 || fspeakingCLB == 6) {
			languegeTwolisteningCountMain = 1;
		}else if(fspeakingCLB == 7 || fspeakingCLB == 8) {
			languegeTwolisteningCountMain = 3;
		}else if(fspeakingCLB == 9 || fspeakingCLB == 10) {
			languegeTwolisteningCountMain = 6;
		}else {
			languegeTwolisteningCountMain = 0;
		}
		
		//读
		if(freadingCLB == 5 || freadingCLB == 6) {
			languegeTwolisteningCountMain = 1;
		}else if(freadingCLB == 7 || freadingCLB == 8) {
			languegeTwolisteningCountMain = 3;
		}else if(freadingCLB == 9 || freadingCLB == 10) {
			languegeTwolisteningCountMain = 6;
		}else {
			languegeTwolisteningCountMain = 0;
		}
		
		//写
		if(fwritingCLB == 5 || fwritingCLB == 6) {
			languegeTwolisteningCountMain = 1;
		}else if(fwritingCLB == 7 || fwritingCLB == 8) {
			languegeTwolisteningCountMain = 3;
		}else if(fwritingCLB == 9 || fwritingCLB == 10) {
			languegeTwolisteningCountMain = 6;
		}else {
			languegeTwolisteningCountMain = 0;
		}
		
		//语言2的主得分
		languegeTwoCountMain = languegeTwolisteningCountMain + languegeTwolisteningCountMain + languegeTwolisteningCountMain + languegeTwolisteningCountMain;
		
		//语言2的总得分
		languegeTwoCount = languegeTwoCountMain + languegeTwoCountAssi;
		//法语CLB end
		
		//语言总得分
		languageScore = languegeOneCount + languegeTwoCountMain;
		jsonObj.put("languageScore", languageScore);//语言总得分
		jsonObj.put("languegeOneCount", languegeOneCount);//语言1总得分
		jsonObj.put("languegeTwoCount", languegeTwoCount);//语言2总得分
		return jsonObj;
	}
	
	/**
	 * EE 有伴侣可提升分数算法
	 * @param string fisrtLanguage
	 * @param int[]
	 * @param int[]
	 * @return int
	 * @throws Exception
	 */
	public int raiseScoreHave(String fisrtLanguage,int languageScore,int[] englistCLBMain,int[] englistCLBAssi,int[] frenchCLBMain,int[] frenchCLBAssi) throws Exception {
		int raiseScore = 0;
		int enLMain = englistCLBMain[0];//主英语听
		int enSMain = englistCLBMain[1];//主英语说
		int enRMain = englistCLBMain[2];//主英语读
		int enWMain = englistCLBMain[3];//主英语写
		int enLAssi = englistCLBAssi[0];//副英语听
		int enSAssi = englistCLBAssi[1];//副英语说
		int enRAssi = englistCLBAssi[2];//副英语读
		int enWAssi = englistCLBAssi[3];//副英语写
		int frLMain = frenchCLBMain[0];//主法语听
		int frSMain = frenchCLBMain[1];//主法语听
		int frRMain = frenchCLBMain[2];//主法语听
		int frWMain = frenchCLBMain[3];//主法语听
		int frLAssi = frenchCLBAssi[0];//副法语听
		int frSAssi = frenchCLBAssi[1];//副法语听
		int frRAssi = frenchCLBAssi[2];//副法语听
		int frWAssi = frenchCLBAssi[3];//副法语听
		boolean enAssiBlank = ((enLAssi == 3) && (enSAssi == 3) && (enRAssi == 3) && (enWAssi == 3));//副申英语没填
		boolean frAssiBlank = ((frLAssi == 2) && (frSAssi == 2) && (frRAssi == 2) && (frWAssi == 2));//副申法语没填
		
		if("french".equals(fisrtLanguage)) {
			//法语为主语言
			//主申法语增加1档
			frLMain = ((frLMain+1)>10)?10:(frLMain+1);
			frSMain = ((frSMain+1)>10)?10:(frSMain+1);
			frRMain = ((frRMain+1)>10)?10:(frRMain+1);
			frWMain = ((frWMain+1)>10)?10:(frWMain+1);
			int[] newFrenchCLBMain = {frLMain,frSMain,frRMain,frWMain};
			
			//副申判断 
			if(enAssiBlank && frAssiBlank) {
				//副申语言没填不会 英语加2档
				int[] newEnglistCLBAssi = {5,5,5,5};
				
				JSONObject languageScoreJsonNor = languageScoreHave(newFrenchCLBMain, frenchCLBAssi, englistCLBMain);
				int reComputeScoreNor = StaticMethod.nullObject2int(languageScoreJsonNor.get("languageScore"));
				JSONObject languageScoreJsonVerb = languageScoreHave(englistCLBMain, newEnglistCLBAssi, newFrenchCLBMain);
				int reComputeScoreVerb = StaticMethod.nullObject2int(languageScoreJsonVerb.get("languageScore"));
				
				//可提升的分数
				if((reComputeScoreNor - reComputeScoreVerb) > 0) {
					raiseScore = reComputeScoreNor - languageScore;
				}else {
					raiseScore = reComputeScoreVerb - languageScore;
				}
			}else if(frAssiBlank && !enAssiBlank) {
				//副申法语不会 英语加2档
				enLAssi = ((enLAssi+2)>10)?10:(enLAssi+2);
				enSAssi = ((enSAssi+2)>10)?10:(enSAssi+2);
				enRAssi = ((enRAssi+2)>10)?10:(enRAssi+2);
				enWAssi = ((enWAssi+2)>10)?10:(enWAssi+2);
				int[] newEnglistCLBAssi = {enLAssi,enSAssi,enRAssi,enWAssi};
				
				JSONObject languageScoreJsonNor = languageScoreHave(newFrenchCLBMain, frenchCLBAssi, englistCLBMain);
				int reComputeScoreNor = StaticMethod.nullObject2int(languageScoreJsonNor.get("languageScore"));
				JSONObject languageScoreJsonVerb = languageScoreHave(englistCLBMain, newEnglistCLBAssi, newFrenchCLBMain);
				int reComputeScoreVerb = StaticMethod.nullObject2int(languageScoreJsonVerb.get("languageScore"));
				
				//可提升的分数
				if((reComputeScoreNor - reComputeScoreVerb) > 0) {
					raiseScore = reComputeScoreNor - languageScore;
				}else {
					raiseScore = reComputeScoreVerb - languageScore;
				}
				
			}else if((!enAssiBlank && !frAssiBlank) || (enAssiBlank && !frAssiBlank)) {
				//副申英法都会，或只填了法语；英语增2档 or 法语增1档孰高
				
				enLAssi = ((enLAssi+2)>10)?10:(enLAssi+2);
				enSAssi = ((enSAssi+2)>10)?10:(enSAssi+2);
				enRAssi = ((enRAssi+2)>10)?10:(enRAssi+2);
				enWAssi = ((enWAssi+2)>10)?10:(enWAssi+2);
				int[] newEnglistCLBAssi = {enLAssi,enSAssi,enRAssi,enWAssi};
				
				JSONObject languageScoreJsonNor = languageScoreHave(newFrenchCLBMain, frenchCLBAssi, englistCLBMain);
				int reComputeScoreNor = StaticMethod.nullObject2int(languageScoreJsonNor.get("languageScore"));
				JSONObject languageScoreJsonVerb = languageScoreHave(englistCLBMain, newEnglistCLBAssi, newFrenchCLBMain);
				int reComputeScoreVerb = StaticMethod.nullObject2int(languageScoreJsonVerb.get("languageScore"));
				
				//可提升的分数
				if((reComputeScoreNor - reComputeScoreVerb) > 0) {
					raiseScore = reComputeScoreNor - languageScore;
				}else {
					raiseScore = reComputeScoreVerb - languageScore;
				}
				
				
				frLAssi = ((frLAssi+1)>10)?10:(frLAssi+1);
				frSAssi = ((frSAssi+1)>10)?10:(frSAssi+1);
				frRAssi = ((frRAssi+1)>10)?10:(frRAssi+1);
				frWAssi = ((frWAssi+1)>10)?10:(frWAssi+1);
				int[] newFrenchCLBAssi = {frLAssi,frSAssi,frRAssi,frWAssi};
				
				JSONObject languageScoreJsonNors = languageScoreHave(newFrenchCLBMain, newFrenchCLBAssi, englistCLBMain);
				int reComputeScoreNors = StaticMethod.nullObject2int(languageScoreJsonNors.get("languageScore"));
				JSONObject languageScoreJsonVerbs = languageScoreHave(englistCLBMain, englistCLBAssi, newFrenchCLBMain);
				int reComputeScoreVerbs = StaticMethod.nullObject2int(languageScoreJsonVerbs.get("languageScore"));
				
				int raiseScores = 0;
				//可提升的分数
				if((reComputeScoreNors - reComputeScoreVerbs) > 0) {
					raiseScores = reComputeScoreNors - languageScore;
				}else {
					raiseScores = reComputeScoreVerbs - languageScore;
				}
				
				if(raiseScores > raiseScore) {
					raiseScore = raiseScores;
				}
				
			}

		}else {
			//英语为主语言
			//主申英语增加2档
			enLMain = ((enLMain+2)>10)?10:(enLMain+2);
			enSMain = ((enSMain+2)>10)?10:(enSMain+2);
			enRMain = ((enRMain+2)>10)?10:(enRMain+2);
			enWMain = ((enWMain+2)>10)?10:(enWMain+2);
			int[] newEnglistCLBMain = {enLMain,enSMain,enRMain,enWMain};
			
			//副申判断 
			if(enAssiBlank && frAssiBlank) {
				//副申语言没填不会 英语加2档
				int[] newEnglistCLBAssi = {5,5,5,5};
				
				JSONObject languageScoreJsonNor = languageScoreHave(newEnglistCLBMain, newEnglistCLBAssi, frenchCLBMain);
				int reComputeScoreNor = StaticMethod.nullObject2int(languageScoreJsonNor.get("languageScore"));
				JSONObject languageScoreJsonVerb = languageScoreHave(frenchCLBMain, frenchCLBAssi, newEnglistCLBMain);
				int reComputeScoreVerb = StaticMethod.nullObject2int(languageScoreJsonVerb.get("languageScore"));
				
				//可提升的分数
				if((reComputeScoreNor - reComputeScoreVerb) > 0) {
					raiseScore = reComputeScoreNor - languageScore;
				}else {
					raiseScore = reComputeScoreVerb - languageScore;
				}
			}else if(frAssiBlank && !enAssiBlank) {
				//副申法语不会 英语加2档
				enLAssi = ((enLAssi+2)>10)?10:(enLAssi+2);
				enSAssi = ((enSAssi+2)>10)?10:(enSAssi+2);
				enRAssi = ((enRAssi+2)>10)?10:(enRAssi+2);
				enWAssi = ((enWAssi+2)>10)?10:(enWAssi+2);
				int[] newEnglistCLBAssi = {enLAssi,enSAssi,enRAssi,enWAssi};
				
				JSONObject languageScoreJsonNor = languageScoreHave(newEnglistCLBMain, newEnglistCLBAssi, frenchCLBMain);
				int reComputeScoreNor = StaticMethod.nullObject2int(languageScoreJsonNor.get("languageScore"));
				JSONObject languageScoreJsonVerb = languageScoreHave(frenchCLBMain, frenchCLBAssi, newEnglistCLBMain);
				int reComputeScoreVerb = StaticMethod.nullObject2int(languageScoreJsonVerb.get("languageScore"));
				
				//可提升的分数
				if((reComputeScoreNor - reComputeScoreVerb) > 0) {
					raiseScore = reComputeScoreNor - languageScore;
				}else {
					raiseScore = reComputeScoreVerb - languageScore;
				}
				
			}else if((!enAssiBlank && !frAssiBlank) || (enAssiBlank && !frAssiBlank)) {
				//副申英法都会，或只填了法语；英语增2档 or 法语增1档孰高
				
				enLAssi = ((enLAssi+2)>10)?10:(enLAssi+2);
				enSAssi = ((enSAssi+2)>10)?10:(enSAssi+2);
				enRAssi = ((enRAssi+2)>10)?10:(enRAssi+2);
				enWAssi = ((enWAssi+2)>10)?10:(enWAssi+2);
				int[] newEnglistCLBAssi = {enLAssi,enSAssi,enRAssi,enWAssi};
				
				JSONObject languageScoreJsonNor = languageScoreHave(newEnglistCLBMain, newEnglistCLBAssi, frenchCLBMain);
				int reComputeScoreNor = StaticMethod.nullObject2int(languageScoreJsonNor.get("languageScore"));
				JSONObject languageScoreJsonVerb = languageScoreHave(frenchCLBMain, frenchCLBAssi, newEnglistCLBMain);
				int reComputeScoreVerb = StaticMethod.nullObject2int(languageScoreJsonVerb.get("languageScore"));
				
				//可提升的分数
				if((reComputeScoreNor - reComputeScoreVerb) > 0) {
					raiseScore = reComputeScoreNor - languageScore;
				}else {
					raiseScore = reComputeScoreVerb - languageScore;
				}
				
				
				frLAssi = ((frLAssi+1)>10)?10:(frLAssi+1);
				frSAssi = ((frSAssi+1)>10)?10:(frSAssi+1);
				frRAssi = ((frRAssi+1)>10)?10:(frRAssi+1);
				frWAssi = ((frWAssi+1)>10)?10:(frWAssi+1);
				int[] newFrenchCLBAssi = {frLAssi,frSAssi,frRAssi,frWAssi};
				
				JSONObject languageScoreJsonNors = languageScoreHave(newEnglistCLBMain, englistCLBAssi, frenchCLBMain);
				int reComputeScoreNors = StaticMethod.nullObject2int(languageScoreJsonNors.get("languageScore"));
				JSONObject languageScoreJsonVerbs = languageScoreHave(frenchCLBMain, newFrenchCLBAssi, newEnglistCLBMain);
				int reComputeScoreVerbs = StaticMethod.nullObject2int(languageScoreJsonVerbs.get("languageScore"));
				
				int raiseScores = 0;
				//可提升的分数
				if((reComputeScoreNors - reComputeScoreVerbs) > 0) {
					raiseScores = reComputeScoreNors - languageScore;
				}else {
					raiseScores = reComputeScoreVerbs - languageScore;
				}
				
				if(raiseScores > raiseScore) {
					raiseScore = raiseScores;
				}
			}
		}
		return raiseScore;
	}
	
	
	/**
	 * 第一语言未达标提示语获取
	 * @param String 第一语言
	 * @param int 英语CLB
	 * @param int 法语CLB
	 * @return String 提示语
	 * @throws Exception
	 */
	public String notStandardLanguage(String firstLanguage,int[] englishCLB,int[] frenchCLB) throws Exception {
		String tips = "请注意，您的语言未满足移民最低要求，此评估结果将未满足要求的单项简计0分得出。为满足实际申请要求，您的";
		boolean overFlag = false;
		if("french".equals(firstLanguage)) {
			if(frenchCLB[0] < 7) {
				tips = tips + "法语listening至少达到中等，";
				overFlag = true;
			}else if(frenchCLB[1] < 7) {
				tips = tips + "法语speaking至少达到中等，";
				overFlag = true;
			}else if(frenchCLB[2] < 7) {
				tips = tips + "法语reading至少达到中等，";
				overFlag = true;
			}else if(frenchCLB[3] < 7) {
				tips = tips + "法语writing至少达到中等。";
				overFlag = true;
			}
		}else {
			if(englishCLB[0] < 7) {
				tips = tips + "英语listening至少达到6分，";
				overFlag = true;
			}else if(englishCLB[1] < 7) {
				tips = tips + "英语speaking至少达到6分，";
				overFlag = true;
			}else if(englishCLB[2] < 7) {
				tips = tips + "英语reading至少达到6分，";
				overFlag = true;
			}else if(englishCLB[3] < 7) {
				tips = tips + "英语writing至少达到6分。";
				overFlag = true;
			}
		}
		//如果全都满足
		if(!overFlag) {
			tips = "";
		}
		return tips;
	}
	
	/**
	 * 阿安省雇主担保/BC（C类） 年龄部分
	 * @param int 年龄
	 * @return boolean
	 * @throws Exception
	 */
	public boolean extendProject37Question2(int age) throws Exception {
	    boolean ticket = false;
	    if(18 <= age && age <= 45) {
			ticket = true;
		}
	    return ticket;
	}
	
	/**
	 * 萨省 年龄部分
	 * @param int 年龄
	 * @return boolean
	 * @throws Exception
	 */
	public boolean extendProject5Question2(int age) throws Exception {
	    boolean ticket = false;
	    if(18 <= age && age <= 50) {
			ticket = true;
		}
	    return ticket;
	}
	
	/**
	 * 阿省雇主担保（熟练）/安省雇主担保/BC（C类） 学历部分
	 * @param string 学历
	 * @return boolean
	 * @throws Exception
	 */
	public boolean extendProject137Question4(String question4) throws Exception {
	    boolean ticket = true;
	    if("普通高中".equals(question4) || "职业高中".equals(question4) || "初中及以下".equals(question4)) {
			ticket = false;
		}
	    return ticket;
	}
	
	/**
	 * 阿省雇主担保（半熟练）/大西洋/萨省 学历部分
	 * @param string 学历
	 * @return boolean
	 * @throws Exception
	 */
	public boolean extendProject245Question4(String question4) throws Exception {
	    boolean ticket = true;
	    if("初中及以下".equals(question4)) {
			ticket = false;
		}
	    return ticket;
	}
	
	/**
	 * BC（B类） 学历部分
	 * @param string 学历
	 * @return boolean
	 * @throws Exception
	 */
	public boolean extendProject6Question4(String question4) throws Exception {
	    boolean ticket = true;
	    if("专科（文科）".equals(question4) || "专科（文科）".equals(question4) || "普通高中".equals(question4) || "职业高中".equals(question4) || "初中及以下".equals(question4)) {
			ticket = false;
		}
	    return ticket;
	}
	
	/**
	 * 阿省雇主担保（半熟练）/大西洋/萨省 工作部分
	 * @param jsonArray 工作部分jsonarray
	 * @return boolean
	 * @throws Exception
	 */
	public boolean extendProject1245Question5(JSONArray question5_JSONArray) throws Exception {
	    boolean ticket = false;
	    int yearNum = recentlyyearsWorktime(question5_JSONArray,5);
	    if(yearNum >= 1) {
	    		ticket = true;
	    }
	    return ticket;
	}
	
	/**
	 * 安省雇主担保 工作部分
	 * @param jsonArray 工作部分jsonarray
	 * @return boolean
	 * @throws Exception
	 */
	public boolean extendProject3Question5(JSONArray question5_JSONArray) throws Exception {
	    boolean ticket = false;
	    int yearNum = recentlyyearsWorktime(question5_JSONArray,5);
	    if(yearNum >= 2) {
	    		ticket = true;
	    }
	    return ticket;
	}
	
	/**
	 * BC（B类） 工作部分
	 * @param jsonArray 工作部分jsonarray
	 * @return boolean
	 * @throws Exception
	 */
	public boolean extendProject6Question5(JSONArray question5_JSONArray) throws Exception {
	    boolean ticket = false;
	    int yearNum = recentlyyearsWorktime(question5_JSONArray,5);
	    if(yearNum >= 3) {
	    		ticket = true;
	    }
	    return ticket;
	}
	
	/**
	 * 阿省雇主担保（半熟练）/大西洋/萨省/BC（C类） CLB
	 * @param jsonArray 工作部分jsonarray
	 * @return boolean
	 * @throws Exception
	 */
	public boolean extendProject2457uestion67(JSONObject question6_jsonObject,JSONObject question7_jsonObject) throws Exception {
	    boolean ticket = false;
	    int[] englishCLB = englishCLB(question6_jsonObject);
	    int enCLB = getMinNumber(englishCLB);
	    int[] frenchCLB = frenchCLB(question7_jsonObject);
	    int frCLB = getMinNumber(frenchCLB);
	    int[] resultArray = {enCLB,frCLB};
	    if(getMinNumber(resultArray) >= 4) {
	    		ticket = true;
	    }
	    return ticket;
	}
	
	/**
	 * BC（B类） CLB
	 * @param jsonArray 工作部分jsonarray
	 * @return boolean
	 * @throws Exception
	 */
	public boolean extendProject6uestion67(JSONObject question6_jsonObject,JSONObject question7_jsonObject) throws Exception {
	    boolean ticket = false;
	    int[] englishCLB = englishCLB(question6_jsonObject);
	    int enCLB = getMinNumber(englishCLB);
	    int[] frenchCLB = frenchCLB(question7_jsonObject);
	    int frCLB = getMinNumber(frenchCLB);
	    int[] resultArray = {enCLB,frCLB};
	    if(getMinNumber(resultArray) >= 5) {
	    		ticket = true;
	    }
	    return ticket;
	}

	/**
	 * 工作年限
	 * @param jsonArray 工作部分jsonarray
	 * @return int 
	 * @throws Exception
	 */
	public int worktime(JSONArray question5_JSONArray) throws Exception{
		int worktime = 0;
		long yearTime = 365*24*60*60*1000;//十年的毫秒数
		SimpleDateFormat	 sdf = new SimpleDateFormat("yyyy-MM");
		if(question5_JSONArray != null && question5_JSONArray.size() > 0) {
			for(int i=0;i<question5_JSONArray.size();i++) {
				int preNum = 0;
				JSONObject question5JSONObj = (JSONObject)question5_JSONArray.get(i);
				String time_quantum = StaticMethod.nullObject2String(question5JSONObj.get("time"));
				String startTimeStr =  time_quantum.split("至")[0];
				String endTimeStr = time_quantum.split("至")[1];
				long startTime = sdf.parse(startTimeStr).getTime();
				long endTime = sdf.parse(endTimeStr).getTime();
				preNum = (int) ((endTime - startTime)/yearTime);
				worktime += preNum;
			}
		}
		return worktime;
	}
	/**
	 * 最近几年工作年限
	 * @param jsonArray 工作部分jsonarray
	 * @param int 最近几年 5\6\10
	 * @return int 
	 * @throws Exception
	 */
	public int recentlyyearsWorktime(JSONArray question5_JSONArray,int recentLyyears) throws Exception {
	    int yearNum = 0;
	    Date nowDate = new Date();
	    SimpleDateFormat	 sdf = new SimpleDateFormat("yyyy-MM");
	    long fewYearTime = recentLyyears*365*24*60*60*1000;//几年的毫秒数
	    long tenYearTime = 10*365*24*60*60*1000;//十年的毫秒数
	    long fiveYearTime = 10*365*24*60*60*1000;//十年的毫秒数
	    if(question5_JSONArray != null && question5_JSONArray.size() > 0) {
			for(int i=0;i<question5_JSONArray.size();i++) {
				int preNum = 0;
				JSONObject question5JSONObj = (JSONObject)question5_JSONArray.get(i);
				String time_quantum = StaticMethod.nullObject2String(question5JSONObj.get("time"));
				String startTimeStr =  time_quantum.split("至")[0];
				String endTimeStr = time_quantum.split("至")[1];
				long startTime = sdf.parse(startTimeStr).getTime();
				long endTime = sdf.parse(endTimeStr).getTime();
				if(recentLyyears < 10) {
					//当前时间减去几年 为几年前毫秒数
					long fiveYearBefore = nowDate.getTime() - fewYearTime;
					//如果工作开始时间在几年前 结束时间在几年后 那么以结束时间减去前几年的毫秒数 就是近几年的工作年限毫秒数
					if(startTime <= fiveYearBefore && endTime >= fiveYearBefore) {
						preNum = (int) ((endTime-fiveYearBefore)/(365*24*60*60*1000));
					}
					//如果工作开始时间在前几年后  那么以结束时间减去开始时间就是工作年限毫秒数 
					if(startTime > fiveYearBefore) {
						preNum = (int) ((endTime-startTime)/(365*24*60*60*1000));
					}
				}else {
					//前十年的前五年 工作年限逻辑
					long tenYearBefore = nowDate.getTime() - tenYearTime;
					long fiveYearBefore = nowDate.getTime() - fiveYearTime;
					//如果开始时间小于等于十年前 结束时间大于等于5年前 那么结束时间减去十年前的毫秒数就是工作年限 也就是5年
					if(startTime <= tenYearBefore && endTime>=fiveYearBefore) {
						preNum = 5;
					}
					//如果开始时间小于等于十年前 结束时间小于5年前 那么结束时间减去 前十年的毫秒数 就是工作年限
					if(startTime <= tenYearBefore && endTime<fiveYearBefore) {
						preNum = (int) ((endTime-tenYearBefore)/(365*24*60*60*1000));
					}
					//如果开始时间大于十年前 结束时间大于五年前 那么五年前的毫秒数减去开始时间就是工作年限
					if(startTime > tenYearBefore && endTime > fiveYearBefore) {
						preNum = (int) ((fiveYearBefore-endTime)/(365*24*60*60*1000));
					}
					//如果开始时间大于十年前 结束时间小于五年前 那么结束时间减去开始时间就是工作年限
					if(startTime > tenYearBefore && endTime < fiveYearBefore) {
						preNum = (int) ((endTime - startTime)/(365*24*60*60*1000));
					}
				}
				//将工作年限相加
				yearNum += preNum;
			}
		}
	    return yearNum;
	}
	
	
	/**
	 * 工作类型
	 * @param jsonArray 工作部分jsonarray
	 * @return List 工作类型集合 
	 * @throws Exception
	 */
	public List workType(JSONArray question5_JSONArray) throws Exception {
		List<String> workTypeList = new ArrayList<String>();
		if(question5_JSONArray != null && question5_JSONArray.size() > 0) {
			for(int i=0;i<question5_JSONArray.size();i++) {
				JSONObject question5JSONObj = (JSONObject)question5_JSONArray.get(i);
				String profession = StaticMethod.nullObject2String(question5JSONObj.get("profession"));//工作类型
				workTypeList.add(profession);
			}
		}
		return workTypeList;
	}
	/**
	 * 英语clb
	 * @param jsonObject question6
	 * @return int array
	 * @throws Exception
	 */
	public int[] englishCLB(JSONObject question6) throws Exception {
	    int CLBL = 0;
	    int CLBS = 0;
	    int CLBR = 0;
	    int CLBW = 0;
	    int listening = StaticMethod.nullObject2int(question6.get("listening"));
	    int speaking = StaticMethod.nullObject2int(question6.get("speaking"));
	    int reading = StaticMethod.nullObject2int(question6.get("reading"));
	    int writing = StaticMethod.nullObject2int(question6.get("writing"));
	    //听CLB
	    if(listening == 8.5) {
	    	CLBL = 10;
	    }else if(listening == 8) {
	    	CLBL = 9;
	    }else if(listening == 7.5) {
	    	CLBL = 8;
	    }else if(listening >= 6 && listening < 7.5) {
	    	CLBL = 7;
	    }else if(listening == 5.5) {
	    	CLBL = 6;
	    }else if(listening == 5) {
	    	CLBL = 5;
	    }else if(listening == 4.5) {
	    	CLBL = 4;
	    }else {
	    	CLBL = 3;
	    }
	    //说CLB
	    if(speaking == 7.5) {
	    	CLBS = 10;
	    }else if(speaking == 7) {
	    	CLBS = 9;
	    }else if(speaking == 6.5) {
	    	CLBS = 8;
	    }else if(speaking == 6) {
	    	CLBS = 7;
	    }else if(speaking == 5.5) {
	    	CLBS = 6;
	    }else if(speaking == 5) {
	    	CLBS = 5;
	    }else if(speaking >= 4 && speaking < 5) {
	    	CLBS = 4;
	    }else {
	    	CLBS = 3;
	    }
	    //读CLB
	    if(reading == 8) {
	    	CLBR = 10;
	    }else if(reading >= 7 && reading < 8) {
	    	CLBR = 9;
	    }else if(reading == 6.5) {
	    	CLBR = 8;
	    }else if(reading == 6) {
	    	CLBR = 7;
	    }else if(reading >= 5 && reading < 6) {
	    	CLBR = 6;
	    }else if(reading >= 4 && reading < 5) {
	    	CLBR = 5;
	    }else if(reading == 3.5) {
	    	CLBR = 4;
	    }else {
	    	CLBR = 3;
	    }
	    //写CLB
	    if(writing == 7.5) {
	    	CLBW = 10;
	    }else if(writing == 7) {
	    	CLBW = 9;
	    }else if(writing == 6.5) {
	    	CLBW = 8;
	    }else if(writing == 6) {
	    	CLBW = 7;
	    }else if(writing == 5.5) {
	    	CLBW = 6;
	    }else if(writing == 5) {
	    	CLBW = 5;
	    }else if(writing >= 4 && writing < 5) {
	    	CLBW = 4;
	    }else {
	    	CLBW = 3;	
	    }
	    int[] array = {CLBL,CLBS,CLBR,CLBW};
	    return array;
	}
	
	/**
	 * 法语clb
	 * @param jsonObject question6
	 * @return boolean
	 * @throws Exception
	 */
	public int[] frenchCLB(JSONObject question7) throws Exception {
	    int CLBL = 0;
	    int CLBS = 0;
	    int CLBR = 0;
	    int CLBW = 0;
	    String listening = StaticMethod.nullObject2String(question7.get("listening"));
	    String speaking = StaticMethod.nullObject2String(question7.get("speaking"));
	    String reading = StaticMethod.nullObject2String(question7.get("reading"));
	    String writing = StaticMethod.nullObject2String(question7.get("writing"));
	    //听
	    if("高".equals(listening)) {
	    		CLBL = 10; 
	    }else if("中".equals(listening)){
	    		CLBL = 7; 
	    }else if("低".equals(listening)){
    			CLBL = 6; 
	    }else if("入门".equals(listening)){
			CLBL = 5; 
	    }else if("不会".equals(listening)){
			CLBL = 3; 
	    }else {
	    		CLBL = 2;
	    }
	    //说
	    if("高".equals(speaking)) {
	    	CLBS = 10; 
	    }else if("中".equals(speaking)){
	    	CLBS = 7; 
	    }else if("低".equals(speaking)){
	    	CLBS = 6; 
	    }else if("入门".equals(speaking)){
	    	CLBS = 5; 
	    }else if("不会".equals(speaking)){
	    	CLBS = 3; 
	    }else {
    		CLBL = 2;
	    }
	    //读
	    if("高".equals(reading)) {
	    	CLBR = 10; 
	    }else if("中".equals(reading)){
	    	CLBR = 7; 
	    }else if("低".equals(reading)){
	    	CLBR = 6; 
	    }else if("入门".equals(reading)){
	    	CLBR = 5; 
	    }else if("不会".equals(reading)){
	    	CLBR = 3; 
	    }else {
    		CLBL = 2;
	    }
	    //写
	    if("高".equals(writing)) {
	    	CLBR = 10; 
	    }else if("中".equals(writing)){
	    	CLBR = 7; 
	    }else if("低".equals(writing)){
	    	CLBR = 6; 
	    }else if("入门".equals(writing)){
	    	CLBR = 5; 
	    }else if("不会".equals(writing)){
	    	CLBR = 3; 
	    }else {
    		CLBL = 2;
	    }
	    int[] array = {CLBL,CLBS,CLBR,CLBW};
	    return array;
	}
	
	/**
	 * 取最小数字
	 * @param int 数组
	 * @return int 
	 * @throws Exception
	 */
	public int getMinNumber(int[] array) throws Exception{
		 int max=array[0],min=array[0];
		 for(int i=0;i<array.length;i++){
			 if(array[i]>max){
			  max=array[i];
			 }
		 }
		 for(int i=0;i<array.length;i++){
			 if(array[i]<min){
			  min=array[i];
			 }
		 }
		 return min;
	}


	/**
	 * NS省
	 */
	public JSONObject NSProject(JSONArray jsonArray) throws Exception {
		return NSutil.getNS(jsonArray);
	}


	/**
	 * SINP省
	 */
	public JSONObject SINPProject(JSONArray jsonArray) throws Exception {
		return SINPutil.getSPIN(jsonArray);
	}


	/**
	 * QSW省
	 */
	public JSONObject QSWProject(JSONArray jsonArray) throws Exception {
		return QSWutil.getQSW(jsonArray);
	}


	@Override
	public List getAllProfession() throws Exception {
		return markingOLMapper.getAllProfession();
	}
	
//	public static void main(String[] args) {
//		String jsonStr = "[{'question1':'无',"
//				+ "'question2':'25',"
//				+ "'question3':'A,B',"
//				+ "'question4':'博士',"
//				+ "'question5':'[{'profession':'制造业工程师、经理类','time':'2017-05至2018-04'},{'profession':'维 修/操作技师、技工类','time':'2016-05至2017-04'}]',"
//				+ "'question6':'{'listening':'5','speaking':'6','reading':'7','writing':'8'}',"
//				+ "'question7':'{'listening':'高','speaking':'中','reading':'低','writing':'不会'}',"
//				+ "'specialty':'[专业1,专业2,专业3]',"
//				+ "'learn':'是'}]";
//		JSONArray jsonArr = new JSONArray();
//		JSONObject json = new JSONObject();
//		json.put("question1", "无");
//		json.put("question2", "25");
//		json.put("question3", "A,B");
//		json.put("question4", "博士");
//		
//		JSONArray array = new JSONArray();
//		JSONObject jsonobj = new JSONObject();
//		jsonobj.put("profession", "制造业工程师、经理类");
//		jsonobj.put("time", "2017-05至2018-04");
//		array.add(jsonobj);
//		
//		JSONObject jsonobj1 = new JSONObject();
//		jsonobj1.put("profession", "维 修/操作技师、技工类");
//		jsonobj1.put("time", "2016-05至2017-04");
//		array.add(jsonobj);
//		
//		json.put("question5", array);
//		
//		JSONObject jsonobj2 = new JSONObject();
//		jsonobj2.put("listening", "5");
//		jsonobj2.put("speaking", "6");
//		jsonobj2.put("reading", "7");
//		jsonobj2.put("writing", "8");
//		
//		json.put("question6", jsonobj2);
//		
//		JSONObject jsonobj3 = new JSONObject();
//		jsonobj3.put("listening", "高");
//		jsonobj3.put("speaking", "中");
//		jsonobj3.put("reading", "低");
//		jsonobj3.put("writing", "不会");
//		
//		json.put("question7", jsonobj3);
//		
//		json.put("specialty", "[专业1,专业2,专业3]");
//		
//		json.put("learn", "是");
//		
//		JSONObject json1 = new JSONObject();
//		json1.put("question1", "无");
//		json1.put("question2", "25");
//		json1.put("question3", "A,B");
//		json1.put("question4", "博士");
//		
//		JSONArray array1 = new JSONArray();
//		JSONObject jsonobj12 = new JSONObject();
//		jsonobj1.put("profession", "制造业工程师、经理类");
//		jsonobj1.put("time", "2017-05至2018-04");
//		array1.add(jsonobj12);
//		
//		JSONObject jsonobj21 = new JSONObject();
//		jsonobj1.put("profession", "维 修/操作技师、技工类");
//		jsonobj1.put("time", "2016-05至2017-04");
//		array1.add(jsonobj21);
//		
//		json1.put("question5", array1);
//		
//		JSONObject jsonobj2 = new JSONObject();
//		jsonobj2.put("listening", "5");
//		jsonobj2.put("speaking", "6");
//		jsonobj2.put("reading", "7");
//		jsonobj2.put("writing", "8");
//		
//		json1.put("question6", jsonobj2);
//		
//		JSONObject jsonobj3 = new JSONObject();
//		jsonobj3.put("listening", "高");
//		jsonobj3.put("speaking", "中");
//		jsonobj3.put("reading", "低");
//		jsonobj3.put("writing", "不会");
//		
//		json1.put("question7", jsonobj3);
//		
//		json1.put("specialty", "[专业1,专业2,专业3]");
//		
//		json1.put("learn", "是");
//		
//		jsonArr.add(json1);
//		
//		MarkingOLServiceImpl impl = new MarkingOLServiceImpl();
//		
//		try {
//			JSONObject jsonObj = impl.EEProject(jsonArr);
//			
//			System.out.println(jsonObj);
//		} catch (Exception e) {
//			// TODO: handle exception
//			e.printStackTrace();
//		}
//	}

}
