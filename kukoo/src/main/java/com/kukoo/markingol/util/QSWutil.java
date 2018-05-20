package com.kukoo.markingol.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.kukoo.base.util.StaticMethod;
import com.kukoo.markingol.dao.MarkingOLMapper;

@Component
public class QSWutil {
	
	@Autowired
    private static MarkingOLMapper  markingOLMapper;
	@Autowired
	public void setMarkingOLMapper(MarkingOLMapper markingOLMapper) {
		this.markingOLMapper=markingOLMapper;
    }
	
	public static JSONObject getQSW(JSONArray question) throws ParseException{
		int score = 0;//总得分
		JSONObject reJson = new JSONObject();//返回json
		reJson.put("projectName", "魁北克省技术移民");
		reJson.put("country", "加拿大");
		reJson.put("pass", 59);
		reJson.put("intro", "该项目属于省提名移民项目；首先经魁省移民局审批获得省提名，再经联邦移民局进行健康及安全等审核。申请人须表明有意向居住在提名省份；获得永居身份后通常可迁徙至加拿大任意地区居住。该项目无职业限制，子女有额外加分，若申请人所学专业属于受训加分专业，则通常语言要求也较为宽松。但该项目需要抢名额，且处理周期相对长。");
		reJson.put("capital", "5万");
		reJson.put("period", "3年");
		reJson.put("visaType", "PR");
		reJson.put("projectType", "技术移民");

		JSONObject questionPrimary = question.getJSONObject(0);//获取主申请人答题
		reJson.put("learn", StaticMethod.nullObject2String(questionPrimary.get("learn")));
		if("有".equals(StaticMethod.nullObject2String(questionPrimary.get("question1")))){//有配偶时才获取副申请
			JSONObject questionSecondary = question.getJSONObject(1);//获取副申请人答题
			JSONObject scorePrimary = getQSWScoretoPrimary(questionPrimary);//正常主次主得分
			JSONObject scoreSecondary = getQSWScoretoSecondary(questionSecondary);//正常主次副分
			JSONObject scorePrimary2 = getQSWScoretoPrimary(questionSecondary);//主次交换主得分
			JSONObject scoreSecondary2 = getQSWScoretoSecondary(questionPrimary);//主次交换副得分
			
			JSONArray specialty = new JSONArray();
			if(!"[]".equals(StaticMethod.nullObject2String(questionPrimary.get("specialty")))){
				specialty.add(JSONArray.parse(StaticMethod.nullObject2String(questionPrimary.get("specialty")))); 
			}
			if(!"[]".equals(StaticMethod.nullObject2String(questionSecondary.get("specialty")))){
				specialty.add(JSONArray.parse(StaticMethod.nullObject2String(questionSecondary.get("specialty")))); 
			}
			reJson.put("specialty", specialty);
			//当第一次提交情况
			if("[]".equals(StaticMethod.nullObject2String(questionPrimary.get("specialty")))&&"[]".equals(StaticMethod.nullObject2String(questionSecondary.get("specialty")))){
				//正常主次是否通过申请
				if(scorePrimary.getIntValue("score")+scorePrimary.getIntValue("languageScore")+scoreSecondary.getIntValue("score")+scoreSecondary.getIntValue("languageScore")-1>=52&&scorePrimary.getIntValue("score")+scorePrimary.getIntValue("languageScore")+scoreSecondary.getIntValue("score")+scoreSecondary.getIntValue("languageScore")+scorePrimary.getByteValue("childScore")>59){
					//通过
					//主申请人
					reJson.put("major", "您");
					//通过成绩
					reJson.put("score", scorePrimary.getIntValue("score")+scorePrimary.getIntValue("languageScore")+scoreSecondary.getIntValue("score")+scoreSecondary.getIntValue("languageScore"));
					//主申语言
					reJson.put("language", scorePrimary.get("language"));
					//子女得分
					reJson.put("childScore", scorePrimary.getByteValue("childScore"));
					//是否升档 0：否
					reJson.put("ifUp",0);
					//是否交换主次 0：否
					reJson.put("ifSwap",0);
					//通过方式（绿手green||黄手yellow||未通过none）
					reJson.put("passType","green");
				}else{
					//未通过
					//主次交换是否通过
					if(scorePrimary2.getIntValue("score")+scorePrimary2.getIntValue("specialtyScore")+scorePrimary2.getIntValue("languageScore")+scoreSecondary2.getIntValue("score")+scoreSecondary2.getIntValue("specialtyScore")+scoreSecondary2.getIntValue("languageScore")-1>=52&&scorePrimary2.getIntValue("score")+scorePrimary2.getIntValue("languageScore")+scoreSecondary2.getIntValue("score")+scoreSecondary2.getIntValue("languageScore")+scorePrimary2.getByteValue("childScore")>59){
						//通过
						//主申请人
						reJson.put("major", "配偶");
						//成绩
						reJson.put("score", scorePrimary2.getIntValue("score")+scorePrimary2.getIntValue("languageScore")+scorePrimary2.getByteValue("childScore")+scoreSecondary2.getIntValue("score")+scoreSecondary2.getIntValue("languageScore"));
						//主申语言
						reJson.put("language", scorePrimary2.get("language"));
						//子女得分
						reJson.put("childScore", scorePrimary2.getByteValue("childScore"));
						//是否升档 0：否
						reJson.put("ifUp",0);
						//是否交换主次 0：否
						reJson.put("ifSwap",1);
						//通过方式（绿手green||黄手yellow||未通过none）
						reJson.put("passType","green");
					}else{
						//未通过
						reJson.put("score", scorePrimary.getIntValue("score")+scorePrimary.getIntValue("languageScore")+scorePrimary.getByteValue("childScore")+scoreSecondary.getIntValue("score")+scoreSecondary.getIntValue("languageScore"));
						//主申请人
						reJson.put("major", "配偶");
						//子女得分
						reJson.put("childScore", scorePrimary.getByteValue("childScore"));
						//主申语言
						reJson.put("language", scorePrimary.get("language"));
						//通过方式（绿手green||黄手yellow||未通过none）
						reJson.put("passType","none");
						
					}
				}
			}else{//第二次提交带专业
				//正常主次未通过申请language
				if(scorePrimary.getIntValue("score")+scorePrimary.getIntValue("specialtyScore")+scorePrimary.getIntValue("languageScore")+scoreSecondary.getIntValue("score")+scoreSecondary.getIntValue("specialtyScore")+scoreSecondary.getIntValue("languageScore")-1>=52&&scorePrimary.getIntValue("score")+scorePrimary.getIntValue("specialtyScore")+scorePrimary.getIntValue("languageScore")+scoreSecondary.getIntValue("score")+scoreSecondary.getIntValue("specialtyScore")+scoreSecondary.getIntValue("languageScore")+scorePrimary.getByteValue("childScore")>59){
					//通过
					//主申请人
					reJson.put("major", "您");
					//通过成绩
					reJson.put("score", scorePrimary.getIntValue("score")+scorePrimary.getIntValue("specialtyScore")+scorePrimary.getIntValue("languageScore")+scorePrimary.getByteValue("childScore")+scoreSecondary.getIntValue("score")+scoreSecondary.getIntValue("languageScore")+scoreSecondary.getIntValue("specialtyScore"));
					//主申语言
					reJson.put("language", scorePrimary.get("language"));
					//子女得分
					reJson.put("childScore", scorePrimary.getByteValue("childScore"));
					//是否升档 0：否
					reJson.put("ifUp",0);
					//是否交换主次 0：否
					reJson.put("ifSwap",0);
					//通过方式（绿手green||黄手yellow||未通过none）
					reJson.put("passType","green");
				}else{
					//未通过
					//主次交换是否通过
					if(scorePrimary2.getIntValue("score")+scorePrimary2.getIntValue("specialtyScore")+scorePrimary2.getIntValue("languageScore")+scoreSecondary2.getIntValue("score")+scoreSecondary2.getIntValue("specialtyScore")+scoreSecondary2.getIntValue("languageScore")-1>=52&&scorePrimary2.getIntValue("score")+scorePrimary2.getIntValue("specialtyScore")+scorePrimary2.getIntValue("languageScore")+scoreSecondary2.getIntValue("score")+scoreSecondary.getIntValue("specialtyScore")+scoreSecondary2.getIntValue("languageScore")+scorePrimary2.getByteValue("childScore")>59){
						//通过
						//主申请人
						reJson.put("major", "配偶");
						//成绩
						reJson.put("score", scorePrimary2.getIntValue("score")+scorePrimary2.getIntValue("specialtyScore")+scorePrimary2.getIntValue("languageScore")+scorePrimary2.getByteValue("childScore")+scoreSecondary2.getIntValue("score")+scoreSecondary2.getIntValue("languageScore")+scoreSecondary2.getIntValue("specialtyScore"));
						//主申语言
						reJson.put("language", scorePrimary2.get("language"));
						//子女得分
						reJson.put("childScore", scorePrimary2.getByteValue("childScore"));
						//是否升档 0：否
						reJson.put("ifUp",0);
						//是否交换主次 0：否
						reJson.put("ifSwap",1);
						//通过方式（绿手green||黄手yellow||未通过none）
						reJson.put("passType","green");
					}else{
						//未通过
						//升档后是否通过
						if(scorePrimary.getIntValue("score")+scorePrimary.getIntValue("specialtyScore")+scorePrimary.getIntValue("languageScoreUp")+scoreSecondary.getIntValue("score")+scoreSecondary.getIntValue("specialtyScore")+scoreSecondary.getIntValue("languageScoreUp")-1>=52&&scorePrimary.getIntValue("score")+scorePrimary.getIntValue("specialtyScore")+scorePrimary.getIntValue("languageScoreUp")+scoreSecondary.getIntValue("score")+scoreSecondary.getIntValue("specialtyScore")+scoreSecondary.getIntValue("languageScoreUp")+scorePrimary.getByteValue("childScore")>59){
							//通过
							//主申请人
							reJson.put("major", "您");
							//成绩
							reJson.put("score", scorePrimary.getIntValue("score")+scorePrimary.getIntValue("specialtyScore")+scorePrimary.getIntValue("languageScore")+scorePrimary.getByteValue("childScore")+scoreSecondary.getIntValue("languageScore")+scoreSecondary.getIntValue("score")+scoreSecondary.getIntValue("specialtyScore"));
							//主申语言
							reJson.put("language", scorePrimary.get("language"));
							//子女得分
							reJson.put("childScore", scorePrimary.getByteValue("childScore"));
							//是否升档 0：否
							reJson.put("ifUp",1);
							//是否交换主次 0：否
							reJson.put("ifSwap",0);
							//通过方式（绿手green||黄手yellow||未通过none）
							reJson.put("passType","yellow");
						}else{
							//未通过
							//主次交换后升档是否通过
							if(scorePrimary2.getIntValue("score")+scorePrimary2.getIntValue("specialtyScore")+scorePrimary2.getIntValue("languageScoreUp")+scoreSecondary2.getIntValue("score")+scoreSecondary2.getIntValue("specialtyScore")+scoreSecondary2.getIntValue("languageScoreUp")-1>=52&&scorePrimary2.getIntValue("score")+scorePrimary2.getIntValue("specialtyScore")+scorePrimary2.getIntValue("languageScoreUp")+scoreSecondary2.getIntValue("score")+scorePrimary2.getIntValue("specialtyScore")+scoreSecondary2.getIntValue("languageScoreUp")+scorePrimary2.getByteValue("childScore")>59){
								//通过
								//主申请人
								reJson.put("major", "配偶");
								//成绩
								reJson.put("score", scorePrimary2.getIntValue("score")+scorePrimary2.getIntValue("specialtyScore")+scorePrimary2.getIntValue("languageScore")+scorePrimary2.getByteValue("childScore")+scoreSecondary2.getIntValue("score")+scoreSecondary2.getIntValue("languageScore")+scoreSecondary2.getIntValue("specialtyScore"));
								//主申语言
								reJson.put("language", scorePrimary2.get("language"));
								//子女得分
								reJson.put("childScore", scorePrimary2.getByteValue("childScore"));
								//是否升档 0：否
								reJson.put("ifUp",1);
								//是否交换主次 0：否
								reJson.put("ifSwap",1);
								//通过方式（绿手green||黄手yellow||未通过none）
								reJson.put("passType","yellow");
							}else{
								//未通过
								reJson.put("score", scorePrimary.getIntValue("score")+scorePrimary.getIntValue("specialtyScore")+scorePrimary.getIntValue("languageScore")+scorePrimary.getByteValue("childScore")+scoreSecondary.getIntValue("score")+scoreSecondary.getIntValue("languageScore")+scoreSecondary.getIntValue("specialtyScore"));
								//主申请人
								reJson.put("major", "配偶");
								//子女得分
								reJson.put("childScore", scorePrimary2.getByteValue("childScore"));
								//主申语言
								reJson.put("language", scorePrimary2.get("language"));
								//通过方式（绿手green||黄手yellow||未通过none）
								reJson.put("passType","none");
								
							}
							
						}
					}
				}
			}
			
		}else{
			JSONArray specialty = new JSONArray();
			if(!"[]".equals(StaticMethod.nullObject2String(questionPrimary.get("specialty")))){
				specialty.add(JSONArray.parse(StaticMethod.nullObject2String(questionPrimary.get("specialty")))); 
			}
			reJson.put("pass", 50);
			reJson.put("specialty", specialty);
			JSONObject scorePrimary = getQSWScoretoPrimary(questionPrimary);//正常主次主得分
			//正常主次未通过申请language
			if(scorePrimary.getIntValue("score")+scorePrimary.getIntValue("specialtyScore")+scorePrimary.getIntValue("languageScore")-scorePrimary.getByteValue("childScore")-1>=43&&scorePrimary.getIntValue("score")+scorePrimary.getIntValue("specialtyScore")+scorePrimary.getIntValue("languageScore")>50){
				//通过
				//主申请人
				reJson.put("major", "您");
				//通过成绩
				reJson.put("score", scorePrimary.getIntValue("score")+scorePrimary.getIntValue("specialtyScore")+scorePrimary.getIntValue("languageScore"));
				//主申语言
				reJson.put("language", scorePrimary.get("language"));
				//子女得分
				reJson.put("childScore", scorePrimary.getByteValue("childScore"));
				//是否升档 0：否
				reJson.put("ifUp",0);
				//是否交换主次 0：否
				reJson.put("ifSwap",0);
				//通过方式（绿手green||黄手yellow||未通过none）
				reJson.put("passType","green");
			}else{//未通过
			//升档后是否通过
			if(scorePrimary.getIntValue("score")+scorePrimary.getIntValue("specialtyScore")+scorePrimary.getIntValue("languageScoreUp")-scorePrimary.getByteValue("childScore")-1>=43&&scorePrimary.getIntValue("score")+scorePrimary.getIntValue("specialtyScore")+scorePrimary.getIntValue("languageScoreUp")>50){
				//通过
				//主申请人
				reJson.put("major", "您");
				//通过成绩
				reJson.put("score", scorePrimary.getIntValue("score")+scorePrimary.getIntValue("specialtyScore")+scorePrimary.getIntValue("languageScore"));
				//主申语言
				reJson.put("language", scorePrimary.get("language"));
				//子女得分
				reJson.put("childScore", scorePrimary.getByteValue("childScore"));
				//是否升档 0：否
				reJson.put("ifUp",1);
				//是否交换主次 0：否
				reJson.put("ifSwap",0);
				//通过方式（绿手green||黄手yellow||未通过none）
				reJson.put("passType","yellow");
			}else{//未通过
				//主申请人
				reJson.put("major", "您");
				//通过成绩
				reJson.put("score", scorePrimary.getIntValue("score")+scorePrimary.getIntValue("specialtyScore")+scorePrimary.getIntValue("languageScore"));
				//主申语言
				reJson.put("language", scorePrimary.get("language"));
				//子女得分
				reJson.put("childScore", scorePrimary.getByteValue("childScore"));
				//通过方式（绿手green||黄手yellow||未通过none）
				reJson.put("passType","none");
			}
		}
		}
		return reJson;
	}
	/**
	 * 获取QSW省规则下得分（主申请）
	 * @return
	 * @throws ParseException 
	 */
	public static JSONObject getQSWScoretoPrimary(JSONObject questionMain) throws ParseException{
		JSONObject rescore = new JSONObject();//
		//主申请得分
		int score = 0;
		//第二题 年龄
		switch (StaticMethod.nullObject2String(questionMain.get("question2"))) {
		case "18":
			score+=16;
			break;
		case "19":
			score+=16;
			break;
		case "20":
			score+=16;
			break;
		case "21":
			score+=16;
			break;
		case "22":
			score+=16;
			break;
		case "23":
			score+=16;
			break;
		case "24":
			score+=16;
			break;
		case "25":
			score+=16;
			break;
		case "26":
			score+=16;
			break;
		case "27":
			score+=16;
			break;
		case "28":
			score+=16;
			break;
		case "29":
			score+=16;
			break;
		case "30":
			score+=16;
			break;
		case "31":
			score+=16;
			break;
		case "32":
			score+=16;
			break;
		case "33":
			score+=16;
			break;
		case "34":
			score+=16;
			break;
		case "35":
			score+=16;
			break;
		case "36":
			score+=14;
			break;
		case "37":
			score+=12;
			break;
		case "38":
			score+=10;
			break;
		case "39":
			score+=8;
			break;
		case "40":
			score+=6;
			break;
		case "41":
			score+=4;
			break;
		case "42":
			score+=2;
			break;
			
		default:
			break;
		}
		//第三题  子女数量
		String[] q3 = StaticMethod.nullObject2String(questionMain.get("question3")).split(",");
		//子女得分
		int childScore = 4*Integer.parseInt(q3[0])+2*Integer.parseInt(q3[1])>8?8:4*Integer.parseInt(q3[0])+2*Integer.parseInt(q3[1]);
		//孩子分
		rescore.put("childScore", childScore);
		//第四题  学历
		switch (StaticMethod.nullObject2String(questionMain.get("question4"))) {
		case "博士":
			score+=14;
			break;
		case "硕士":
			score+=12;
			break;
		case "双学历":
			score+=10;
			break;
		case "本科（4年制）":
			score+=10;
			break;
		case "本科（3年制）":
			score+=10;
			break;
		case "本科（2年制）":
			score+=6;
			break;
		case "本科（1年制）":
			score+=4;
			break;
		case "专科（文科）":
			score+=4;
			break;
		case "专科（理科）":
			score+=8;
			break;
		case "普通高中":
			score+=2;
			break;
		case "职业高中":
			score+=6;
			break;
		case "初中及以下":
			score+=0;
			break;
		default:
			break;
		}
		
		//第五题  QSW省无职业要求  只需要计算最近六年工作时间
		JSONArray q5 = (JSONArray) questionMain.get("question5");
		int workTime = 0;
		for(int i=0;i<q5.size();i++){
			JSONObject answer = q5.getJSONObject(i);
			String timeline = StaticMethod.nullObject2String(answer.get("time"));
			String[] times = timeline.split("至");
			workTime += Util.getTime6year(times);
		}
		
		//计算工作年限得分
		double workYear = workTime/12;
		if(workYear>=6){
			score += 8;
		}else if(workYear>=5){
			score += 8;
		}else if(workYear>=4){
			score += 8;
		}else if(workYear>=3){
			score += 6;
		}else if(workYear>=2){
			score += 6;
		}else if(workYear>=1){
			score += 4;
		}else if(workYear>=0.5){
			score += 4;
		}
			
		
		
		//第六题
		JSONObject q6 = (JSONObject) questionMain.get("question6");
		int listeningEnglish = Util.getCLBtoListening(StaticMethod.nullObject2String(q6.get("listening")));
		int speakingEnglish = Util.getCLBtoSpeaking(StaticMethod.nullObject2String(q6.get("speaking")));
		int readingEnglish = Util.getCLBtoReading(StaticMethod.nullObject2String(q6.get("reading")));
		int writingEnglish = Util.getCLBtoWriting(StaticMethod.nullObject2String(q6.get("writing")));
		
		//第七题 计算法语得分
		JSONObject q7 = (JSONObject) questionMain.get("question7");
		String listeningFrench = Util.getBCtoFrench(StaticMethod.nullObject2String(q7.get("listening")));
		String speakingFrench = Util.getBCtoFrench(StaticMethod.nullObject2String(q7.get("speaking")));
		String readingFrench = Util.getBCtoFrench(StaticMethod.nullObject2String(q7.get("reading")));
		String writingFrench = Util.getBCtoFrench(StaticMethod.nullObject2String(q7.get("writing")));
		//语言得分
		int languageScore = languageRulePrimary(listeningEnglish,speakingEnglish,readingEnglish,writingEnglish,listeningFrench,speakingFrench,readingFrench,writingFrench);
		rescore.put("languageScore", languageScore);//
		//魁省财力（每个人都有）
		score += 1;
		//是否在魁北克学习三个月
		if("是".equals(StaticMethod.nullObject2String(questionMain.get("learn")))){
			score += 5;
		}
		
		//当未通过时升档
		
		
		//英语升档+2
		listeningEnglish +=2;
		speakingEnglish +=2;
		readingEnglish +=2;
		writingEnglish +=2;
		
		//法语升档+1
		//判断是否会法语
		if("B1及以下".equals(listeningFrench)||"B1及以下".equals(speakingFrench)||"B1及以下".equals(readingFrench)||"B1及以下".equals(writingFrench)){
		}else{
			//升档
			listeningFrench = getUpFrench(StaticMethod.nullObject2String(q7.get("listening")));
			speakingFrench = getUpFrench(StaticMethod.nullObject2String(q7.get("speaking")));
			readingFrench = getUpFrench(StaticMethod.nullObject2String(q7.get("reading")));
			writingFrench = getUpFrench(StaticMethod.nullObject2String(q7.get("writing")));
		}
		//升档后语言分
		int languageScoreUp = languageRulePrimary(listeningEnglish,speakingEnglish,readingEnglish,writingEnglish,listeningFrench,speakingFrench,readingFrench,writingFrench);
		//总分增加5分
		rescore.put("languageScoreUp", languageScoreUp+5);//
		
		//判断qsw专业填写
		String specialtyStr = StaticMethod.nullObject2String(questionMain.get("specialty"));
		rescore.put("specialtyScore", 0);
		if(!"[]".equals(specialtyStr)){
			JSONArray specialtyArr = JSONArray.parseArray(specialtyStr);
			String condition = "";
			for(int i=0;i<specialtyArr.size();i++){
				condition += "or profession_cn_name = '"+StaticMethod.nullObject2String(specialtyArr.get(i))+"' ";
			}
			List list = markingOLMapper.queryQSWprofessionByName(condition.substring(2));
			if(list.size()>0){
				Map map = (Map) list.get(0);
				rescore.put("specialtyScore", (int)map.get("primary_score"));
			}
			
		}
		
		
		//随便一个主要语言
		rescore.put("language", "英语");
		rescore.put("score", score);//除语言外得分
		
		
		
		return rescore;
	}
	
	
	
	/**
	 * 获取QSW省规则下得分（副申请）
	 * @return
	 */
	public static JSONObject getQSWScoretoSecondary(JSONObject questionMain){
		JSONObject rescore = new JSONObject();//
		//副申请得分
		int score = 0;
		//第二题 年龄
		int year = 0;
		if(!"".equals(StaticMethod.nullObject2String(questionMain.get("question2")))){
			year = Integer.parseInt(StaticMethod.nullObject2String(questionMain.get("question2")));
		}
		if(year>=18&&year<36){
			score += 3;
		}else if(year>=36&&year<40){
			score += 2;
		}else if(year>=40&&year<43){
			score += 1;
		}
		//第四题  学历
		switch (StaticMethod.nullObject2String(questionMain.get("question4"))) {
		case "博士":
			score+=4;
			break;
		case "硕士":
			score+=4;
			break;
		case "双学历":
			score+=3;
			break;
		case "本科（4年制）":
			score+=3;
			break;
		case "本科（3年制）":
			score+=3;
			break;
		case "本科（2年制）":
			score+=2;
			break;
		case "本科（1年制）":
			score+=1;
			break;
		case "专科（文科）":
			score+=1;
			break;
		case "专科（理科）":
			score+=3;
			break;
		case "普通高中":
			score+=1;
			break;
		case "职业高中":
			score+=2;
			break;
		case "初中及以下":
			score+=0;
			break;
		default:
			break;
		}
		
		//第七题 计算法语得分
		int frenchScore = 0;//法语部分得分
		JSONObject q7 = (JSONObject) questionMain.get("question7");
		String frenchlistening = Util.getBCtoFrench(StaticMethod.nullObject2String(q7.get("listening")));
		String frenchspeaking = Util.getBCtoFrench(StaticMethod.nullObject2String(q7.get("speaking")));
		if("B2".equals(frenchlistening)){
			frenchScore += 2;
		}else if("C1".equals(frenchlistening)){
			frenchScore += 3;
		}else if("C2".equals(frenchlistening)){
			frenchScore += 3;
		}
		if("B2".equals(frenchspeaking)){
			frenchScore += 2;
		}else if("C1".equals(frenchspeaking)){
			frenchScore += 3;
		}else if("C2".equals(frenchspeaking)){
			frenchScore += 3;
		}
		rescore.put("languageScore", frenchScore);//
		//语言升档
		//判断是否会法语
		if("B1及以下".equals(frenchlistening)||"B1及以下".equals(frenchspeaking)){
		}else{
			//升档
			frenchlistening = Util.getBCtoFrench(getUpFrench(StaticMethod.nullObject2String(q7.get("listening"))));
			frenchspeaking = Util.getBCtoFrench(getUpFrench(StaticMethod.nullObject2String(q7.get("speaking"))));
		}
		//升档后语言分
		int languageScoreUp = 0;
		if("B2".equals(frenchlistening)){
			languageScoreUp += 2;
		}else if("C1".equals(frenchlistening)){
			languageScoreUp += 3;
		}else if("C2".equals(frenchlistening)){
			languageScoreUp += 3;
		}
		if("B2".equals(frenchspeaking)){
			languageScoreUp += 2;
		}else if("C1".equals(frenchspeaking)){
			languageScoreUp += 3;
		}else if("C2".equals(frenchspeaking)){
			languageScoreUp += 3;
		}
		
		//判断qsw专业填写
		String specialtyStr = StaticMethod.nullObject2String(questionMain.get("specialty"));
		rescore.put("specialtyScore", 0);
		if(!"[]".equals(specialtyStr)){
			JSONArray specialtyArr = JSONArray.parseArray(specialtyStr);
			String condition = "";
			for(int i=0;i<specialtyArr.size();i++){
				condition += "or profession_cn_name = '"+StaticMethod.nullObject2String(specialtyArr.get(i))+"' ";
			}
			List list = markingOLMapper.queryQSWprofessionByName(condition.substring(2));
			if(list.size()>0){
				Map map = (Map) list.get(0);
				rescore.put("specialtyScore", (int)map.get("secondary_score"));
			}
		}
		
		//总分增加5分
		rescore.put("languageScoreUp", languageScoreUp);//
		rescore.put("score", score);//除语言外得分
		
		//升档得分
		return rescore;
	}
	
	
	/**
	 * 获取升档法语
	 * @param french
	 * @return
	 */
	public static String getUpFrench(String french){
		switch (french) {
		case "高":
			return "高";
		case "中":
			return "高";
		case "低":
			return "中";
		case "入门":
			return "低";
		case "不会":
			return "入门";

		default:
			return french;
		}
		
	}
	
	/**
	 * 获取主申语言得分  （QSW省没有主次语言一说）
	 * @param listeningEnglish
	 * @param speakingEnglish
	 * @param readingEnglish
	 * @param writingEnglish
	 * @param listeningFrench
	 * @param speakingFrench
	 * @param readingFrench
	 * @param writingFrench
	 * @return
	 */
	public static int languageRulePrimary(int listeningEnglish,int speakingEnglish,int readingEnglish,int writingEnglish,String listeningFrench,String speakingFrench,String readingFrench,String writingFrench){
		//英语得分
		int englishScore = 0;
		//计算听得分
		switch (listeningEnglish) {
		case 5:
			englishScore += 1;
			break;
		case 6:
			englishScore += 1;
			break;
		case 7:
			englishScore += 1;
			break;
		case 8:
			englishScore += 1;
			break;
		case 9:
			englishScore += 2;
			break;
		case 10:
			englishScore += 2;
			break;
		case 11:
			englishScore += 2;
			break;
		case 12:
			englishScore += 2;
			break;
		case 13:
			englishScore += 2;
			break;
		default:
			break;
		}
		//计算说得分
		switch (speakingEnglish) {
		case 5:
			englishScore += 1;
			break;
		case 6:
			englishScore += 1;
			break;
		case 7:
			englishScore += 1;
			break;
		case 8:
			englishScore += 1;
			break;
		case 9:
			englishScore += 2;
			break;
		case 10:
			englishScore += 2;
			break;
		case 11:
			englishScore += 2;
			break;
		case 12:
			englishScore += 2;
			break;
		case 13:
			englishScore += 2;
			break;
		default:
			break;
		}
		//计算读得分
		if(readingEnglish>=5){
			englishScore +=1;
		}
		//计算写得分
		if(writingEnglish>=5){
			englishScore +=1;
		}
		
		//计算法语得分
		int frenchScore = 0;
		//听
		switch (listeningFrench) {
		case "B2":
			frenchScore += 5;
			break;
		case "C1":
			frenchScore += 6;
			break;
		case "C2":
			frenchScore += 7;
			break;
		default:
			break;
		}
		//说
		switch (speakingFrench) {
		case "B2":
			frenchScore += 5;
			break;
		case "C1":
			frenchScore += 6;
			break;
		case "C2":
			frenchScore += 7;
			break;
		default:
			break;
		}
		//读
		switch (readingFrench) {
		case "B2":
			frenchScore += 1;
			break;
		case "C1":
			frenchScore += 1;
			break;
		case "C2":
			frenchScore += 1;
			break;
		default:
			break;
		}
		//写
		switch (writingFrench) {
		case "B2":
			frenchScore += 1;
			break;
		case "C1":
			frenchScore += 1;
			break;
		case "C2":
			frenchScore += 1;
			break;
		default:
			break;
		}
		
		return englishScore+frenchScore;
		
	}

}
