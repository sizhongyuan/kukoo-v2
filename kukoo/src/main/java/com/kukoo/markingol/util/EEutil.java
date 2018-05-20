package com.kukoo.markingol.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.kukoo.base.util.StaticMethod;

public class EEutil {
	
	
	/**
	 *  获取EE省得分
	 * @param question
	 * @return
	 * @throws ParseException
	 */
	public static JSONObject getEE(JSONArray question) throws ParseException{
		JSONObject reJson = new JSONObject();//返回json
		reJson.put("projectName", "加拿大联邦技术移民");
		reJson.put("country", "加拿大");
		reJson.put("pass", 425);
		reJson.put("intro", "加拿大联邦技术移民项目是由加拿大联邦移民局直接受理的移民项目，联邦技术移民采用快速通道（Express Entry, 'EE'）系统进行申请，具有名额充沛、无职业限制、无加拿大境内居住地要求、审理速度快等优点，最快可在8个月内办理成功并登陆加拿大。 同时，从申请条件上对语言水平等条件要求较高，通常适合学历高，年纪轻，英语好的申请人。");
		reJson.put("capital", "5万");
		reJson.put("period", "3年");
		reJson.put("visaType", "PR");
		reJson.put("projectType", "技术移民");
		
		JSONObject questionPrimary = question.getJSONObject(0);//获取主申请人答题
		if("有".equals(StaticMethod.nullObject2String(questionPrimary.get("question1")))){//有配偶时才获取副申请
			JSONObject questionSecondary = question.getJSONObject(1);//获取副申请人答题
			JSONObject scorePrimary = getEEScoretoPrimary(questionPrimary);//正常主次主得分
			JSONObject scoreSecondary = getEEScoretoSecondary(questionSecondary);//正常主次副分
			JSONObject scorePrimary2 = getEEScoretoPrimary(questionSecondary);//主次交换主得分
			JSONObject scoreSecondary2 = getEEScoretoSecondary(questionPrimary);//主次交换副得分
			//正常主次未通过申请language
			if(scorePrimary.getIntValue("score")+scorePrimary.getIntValue("languageScore")+scorePrimary.getIntValue("otherCount")+scoreSecondary.getIntValue("score")+scoreSecondary.getIntValue("languageScore")<425){
				//主次交换是否通过
				if(scorePrimary2.getIntValue("score")+scorePrimary2.getIntValue("languageScore")+scorePrimary2.getIntValue("otherCount")+scoreSecondary2.getIntValue("score")+scoreSecondary2.getIntValue("languageScore")<425){
					//升档后是否通过
					if(scorePrimary.getIntValue("score")+scorePrimary.getIntValue("languageScoreUp")+scorePrimary.getIntValue("otherCount")+scoreSecondary.getIntValue("languageScoreUp")+scoreSecondary.getIntValue("score")<425){
						//主次交换后升档是否通过
						if(scorePrimary2.getIntValue("score")+scorePrimary2.getIntValue("languageScoreUp")+scorePrimary2.getIntValue("otherCount")+scoreSecondary2.getIntValue("score")+scoreSecondary2.getIntValue("languageScoreUp")<425){
							reJson.put("score", scorePrimary.getIntValue("score")+scorePrimary.getIntValue("languageScore")+scorePrimary.getIntValue("otherCount")+scoreSecondary.getIntValue("score")+scoreSecondary.getIntValue("languageScore"));
							//主申请人
							reJson.put("major", "配偶");
							//主申语言
							reJson.put("language", scorePrimary2.get("language"));
							//通过方式（绿手green||黄手yellow||未通过none）
							reJson.put("passType","none");
						}else{//通过
							//主申请人
							reJson.put("major", "配偶");
							//成绩
							reJson.put("score", scorePrimary2.getIntValue("score")+scorePrimary2.getIntValue("languageScore")+scorePrimary2.getIntValue("otherCount")+scoreSecondary2.getIntValue("score")+scoreSecondary2.getIntValue("languageScore"));
							//主申语言
							reJson.put("language", scorePrimary2.get("language"));
							//主申工作年限是否再0-1年  在为1 不在为0
							reJson.put("workYearFlag", scorePrimary2.getIntValue("workYearFlag"));//
							//是否升档 0：否
							reJson.put("ifUp",1);
							//是否交换主次 0：否
							reJson.put("ifSwap",1);
							//通过方式（绿手green||黄手yellow||未通过none）
							reJson.put("passType","yellow");
						}
					}else{
						//通过
						//通过方式（绿手green||黄手yellow||未通过none）
						reJson.put("passType","yellow");
						//主申请人
						reJson.put("major", "您");
						//成绩
						reJson.put("score", scorePrimary.getIntValue("score")+scorePrimary.getIntValue("languageScore")+scorePrimary.getIntValue("otherCount")+scoreSecondary.getIntValue("languageScore")+scoreSecondary.getIntValue("score"));
						//主申语言
						reJson.put("language", scorePrimary.get("language"));
						//主申工作年限是否再0-1年  在为1 不在为0
						reJson.put("workYearFlag", scorePrimary.getIntValue("workYearFlag"));//
						//是否升档 0：否
						reJson.put("ifUp",1);
						//是否交换主次 0：否
						reJson.put("ifSwap",0);
					}
				}else{
					//通过
					//通过方式（绿手green||黄手yellow||未通过none）
					reJson.put("passType","green");
					//主申请人
					reJson.put("major", "配偶");
					//成绩
					reJson.put("score", scorePrimary2.getIntValue("score")+scorePrimary2.getIntValue("languageScore")+scorePrimary2.getIntValue("otherCount")+scoreSecondary2.getIntValue("score")+scoreSecondary2.getIntValue("languageScore"));
					//主申语言
					reJson.put("language", scorePrimary2.get("language"));
					//主申工作年限是否再0-1年  在为1 不在为0
					reJson.put("workYearFlag", scorePrimary2.getIntValue("workYearFlag"));//
					//是否升档 0：否
					reJson.put("ifUp",0);
					//是否交换主次 0：否
					reJson.put("ifSwap",1);
				}
			}else{//通过
				//通过方式（绿手green||黄手yellow||未通过none）
				reJson.put("passType","green");
				//主申请人
				reJson.put("major", "您");
				//通过成绩
				reJson.put("score", scorePrimary.getIntValue("score")+scorePrimary.getIntValue("languageScore")+scorePrimary.getIntValue("otherCount")+scoreSecondary.getIntValue("score")+scoreSecondary.getIntValue("languageScore"));
				//主申语言
				reJson.put("language", scorePrimary.get("language"));
				//主申工作年限是否再0-1年  在为1 不在为0
				reJson.put("workYearFlag", scorePrimary.getIntValue("workYearFlag"));//
				//是否升档 0：否
				reJson.put("ifUp",0);
				//是否交换主次 0：否
				reJson.put("ifSwap",0);
			}
			
		}else{//只有主申请时 单身汪
			JSONObject scorePrimary = getEESingleScoretoPrimary(questionPrimary);//正常主次主得分
			//正常主次未通过申请
			if(scorePrimary.getIntValue("score")+scorePrimary.getIntValue("languageScore")+scorePrimary.getIntValue("otherCount")<425){
				//语言升档
				if(scorePrimary.getIntValue("score")+scorePrimary.getIntValue("languageScoreUp")+scorePrimary.getIntValue("otherCount")<425){
					//通过方式（绿手green||黄手yellow||未通过none）
					reJson.put("passType","none");
					//主申请人
					reJson.put("major", "您");
					//通过成绩
					reJson.put("score", scorePrimary.getIntValue("score")+scorePrimary.getIntValue("languageScore")+scorePrimary.getIntValue("otherCount"));
					//主申语言
					reJson.put("language", scorePrimary.get("language"));
					//是否升档 0：否
					reJson.put("ifUp",1);
					//是否交换主次 0：否
					reJson.put("ifSwap",0);
				}else{
					//通过方式（绿手green||黄手yellow||未通过none）
					reJson.put("passType","yellow");
					//主申请人
					reJson.put("major", "您");
					//成绩
					reJson.put("score", scorePrimary.getIntValue("score")+scorePrimary.getIntValue("languageScore")+scorePrimary.getIntValue("otherCount"));
					//主申语言
					reJson.put("language", scorePrimary.get("language"));
					//是否升档 0：否
					reJson.put("ifUp",1);
					//是否交换主次 0：否
					reJson.put("ifSwap",0);
				}
			}else{//通过
				//通过方式（绿手green||黄手yellow||未通过none）
				reJson.put("passType","green");
				//主申请人
				reJson.put("major", "您");
				//通过成绩
				reJson.put("score", scorePrimary.getIntValue("score")+scorePrimary.getIntValue("languageScore")+scorePrimary.getIntValue("otherCount"));
				//主申语言
				reJson.put("language", scorePrimary.get("language"));
				//主申工作年限是否再0-1年  在为1 不在为0
				reJson.put("workYearFlag", scorePrimary.getIntValue("workYearFlag"));//
				//是否升档 0：否
				reJson.put("ifUp",0);
				//是否交换主次 0：否
				reJson.put("ifSwap",0);
			}
		}
		
		
		return reJson;
	}
	
	/**
	 *  获取ON省得分
	 * @param question
	 * @return
	 * @throws ParseException
	 */
	public static JSONObject getON(JSONArray question) throws ParseException{
		JSONObject reJson = new JSONObject();//返回json
		reJson.put("projectName", "安大略省技术移民");
		reJson.put("country", "加拿大");
		reJson.put("pass", 400);
		reJson.put("intro", "该项目属于省提名移民项目；首先经安省移民局审批获得省提名，再经联邦移民局进行健康、安全等审核。申请人须表明有意向居住在提名省份，获得永居身份后通常可迁徙至加拿大任意地区居住。该项目采用快速通道（Express Entry, 'EE'）系统进行申请，需要被动接受邀请；审理速度相对较快，但通常不定期发邀请。同时要求申请人职业为安省非限制类职业。");
		reJson.put("capital", "5万");
		reJson.put("period", "3年");
		reJson.put("visaType", "PR");
		reJson.put("projectType", "技术移民");
		
		JSONObject questionPrimary = question.getJSONObject(0);//获取主申请人答题
		//判断申请人职业是否合格
		JSONArray q5 = (JSONArray) questionPrimary.get("question5");
		int careerFlag = 0;
		//检测职业是否都不符合要求
		for(int i=0;i<q5.size();i++){
			JSONObject answer = q5.getJSONObject(i);
			switch (StaticMethod.nullObject2String(answer.get("profession"))) {
			case "维修/操作技师、技工类":
				careerFlag+=1;
				break;
			case "企业咨询类":
				careerFlag+=1;
				break;
			case "计算机类":
				careerFlag+=1;
				break;
			case "广告市场":
				careerFlag+=1;
				break;
			case "行政助理":
				careerFlag+=1;
				break;
			case "金融财会类":
				careerFlag+=1;
				break;
			case "其他":
				careerFlag+=1;
				break;
			default:
				break;
			}
		}
		if(careerFlag==0){
			reJson.put("score", 0);
			//主申请人
			reJson.put("major", "您");
			//主申语言
			reJson.put("language", "");
			//通过方式（绿手green||黄手yellow||未通过none）
			reJson.put("passType","none");
			return reJson;
		}
		
		if("有".equals(StaticMethod.nullObject2String(questionPrimary.get("question1")))){//有配偶时才获取副申请
			JSONObject questionSecondary = question.getJSONObject(1);//获取副申请人答题
			JSONObject scorePrimary = getEEScoretoPrimary(questionPrimary);//正常主次主得分
			JSONObject scoreSecondary = getEEScoretoSecondary(questionSecondary);//正常主次副分
			JSONObject scorePrimary2 = getEEScoretoPrimary(questionSecondary);//主次交换主得分
			JSONObject scoreSecondary2 = getEEScoretoSecondary(questionPrimary);//主次交换副得分
			//正常主次未通过申请language
			if(scorePrimary.getIntValue("score")+scorePrimary.getIntValue("languageScore")+scorePrimary.getIntValue("otherCount")+scoreSecondary.getIntValue("score")+scoreSecondary.getIntValue("languageScore")<400){
				//主次交换是否通过
				if(scorePrimary2.getIntValue("score")+scorePrimary2.getIntValue("languageScore")+scorePrimary2.getIntValue("otherCount")+scoreSecondary2.getIntValue("score")+scoreSecondary2.getIntValue("languageScore")<400){
					//升档后是否通过
					if(scorePrimary.getIntValue("score")+scorePrimary.getIntValue("languageScoreUp")+scorePrimary.getIntValue("otherCount")+scoreSecondary.getIntValue("languageScoreUp")+scoreSecondary.getIntValue("score")<400){
						//主次交换后升档是否通过
						if(scorePrimary2.getIntValue("score")+scorePrimary2.getIntValue("languageScoreUp")+scorePrimary2.getIntValue("otherCount")+scoreSecondary2.getIntValue("score")+scoreSecondary2.getIntValue("languageScoreUp")<400){
							reJson.put("score", scorePrimary.getIntValue("score")+scorePrimary.getIntValue("languageScore")+scorePrimary.getIntValue("otherCount")+scoreSecondary.getIntValue("score")+scoreSecondary.getIntValue("languageScore"));
							//主申请人
							reJson.put("major", "配偶");
							//主申语言
							reJson.put("language", scorePrimary2.get("language"));
							//通过方式（绿手green||黄手yellow||未通过none）
							reJson.put("passType","none");
						}else{//通过
							//主申请人
							reJson.put("major", "配偶");
							//成绩
							reJson.put("score", scorePrimary2.getIntValue("score")+scorePrimary2.getIntValue("languageScore")+scorePrimary2.getIntValue("otherCount")+scoreSecondary2.getIntValue("score")+scoreSecondary2.getIntValue("languageScore"));
							//主申语言
							reJson.put("language", scorePrimary2.get("language"));
							//是否升档 0：否
							reJson.put("ifUp",1);
							//是否交换主次 0：否
							reJson.put("ifSwap",1);
							//通过方式（绿手green||黄手yellow||未通过none）
							reJson.put("passType","yellow");
						}
					}else{
						//通过
						//通过方式（绿手green||黄手yellow||未通过none）
						reJson.put("passType","yellow");
						//主申请人
						reJson.put("major", "您");
						//成绩
						reJson.put("score", scorePrimary.getIntValue("score")+scorePrimary.getIntValue("languageScore")+scorePrimary.getIntValue("otherCount")+scoreSecondary.getIntValue("languageScore")+scoreSecondary.getIntValue("score"));
						//主申语言
						reJson.put("language", scorePrimary.get("language"));
						//是否升档 0：否
						reJson.put("ifUp",1);
						//是否交换主次 0：否
						reJson.put("ifSwap",0);
					}
				}else{
					//通过
					//通过方式（绿手green||黄手yellow||未通过none）
					reJson.put("passType","green");
					//主申请人
					reJson.put("major", "配偶");
					//成绩
					reJson.put("score", scorePrimary2.getIntValue("score")+scorePrimary2.getIntValue("languageScore")+scorePrimary2.getIntValue("otherCount")+scoreSecondary2.getIntValue("score")+scoreSecondary2.getIntValue("languageScore"));
					//主申语言
					reJson.put("language", scorePrimary2.get("language"));
					//是否升档 0：否
					reJson.put("ifUp",0);
					//是否交换主次 0：否
					reJson.put("ifSwap",1);
				}
			}else{//通过
				//通过方式（绿手green||黄手yellow||未通过none）
				reJson.put("passType","green");
				//主申请人
				reJson.put("major", "您");
				//通过成绩
				reJson.put("score", scorePrimary.getIntValue("score")+scorePrimary.getIntValue("languageScore")+scorePrimary.getIntValue("otherCount")+scoreSecondary.getIntValue("score")+scoreSecondary.getIntValue("languageScore"));
				//主申语言
				reJson.put("language", scorePrimary.get("language"));
				//是否升档 0：否
				reJson.put("ifUp",0);
				//是否交换主次 0：否
				reJson.put("ifSwap",0);
			}
			
		}else{//只有主申请时 单身汪
			JSONObject scorePrimary = getEESingleScoretoPrimary(questionPrimary);//正常主次主得分
			//正常主次未通过申请
			if(scorePrimary.getIntValue("score")+scorePrimary.getIntValue("languageScore")+scorePrimary.getIntValue("otherCount")<400){
				//语言升档
				if(scorePrimary.getIntValue("score")+scorePrimary.getIntValue("languageScoreUp")+scorePrimary.getIntValue("otherCount")<400){
					//通过方式（绿手green||黄手yellow||未通过none）
					reJson.put("passType","none");
					//主申请人
					reJson.put("major", "您");
					//通过成绩
					reJson.put("score", scorePrimary.getIntValue("score")+scorePrimary.getIntValue("languageScore")+scorePrimary.getIntValue("otherCount"));
					//主申语言
					reJson.put("language", scorePrimary.get("language"));
					//是否升档 0：否
					reJson.put("ifUp",1);
					//是否交换主次 0：否
					reJson.put("ifSwap",0);
				}else{
					//通过方式（绿手green||黄手yellow||未通过none）
					reJson.put("passType","yellow");
					//主申请人
					reJson.put("major", "您");
					//成绩
					reJson.put("score", scorePrimary.getIntValue("score")+scorePrimary.getIntValue("languageScore")+scorePrimary.getIntValue("otherCount"));
					//主申语言
					reJson.put("language", scorePrimary.get("language"));
					//是否升档 0：否
					reJson.put("ifUp",1);
					//是否交换主次 0：否
					reJson.put("ifSwap",0);
				}
			}else{//通过
				//通过方式（绿手green||黄手yellow||未通过none）
				reJson.put("passType","green");
				//主申请人
				reJson.put("major", "您");
				//通过成绩
				reJson.put("score", scorePrimary.getIntValue("score")+scorePrimary.getIntValue("languageScore")+scorePrimary.getIntValue("otherCount"));
				//主申语言
				reJson.put("language", scorePrimary.get("language"));
				//是否升档 0：否
				reJson.put("ifUp",0);
				//是否交换主次 0：否
				reJson.put("ifSwap",0);
			}
		}
		return reJson;
	}
	
	/**
	 * 获取EE省规则下得分  单身（主申请）
	 * @param questionMain  用户填写主申请
	 * @return  JSONObject  得分情况json
	 * @throws ParseException
	 */
	public static JSONObject getEESingleScoretoPrimary(JSONObject questionMain) throws ParseException{
		//返回得分情况JSON
		JSONObject rescore = new JSONObject();
		//当用户职业完全不符合规定时计分为0返回
		JSONObject failJson = new JSONObject();
		failJson.put("score", 0);
		failJson.put("language", "English");//
		failJson.put("languageScore", 0);//
		failJson.put("languageScoreUp", 0);//
		//主申请得分 （除去语言得分）
		int score = 0;
		//年龄项 start
		int age = StaticMethod.nullObject2int(questionMain.get("question2"));
		if(age == 18 || age == 31) {
			score += 99;
		}else if(age == 19 || age ==30) {
			score += 105;
		}else if(age >= 20 && age <=29 ) {
			score += 110;
		}else if(age == 32) {
			score += 94;
		}else if(age == 33) {
			score += 88;
		}else if(age == 34) {
			score += 83;
		}else if(age == 35) {
			score += 77;
		}else if(age == 36) {
			score += 72;
		}else if(age == 37) {
			score += 66;
		}else if(age == 38) {
			score += 61;
		}else if(age == 39) {
			score += 55;
		}else if(age == 40) {
			score += 50;
		}else if(age == 41) {
			score += 39;
		}else if(age == 42) {
			score += 28;
		}else if(age == 43) {
			score += 17;
		}else if(age == 44) {
			score += 6;
		}else {
			score += 0;
		}
		//年龄项 end
		
		//学历start
		String certificate = StaticMethod.nullObject2String(questionMain.get("question4"));
		if("博士".equals(certificate)) {
			score += 150;
		}else if("硕士".equals(certificate)) {
			score += 135;
		}else if("双学历".equals(certificate)) {
			score += 128;
		}else if("本科（4年制）".equals(certificate) || "本科（3年制）".equals(certificate) || "专科（文科）".equals(certificate) || "专科（理科）".equals(certificate)) {
			score += 120;
		}else if("本科（2年制）".equals(certificate)) {
			score += 98;
		}else if("本科（1年制）".equals(certificate)) {
			score += 90;
		}else if("普通高中".equals(certificate) || "职业高中".equals(certificate)) {
			score += 30;
		}else {
			score += 0;
		}
		//学历end
		
		//第六题  用户英语水平
		JSONObject q6 = (JSONObject) questionMain.get("question6");
		int listeningEnglish = Util.getCLBtoListening(StaticMethod.nullObject2String(q6.get("listening")));
		int speakingEnglish = Util.getCLBtoSpeaking(StaticMethod.nullObject2String(q6.get("speaking")));
		int readingEnglish = Util.getCLBtoReading(StaticMethod.nullObject2String(q6.get("reading")));
		int writingEnglish = Util.getCLBtoWriting(StaticMethod.nullObject2String(q6.get("writing")));
		
		//第七题  用户法语水平
		JSONObject q7 = (JSONObject) questionMain.get("question7");
		int listeningFrench = Util.getCLBtoFrench(StaticMethod.nullObject2String(q7.get("listening")));
		int speakingFrench = Util.getCLBtoFrench(StaticMethod.nullObject2String(q7.get("speaking")));
		int readingFrench = Util.getCLBtoFrench(StaticMethod.nullObject2String(q7.get("reading")));
		int writingFrench = Util.getCLBtoFrench(StaticMethod.nullObject2String(q7.get("writing")));
		//获取语言1规则（英语为主语时）得分 
		int language1Score = language1RuleSinglePrimary(listeningEnglish,speakingEnglish,readingEnglish,writingEnglish);
		language1Score = language1Score>136?136:language1Score;
		//获取语言2规则（英语为主语时）得分
		int language2Score = language2RuleSinglePrimary(listeningFrench,speakingFrench,readingFrench,writingFrench);
		language2Score = language2Score>24?24:language2Score;
		//主副语言反转 （法语为主语时）
		//获取语言1规则（法语为主语时）得分
		int relanguage1Score = language1RuleSinglePrimary(listeningFrench,speakingFrench,readingFrench,writingFrench);
		relanguage1Score = relanguage1Score>136?136:relanguage1Score;
		//获取语言2规则（法语为主语时）得分
		int relanguage2Score = language2RuleSinglePrimary(listeningEnglish,speakingEnglish,readingEnglish,writingEnglish);
		relanguage2Score = relanguage2Score>24?24:relanguage2Score;
		//获取语言综合得分（CLB）
		int enCLB = 0;
		//对比分数
		if(language1Score+language2Score>=relanguage1Score+relanguage2Score){
			//英语作为主语言
			rescore.put("language", "英语");//
			//用户选择的主语言作为主语言时分数
			rescore.put("languageScore", language1Score+language2Score);//
			enCLB = getMinLanguage(listeningEnglish,speakingEnglish,readingEnglish,writingEnglish);
		}else{
			//法语作为主语言
			rescore.put("language", "法语");//
			//用户选择的副语言作为主语言时分数
			rescore.put("languageScore", relanguage1Score+relanguage2Score);//
			enCLB = getMinLanguage(listeningFrench,speakingFrench,readingFrench,writingFrench);
		}
		
		//额外加分算法 start
		//额外奖励分
		int otherCount = 0;
		//学历/语言奖励分
		if(enCLB >= 9 && ("双学历".equals(certificate) || "博士".equals(certificate) || "硕士".equals(certificate))) {
			otherCount += 50;
		}else if(enCLB >= 9 && ("本科（4年制）".equals(certificate) || "本科（3年制）".equals(certificate) || "本科（2年制）".equals(certificate) || "本科（1年制）".equals(certificate) || "专科（文科）".equals(certificate) || "专科（理科）".equals(certificate))) {
			otherCount += 25;
		}else if(enCLB >= 7 && ("双学历".equals(certificate) || "博士".equals(certificate) || "硕士".equals(certificate))) {
			otherCount += 25;
		}else if(enCLB >= 7 && ("本科（4年制）".equals(certificate) || "本科（3年制）".equals(certificate) || "本科（2年制）".equals(certificate) || "本科（1年制）".equals(certificate) || "专科（文科）".equals(certificate) || "专科（理科）".equals(certificate))) {
			otherCount += 13;
		}
		//工作/语言奖励分
		JSONArray q5 = (JSONArray) questionMain.get("question5");
		//前五年工作时间
		int work5Time = 0;
		//后五年工作时间
		int workTime5 = 0;
		for(int i=0;i<q5.size();i++){
			JSONObject answer = q5.getJSONObject(i);
			String timeline = StaticMethod.nullObject2String(answer.get("time"));
			String[] times = timeline.split("至");
			work5Time += Util.getTimeBefore5year(times);
			workTime5 += Util.getTime5year(times);
		}
		int worktime = (work5Time+workTime5)/12;//工作时间
		if(enCLB >= 9 && worktime >= 3) {
			otherCount += 50;
		}else if(enCLB >= 9 && worktime>=1 && worktime <3) {
			otherCount += 25;
		}else if(enCLB >= 7 &&  worktime >= 3) {
			otherCount += 25;
		}else if(enCLB >= 7 && worktime>=1 && worktime <3) {
			otherCount += 13;
		}
		//双语言奖励分
		enCLB = getMinLanguage(listeningEnglish,speakingEnglish,readingEnglish,writingEnglish);
		int frCLB = getMinLanguage(listeningFrench,speakingFrench,readingFrench,writingFrench);
		if(enCLB >= 5 && frCLB >= 7) {
			otherCount += 30;
		}else if(enCLB <= 4 && frCLB >= 7) {
			otherCount += 15;
		}
		rescore.put("otherCount", otherCount);//额外奖励得分
		//未通过语言升档算法
		//主申当第一语言为英语时
		if("英语".equals(rescore.get("language"))){
			//计算用户英语升档后Clb
			int listeningEnglishUp = listeningEnglish+2>10?10:listeningEnglish+2;
			int speakingEnglishUp = speakingEnglish+2>10?10:speakingEnglish+2;
			int readingEnglishUp = readingEnglish+2>10?10:readingEnglish+2;
			int writingEnglishUp =  writingEnglish+2>10?10:writingEnglish+2;
			//计算升档后英语得分
			int languageEnglishUpScore = language1RuleSinglePrimary(listeningEnglishUp,speakingEnglishUp,readingEnglishUp,writingEnglishUp);
			languageEnglishUpScore = languageEnglishUpScore>136?136:languageEnglishUpScore;
			//用户升档后得分      升档后的英语的分+法语得分
			rescore.put("languageScoreUp", languageEnglishUpScore+language2Score);//
		}//当法语为第一语言时
		else{
			//计算用户法语升档后Clb
			int listeningFrenchUp = listeningFrench+1>10?10:listeningFrench+1;
			int speakingFrenchUp = speakingFrench+1>10?10:speakingFrench+1;
			int readingFrenchUp = readingFrench+1>10?10:readingFrench+1;
			int writingFrenchUp =  writingFrench+1>10?10:writingFrench+1;
			//计算升档后法语得分
			int languageFrenchUpScore = language1RuleSinglePrimary(listeningFrenchUp,speakingFrenchUp,readingFrenchUp,writingFrenchUp);
			languageFrenchUpScore = languageFrenchUpScore>136?136:languageFrenchUpScore;
			//用户升档后得分      升档后的法语的分+英语得分
			rescore.put("languageScoreUp", languageFrenchUpScore+relanguage2Score);//
		}
		rescore.put("score", score);//除语言外得分
		
		return rescore;
	}
	
	
	/**
	 * 获取EE省规则下得分 有配偶（主申请）
	 * @param questionMain  用户填写主申请
	 * @return  JSONObject  得分情况json
	 * @throws ParseException
	 */
	public static JSONObject getEEScoretoPrimary(JSONObject questionMain) throws ParseException{
		//返回得分情况JSON
		JSONObject rescore = new JSONObject();
		//当用户职业完全不符合规定时计分为0返回
		JSONObject failJson = new JSONObject();
		failJson.put("score", 0);
		failJson.put("language", "English");//
		failJson.put("languageScore", 0);//
		failJson.put("languageScoreUp", 0);//
		//主申请得分 （除去语言得分）
		int score = 0;
		//年龄项 start
		int age = StaticMethod.nullObject2int(questionMain.get("question2"));
		if(age == 18 || age == 31) {
			score += 90;
		}else if(age == 19 || age ==30) {
			score += 95;
		}else if(age >= 20 && age <=29 ) {
			score += 100;
		}else if(age == 32) {
			score += 85;
		}else if(age == 33) {
			score += 80;
		}else if(age == 34) {
			score += 75;
		}else if(age == 35) {
			score += 70;
		}else if(age == 36) {
			score += 65;
		}else if(age == 37) {
			score += 60;
		}else if(age == 38) {
			score += 55;
		}else if(age == 39) {
			score += 50;
		}else if(age == 40) {
			score += 45;
		}else if(age == 41) {
			score += 35;
		}else if(age == 42) {
			score += 25;
		}else if(age == 43) {
			score += 15;
		}else if(age == 44) {
			score += 5;
		}else {
			score += 0;
		}
		//年龄项 end
		
		//学历start
		String certificateMain = StaticMethod.nullObject2String(questionMain.get("question4"));
		if("博士".equals(certificateMain)) {
			score += 140;
		}else if("硕士".equals(certificateMain)) {
			score += 126;
		}else if("双学历".equals(certificateMain)) {
			score += 119;
		}else if("本科（4年制）".equals(certificateMain) || "本科（3年制）".equals(certificateMain) || "专科（文科）".equals(certificateMain) || "专科（理科）".equals(certificateMain)) {
			score += 112;
		}else if("本科（2年制）".equals(certificateMain)) {
			score += 91;
		}else if("本科（1年制）".equals(certificateMain)) {
			score += 84;
		}else if("普通高中".equals(certificateMain) || "职业高中".equals(certificateMain)) {
			score += 28;
		}else {
			score += 0;
		}
		//学历end
		
		//第六题  用户英语水平
		JSONObject q6 = (JSONObject) questionMain.get("question6");
		int listeningEnglish = Util.getCLBtoListening(StaticMethod.nullObject2String(q6.get("listening")));
		int speakingEnglish = Util.getCLBtoSpeaking(StaticMethod.nullObject2String(q6.get("speaking")));
		int readingEnglish = Util.getCLBtoReading(StaticMethod.nullObject2String(q6.get("reading")));
		int writingEnglish = Util.getCLBtoWriting(StaticMethod.nullObject2String(q6.get("writing")));
		
		//第七题  用户法语水平
		JSONObject q7 = (JSONObject) questionMain.get("question7");
		int listeningFrench = Util.getCLBtoFrench(StaticMethod.nullObject2String(q7.get("listening")));
		int speakingFrench = Util.getCLBtoFrench(StaticMethod.nullObject2String(q7.get("speaking")));
		int readingFrench = Util.getCLBtoFrench(StaticMethod.nullObject2String(q7.get("reading")));
		int writingFrench = Util.getCLBtoFrench(StaticMethod.nullObject2String(q7.get("writing")));
		//获取语言1规则（英语为主语时）得分 
		int language1Score = language1RulePrimary(listeningEnglish,speakingEnglish,readingEnglish,writingEnglish);
		language1Score = language1Score>128?128:language1Score;
		//获取语言2规则（英语为主语时）得分
		int language2Score = language2RulePrimary(listeningFrench,speakingFrench,readingFrench,writingFrench);
		language2Score = language2Score>22?22:language2Score;
		//主副语言反转 （法语为主语时）
		//获取语言1规则（法语为主语时）得分
		int relanguage1Score = language1RulePrimary(listeningFrench,speakingFrench,readingFrench,writingFrench);
		relanguage1Score = relanguage1Score>128?128:relanguage1Score;
		//获取语言2规则（法语为主语时）得分
		int relanguage2Score = language2RulePrimary(listeningEnglish,speakingEnglish,readingEnglish,writingEnglish);
		relanguage2Score = relanguage2Score>22?22:relanguage2Score;
		//获取语言综合得分（CLB）
		int enCLB = 0;
		//对比分数
		if(language1Score+language2Score>=relanguage1Score+relanguage2Score){
			//英语作为主语言
			rescore.put("language", "英语");//
			//用户选择的主语言作为主语言时分数
			rescore.put("languageScore", language1Score+language2Score);//
			enCLB = getMinLanguage(listeningEnglish,speakingEnglish,readingEnglish,writingEnglish);
		}else{
			//法语作为主语言
			rescore.put("language", "法语");//
			//用户选择的副语言作为主语言时分数
			rescore.put("languageScore", relanguage1Score+relanguage2Score);//
			enCLB = getMinLanguage(listeningFrench,speakingFrench,readingFrench,writingFrench);
		}
		//额外加分算法 start
		//额外奖励分
		int otherCount = 0;
		//学历/语言奖励分
		if(enCLB >= 9 && ("双学历".equals(certificateMain) || "博士".equals(certificateMain) || "硕士".equals(certificateMain))) {
			otherCount += 50;
		}else if(enCLB >= 9 && ("本科（4年制）".equals(certificateMain) || "本科（3年制）".equals(certificateMain) || "本科（2年制）".equals(certificateMain) || "本科（1年制）".equals(certificateMain) || "专科（文科）".equals(certificateMain) || "专科（理科）".equals(certificateMain))) {
			otherCount += 25;
		}else if(enCLB >= 7 && ("双学历".equals(certificateMain) || "博士".equals(certificateMain) || "硕士".equals(certificateMain))) {
			otherCount += 25;
		}else if(enCLB >= 7 && ("本科（4年制）".equals(certificateMain) || "本科（3年制）".equals(certificateMain) || "本科（2年制）".equals(certificateMain) || "本科（1年制）".equals(certificateMain) || "专科（文科）".equals(certificateMain) || "专科（理科）".equals(certificateMain))) {
			otherCount += 13;
		}
		//工作/语言奖励分
		JSONArray q5 = (JSONArray) questionMain.get("question5");
		//前五年工作时间
		int work5Time = 0;
		//后五年工作时间
		int workTime5 = 0;
		for(int i=0;i<q5.size();i++){
			JSONObject answer = q5.getJSONObject(i);
			String timeline = StaticMethod.nullObject2String(answer.get("time"));
			String[] times = timeline.split("至");
			work5Time += Util.getTimeBefore5year(times);
			workTime5 += Util.getTime5year(times);
		}
		int worktime = (work5Time+workTime5)/12;//工作时间
		if(enCLB >= 9 && worktime >= 3) {
			otherCount += 50;
		}else if(enCLB >= 9 && worktime>=1 && worktime <3) {
			otherCount += 25;
		}else if(enCLB >= 7 &&  worktime >= 3) {
			otherCount += 25;
		}else if(enCLB >= 7 && worktime>=1 && worktime <3) {
			otherCount += 13;
		}
		//双语言奖励分
		enCLB = getMinLanguage(listeningEnglish,speakingEnglish,readingEnglish,writingEnglish);
		int frCLB = getMinLanguage(listeningFrench,speakingFrench,readingFrench,writingFrench);
		if(enCLB >= 5 && frCLB >= 7) {
			otherCount += 30;
		}else if(enCLB <= 4 && frCLB >= 7) {
			otherCount += 15;
		}
		rescore.put("otherCount", otherCount);//额外奖励得分

		//未通过语言升档算法
		//主申当第一语言为英语时
		if("英语".equals(rescore.get("language"))){
			//计算用户英语升档后Clb
			int listeningEnglishUp = listeningEnglish+2>10?10:listeningEnglish+2;
			int speakingEnglishUp = speakingEnglish+2>10?10:speakingEnglish+2;
			int readingEnglishUp = readingEnglish+2>10?10:readingEnglish+2;
			int writingEnglishUp =  writingEnglish+2>10?10:writingEnglish+2;
			//计算升档后英语得分
			int languageEnglishUpScore = language1RulePrimary(listeningEnglishUp,speakingEnglishUp,readingEnglishUp,writingEnglishUp);
			languageEnglishUpScore = languageEnglishUpScore>128?128:languageEnglishUpScore;
			//用户升档后得分      升档后的英语的分+法语得分
			rescore.put("languageScoreUp", languageEnglishUpScore+language2Score);//
		}//当法语为第一语言时
		else{
			//计算用户法语升档后Clb
			int listeningFrenchUp = listeningFrench+1>10?10:listeningFrench+1;
			int speakingFrenchUp = speakingFrench+1>10?10:speakingFrench+1;
			int readingFrenchUp = readingFrench+1>10?10:readingFrench+1;
			int writingFrenchUp =  writingFrench+1>10?10:writingFrench+1;
			//计算升档后法语得分
			int languageFrenchUpScore = language1RulePrimary(listeningFrenchUp,speakingFrenchUp,readingFrenchUp,writingFrenchUp);
			languageFrenchUpScore = languageFrenchUpScore>128?128:languageFrenchUpScore;
			//用户升档后得分      升档后的法语的分+英语得分
			rescore.put("languageScoreUp", languageFrenchUpScore+relanguage2Score);//
		}
		rescore.put("score", score);//除语言外得分
		
		return rescore;
	}
	
	
	/**
	 * 语言1规则 单身 （主申）
	 * @param listening  听
	 * @param speaking	 说
	 * @param reading	读
	 * @param writing	写
	 * @return  int 该语言在规则1下 得分
	 */
	public static int language1RuleSinglePrimary(int listening,int speaking,int reading,int writing){
		//规则1总得分
		int languageOneScore = 0;
		//计算听得分
		switch (listening) {
		case 7:
			languageOneScore += 17;
			break;
		case 8:
			languageOneScore += 23;
			break;
		case 9:
			languageOneScore += 31;
			break;
		case 10:
			languageOneScore += 34;
			break;
		default:
			break;
		}
		//计算说得分
		switch (speaking) {
		case 7:
			languageOneScore += 17;
			break;
		case 8:
			languageOneScore += 23;
			break;
		case 9:
			languageOneScore += 31;
			break;
		case 10:
			languageOneScore += 34;
			break;
		default:
			break;
		}
		//计算读得分
		switch (reading) {
		case 7:
			languageOneScore += 17;
			break;
		case 8:
			languageOneScore += 23;
			break;
		case 9:
			languageOneScore += 31;
			break;
		case 10:
			languageOneScore += 34;
			break;

		default:
			break;
		}
		//计算写得分
		switch (writing) {
		case 7:
			languageOneScore += 17;
			break;
		case 8:
			languageOneScore += 23;
			break;
		case 9:
			languageOneScore += 31;
			break;
		case 10:
			languageOneScore += 34;
			break;

		default:
			break;
		}
		return languageOneScore;
		
	}
	
	/**
	 * 语言2规则 单身 （主申）
	 * @param listening  听
	 * @param speaking	 说
	 * @param reading	读
	 * @param writing	写
	 * @return  int 该语言在规则2下 得分
	 */
	public static int language2RuleSinglePrimary(int listening,int speaking,int reading,int writing){
		//规则1总得分
		int languageTwoScore = 0;
		//计算听得分
		switch (listening) {
		case 5:
			languageTwoScore += 1;
			break;
		case 6:
			languageTwoScore += 1;
			break;
		case 7:
			languageTwoScore += 3;
			break;
		case 8:
			languageTwoScore += 3;
			break;
		case 9:
			languageTwoScore += 6;
			break;
		case 10:
			languageTwoScore += 6;
			break;
		default:
			break;
		}
		//计算说得分
		switch (speaking) {
		case 5:
			languageTwoScore += 1;
			break;
		case 6:
			languageTwoScore += 1;
			break;
		case 7:
			languageTwoScore += 3;
			break;
		case 8:
			languageTwoScore += 3;
			break;
		case 9:
			languageTwoScore += 6;
			break;
		case 10:
			languageTwoScore += 6;
			break;
		default:
			break;
		}
		//计算读得分
		switch (reading) {
		case 5:
			languageTwoScore += 1;
			break;
		case 6:
			languageTwoScore += 1;
			break;
		case 7:
			languageTwoScore += 3;
			break;
		case 8:
			languageTwoScore += 3;
			break;
		case 9:
			languageTwoScore += 6;
			break;
		case 10:
			languageTwoScore += 6;
			break;
		default:
			break;
		}
		//计算写得分
		switch (writing) {
		case 5:
			languageTwoScore += 1;
			break;
		case 6:
			languageTwoScore += 1;
			break;
		case 7:
			languageTwoScore += 3;
			break;
		case 8:
			languageTwoScore += 3;
			break;
		case 9:
			languageTwoScore += 6;
			break;
		case 10:
			languageTwoScore += 6;
			break;
		default:
			break;
		}
		return languageTwoScore;
	}
	
	
	
	/**
	 * 语言1规则 有配偶情况（主申）
	 * @param listening  听
	 * @param speaking	 说
	 * @param reading	读
	 * @param writing	写
	 * @return  int 该语言在规则1下 得分
	 */
	public static int language1RulePrimary(int listening,int speaking,int reading,int writing){
		//规则1总得分
		int languageOneScore = 0;
		//计算听得分
		switch (listening) {
		case 7:
			languageOneScore += 16;
			break;
		case 8:
			languageOneScore += 22;
			break;
		case 9:
			languageOneScore += 29;
			break;
		case 10:
			languageOneScore += 32;
			break;
		default:
			break;
		}
		//计算说得分
		switch (speaking) {
		case 7:
			languageOneScore += 16;
			break;
		case 8:
			languageOneScore += 22;
			break;
		case 9:
			languageOneScore += 29;
			break;
		case 10:
			languageOneScore += 32;
			break;
		default:
			break;
		}
		//计算读得分
		switch (reading) {
		case 7:
			languageOneScore += 16;
			break;
		case 8:
			languageOneScore += 22;
			break;
		case 9:
			languageOneScore += 29;
			break;
		case 10:
			languageOneScore += 32;
			break;
		default:
			break;
		}
		//计算写得分
		switch (writing) {
		case 7:
			languageOneScore += 16;
			break;
		case 8:
			languageOneScore += 22;
			break;
		case 9:
			languageOneScore += 29;
			break;
		case 10:
			languageOneScore += 32;
			break;
		default:
			break;
		}
		return languageOneScore;
		
	}
	
	
	/**
	 * 语言2规则 有配偶情况（主申）
	 * @param listening  听
	 * @param speaking	 说
	 * @param reading	读
	 * @param writing	写
	 * @return  int 该语言在规则2下 得分
	 */
	public static int language2RulePrimary(int listening,int speaking,int reading,int writing){
		//规则1总得分
		int languageTwoScore = 0;
		//计算听得分
		switch (listening) {
		case 5:
			languageTwoScore += 1;
			break;
		case 6:
			languageTwoScore += 1;
			break;
		case 7:
			languageTwoScore += 3;
			break;
		case 8:
			languageTwoScore += 3;
			break;
		case 9:
			languageTwoScore += 6;
			break;
		case 10:
			languageTwoScore += 6;
			break;
		default:
			break;
		}
		//计算说得分
		switch (speaking) {
		case 5:
			languageTwoScore += 1;
			break;
		case 6:
			languageTwoScore += 1;
			break;
		case 7:
			languageTwoScore += 3;
			break;
		case 8:
			languageTwoScore += 3;
			break;
		case 9:
			languageTwoScore += 6;
			break;
		case 10:
			languageTwoScore += 6;
			break;
		default:
			break;
		}
		//计算读得分
		switch (reading) {
		case 5:
			languageTwoScore += 1;
			break;
		case 6:
			languageTwoScore += 1;
			break;
		case 7:
			languageTwoScore += 3;
			break;
		case 8:
			languageTwoScore += 3;
			break;
		case 9:
			languageTwoScore += 6;
			break;
		case 10:
			languageTwoScore += 6;
			break;
		default:
			break;
		}
		//计算写得分
		switch (writing) {
		case 5:
			languageTwoScore += 1;
			break;
		case 6:
			languageTwoScore += 1;
			break;
		case 7:
			languageTwoScore += 3;
			break;
		case 8:
			languageTwoScore += 3;
			break;
		case 9:
			languageTwoScore += 6;
			break;
		case 10:
			languageTwoScore += 6;
			break;
		default:
			break;
		}
		return languageTwoScore;
		
	}
	
	
	
	/**
	 * 语言1规则 有配偶（副申）
	 * @param listening  听
	 * @param speaking	 说
	 * @param reading	读
	 * @param writing	写
	 * @return  int 该语言在规则1下 得分
	 */
	public static int language1RuleSecondary(int listening,int speaking,int reading,int writing){
		//规则1总得分
		int languageOneScore = 0;
		//计算听得分
		switch (listening) {
		case 5:
			languageOneScore += 1;
			break;
		case 6:
			languageOneScore += 1;
			break;
		case 7:
			languageOneScore += 3;
			break;
		case 8:
			languageOneScore += 3;
			break;
		case 9:
			languageOneScore += 6;
			break;
		case 10:
			languageOneScore += 6;
			break;
		default:
			break;
		}
		//计算说得分
		switch (speaking) {
		case 5:
			languageOneScore += 1;
			break;
		case 6:
			languageOneScore += 1;
			break;
		case 7:
			languageOneScore += 3;
			break;
		case 8:
			languageOneScore += 3;
			break;
		case 9:
			languageOneScore += 6;
			break;
		case 10:
			languageOneScore += 6;
			break;
		default:
			break;
		}
		//计算读得分
		switch (reading) {
		case 5:
			languageOneScore += 1;
			break;
		case 6:
			languageOneScore += 1;
			break;
		case 7:
			languageOneScore += 3;
			break;
		case 8:
			languageOneScore += 3;
			break;
		case 9:
			languageOneScore += 6;
			break;
		case 10:
			languageOneScore += 6;
			break;
		default:
			break;
		}
		//计算写得分
		switch (writing) {
		case 5:
			languageOneScore += 1;
			break;
		case 6:
			languageOneScore += 1;
			break;
		case 7:
			languageOneScore += 3;
			break;
		case 8:
			languageOneScore += 3;
			break;
		case 9:
			languageOneScore += 6;
			break;
		case 10:
			languageOneScore += 6;
			break;
		default:
			break;
		}
		return languageOneScore;
	}
	
	/**
	 * 获取NS省规则下得分（副申请）
	 * @return
	 */
	public static JSONObject getEEScoretoSecondary(JSONObject questionMain){
		//返回得分情况JSON
		JSONObject rescore = new JSONObject();
		//当用户职业完全不符合规定时计分为0返回
		JSONObject failJson = new JSONObject();
		failJson.put("score", 0);
		failJson.put("language", "English");//
		failJson.put("languageScore", 0);//
		failJson.put("languageScoreUp", 0);//
		//主申请得分 （除去语言得分）
		int score = 0;
		
		//学历start
		String certificateAssi = StaticMethod.nullObject2String(questionMain.get("question4"));
		if("博士".equals(certificateAssi) || "硕士".equals(certificateAssi)) {
			score += 10;
		}else if("双学历".equals(certificateAssi)) {
			score += 9;
		}else if("本科（4年制）".equals(certificateAssi) || "本科（3年制）".equals(certificateAssi) || "专科（文科）".equals(certificateAssi) || "专科（理科）".equals(certificateAssi)) {
			score += 8;
		}else if("本科（2年制）".equals(certificateAssi)) {
			score += 7;
		}else if("本科（1年制）".equals(certificateAssi)) {
			score += 6;
		}else if("普通高中".equals(certificateAssi) || "职业高中".equals(certificateAssi)) {
			score += 2;
		}else {
			score += 0;
		}
		//学历end
		
		//第六题  用户英语水平
		JSONObject q6 = (JSONObject) questionMain.get("question6");
		int listeningEnglish = Util.getCLBtoListening(StaticMethod.nullObject2String(q6.get("listening")));
		int speakingEnglish = Util.getCLBtoSpeaking(StaticMethod.nullObject2String(q6.get("speaking")));
		int readingEnglish = Util.getCLBtoReading(StaticMethod.nullObject2String(q6.get("reading")));
		int writingEnglish = Util.getCLBtoWriting(StaticMethod.nullObject2String(q6.get("writing")));
		
		//第七题  用户法语水平
		JSONObject q7 = (JSONObject) questionMain.get("question7");
		int listeningFrench = Util.getCLBtoFrench(StaticMethod.nullObject2String(q7.get("listening")));
		int speakingFrench = Util.getCLBtoFrench(StaticMethod.nullObject2String(q7.get("speaking")));
		int readingFrench = Util.getCLBtoFrench(StaticMethod.nullObject2String(q7.get("reading")));
		int writingFrench = Util.getCLBtoFrench(StaticMethod.nullObject2String(q7.get("writing")));
		//获取语言1规则（英语为主语时）得分 
		int language1Score = language1RuleSecondary(listeningEnglish,speakingEnglish,readingEnglish,writingEnglish);
		language1Score = language1Score>20?20:language1Score;
		//主副语言反转 （法语为主语时）
		//获取语言1规则（法语为主语时）得分
		int relanguage1Score = language1RuleSecondary(listeningFrench,speakingFrench,readingFrench,writingFrench);
		relanguage1Score = relanguage1Score>20?20:relanguage1Score;
		//对比分数
		if(language1Score>=relanguage1Score){
			//英语作为主语言
			rescore.put("language", "英语");//
			//用户选择的主语言作为主语言时分数
			rescore.put("languageScore", language1Score);//
			
		}else{
			//法语作为主语言
			rescore.put("language", "法语");//
			//用户选择的副语言作为主语言时分数
			rescore.put("languageScore", relanguage1Score);//
		}
		
		//未通过语言升档算法
		int languageEnglishUpScore = 0;
		//判断是否法语不会  有一个不会为不会 英语+2
		if("不会".equals(StaticMethod.nullObject2String(q7.get("listening")))||"不会".equals(StaticMethod.nullObject2String(q7.get("speaking")))||"不会".equals(StaticMethod.nullObject2String(q7.get("reading")))||"不会".equals(StaticMethod.nullObject2String(q7.get("writing")))){
			//计算用户英语升档后Clb
			int listeningEnglishUp = listeningEnglish+2>10?10:listeningEnglish+2;
			int speakingEnglishUp = speakingEnglish+2>10?10:speakingEnglish+2;
			int readingEnglishUp = readingEnglish+2>10?10:readingEnglish+2;
			int writingEnglishUp =  writingEnglish+2>10?10:writingEnglish+2;
			//计算升档后英语得分
			languageEnglishUpScore = language1RuleSecondary(listeningEnglishUp,speakingEnglishUp,readingEnglishUp,writingEnglishUp);
			languageEnglishUpScore = languageEnglishUpScore>20?20:languageEnglishUpScore;
			//用户升档后得分      升档后的英语的分+法语得分
			rescore.put("languageScoreUp", languageEnglishUpScore);//
		}//判断是否语言都没填写 英语+2
		else if("不会".equals(StaticMethod.nullObject2String(q7.get("listening")))||"不会".equals(StaticMethod.nullObject2String(q7.get("speaking")))||"不会".equals(StaticMethod.nullObject2String(q7.get("reading")))||"不会".equals(StaticMethod.nullObject2String(q7.get("writing")))&&("".equals(StaticMethod.nullObject2String(q6.get("listening")))&&"".equals(StaticMethod.nullObject2String(q6.get("speaking")))&&"".equals(StaticMethod.nullObject2String(q6.get("reading")))&&"".equals(StaticMethod.nullObject2String(q6.get("writing"))))){
			//计算用户英语升档后Clb
			int listeningEnglishUp = listeningEnglish+2>10?10:listeningEnglish+2;
			int speakingEnglishUp = speakingEnglish+2>10?10:speakingEnglish+2;
			int readingEnglishUp = readingEnglish+2>10?10:readingEnglish+2;
			int writingEnglishUp =  writingEnglish+2>10?10:writingEnglish+2;
			//计算升档后英语得分
			languageEnglishUpScore = language1RuleSecondary(listeningEnglishUp,speakingEnglishUp,readingEnglishUp,writingEnglishUp);
			languageEnglishUpScore = languageEnglishUpScore>20?20:languageEnglishUpScore;
			//用户升档后得分      升档后的英语的分+法语得分
			rescore.put("languageScoreUp", languageEnglishUpScore);//
		}else{//英语 法语成绩均填写
			//计算用户英语升档后Clb
			int listeningEnglishUp = listeningEnglish+2>10?10:listeningEnglish+2;
			int speakingEnglishUp = speakingEnglish+2>10?10:speakingEnglish+2;
			int readingEnglishUp = readingEnglish+2>10?10:readingEnglish+2;
			int writingEnglishUp =  writingEnglish+2>10?10:writingEnglish+2;
			languageEnglishUpScore = language1RuleSecondary(listeningEnglishUp,speakingEnglishUp,readingEnglishUp,writingEnglishUp);
			languageEnglishUpScore = languageEnglishUpScore>20?20:languageEnglishUpScore;
			//计算用户法语升档后Clb
			int listeningFrenchUp = listeningFrench+1>10?10:listeningFrench+1;
			int speakingFrenchUp = speakingFrench+1>10?10:speakingFrench+1;
			int readingFrenchUp = readingFrench+1>10?10:readingFrench+1;
			int writingFrenchUp =  writingFrench+1>10?10:writingFrench+1;
			//计算升档后法语得分
			int languageFrenchUpScore = language1RuleSecondary(listeningFrenchUp,speakingFrenchUp,readingFrenchUp,writingFrenchUp);
			languageFrenchUpScore = languageFrenchUpScore>20?20:languageFrenchUpScore;
			//法语升档分不大于英语升档
			if(languageEnglishUpScore>=languageFrenchUpScore){
				//用户升档后得分      升档后的英语的分+法语得分
				rescore.put("languageScoreUp", languageEnglishUpScore);//
			}else{
				//用户升档后得分      升档后的法语得分+英语的分
				rescore.put("languageScoreUp", languageFrenchUpScore);//
			}
			
		}
				
				
		rescore.put("score", score);//除语言外得分
		
		return rescore;
	}
	
	
	/**
	 *  获取整体语言水平
	 * @param listening
	 * @param speaking
	 * @param reading
	 * @param writing
	 * @return
	 */
	public static int getMinLanguage(int listening,int speaking,int reading,int writing){
		//SPIN省语言整体计算  四个单项成绩取最低值作为整体成绩
		int minScore = listening;
		if(listening>speaking){
			minScore = speaking;
		}
		if(minScore>reading){
			minScore = reading;
		}
		if(minScore>writing){
			minScore = writing;
		}
		
		return minScore;
	}
	
	

}
