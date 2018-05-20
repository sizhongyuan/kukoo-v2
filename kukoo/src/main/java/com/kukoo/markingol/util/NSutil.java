package com.kukoo.markingol.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.kukoo.base.util.StaticMethod;

public class NSutil {
	
	
	/**
	 *  获取NS省得分
	 * @param question
	 * @return
	 * @throws ParseException
	 */
	public static JSONObject getNS(JSONArray question) throws ParseException{
		JSONObject reJson = new JSONObject();//返回json
		reJson.put("projectName", "新斯科舍省技术移民");
		reJson.put("country", "加拿大");
		reJson.put("pass", 67);
		reJson.put("intro", "该项目属于省提名移民项目；首先经新省移民局审批获得省提名，再经联邦移民局进行健康及安全等审核。申请人须表明有意向居住在提名省份；获得永居身份后通常可迁徙至加拿大任意地区居住。该项目采用快速通道（Express Entry, 'EE'）系统进行申请，处理速度相对较快，但名额较少需要抢名额；同时，申请人职业须在新省紧缺职业列表上。");
		reJson.put("capital", "5万");
		reJson.put("period", "3年");
		reJson.put("visaType", "PR");
		reJson.put("projectType", "技术移民");
		
		JSONObject questionPrimary = question.getJSONObject(0);//获取主申请人答题
		if("有".equals(StaticMethod.nullObject2String(questionPrimary.get("question1")))){//有配偶时才获取副申请
			JSONObject questionSecondary = question.getJSONObject(1);//获取副申请人答题
			JSONObject scorePrimary = getNSScoretoPrimary(questionPrimary);//正常主次主得分
			JSONObject scoreSecondary = getNSScoretoSecondary(questionSecondary);//正常主次副分
			JSONObject scorePrimary2 = getNSScoretoPrimary(questionSecondary);//主次交换主得分
			JSONObject scoreSecondary2 = getNSScoretoSecondary(questionPrimary);//主次交换副得分
			//正常主次未通过申请language
			if(scorePrimary.getIntValue("score")+scorePrimary.getIntValue("languageScore")+scoreSecondary.getIntValue("score")+scoreSecondary.getIntValue("languageScore")<67){
				//主次交换是否通过
				if(scorePrimary2.getIntValue("score")+scorePrimary2.getIntValue("languageScore")+scoreSecondary2.getIntValue("score")+scoreSecondary2.getIntValue("languageScore")<67){
					//升档后是否通过
					if(scorePrimary.getIntValue("score")+scorePrimary.getIntValue("languageScoreUp")+scoreSecondary.getIntValue("languageScoreUp")+scoreSecondary.getIntValue("score")<67){
						//主次交换后升档是否通过
						if(scorePrimary2.getIntValue("score")+scorePrimary2.getIntValue("languageScoreUp")+scoreSecondary2.getIntValue("score")+scoreSecondary2.getIntValue("languageScoreUp")<67){
							reJson.put("score", scorePrimary.getIntValue("score")+scorePrimary.getIntValue("languageScoreUp")+scoreSecondary.getIntValue("score")+scoreSecondary.getIntValue("languageScoreUp"));
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
							reJson.put("score", scorePrimary2.getIntValue("score")+scorePrimary2.getIntValue("languageScoreUp")+scoreSecondary2.getIntValue("score")+scoreSecondary2.getIntValue("languageScoreUp"));
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
						reJson.put("score", scorePrimary.getIntValue("score")+scorePrimary.getIntValue("languageScoreUp")+scoreSecondary.getIntValue("languageScoreUp")+scoreSecondary.getIntValue("score"));
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
					reJson.put("score", scorePrimary2.getIntValue("score")+scorePrimary2.getIntValue("languageScore")+scoreSecondary2.getIntValue("score")+scoreSecondary2.getIntValue("languageScore"));
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
				reJson.put("score", scorePrimary.getIntValue("score")+scorePrimary.getIntValue("languageScore")+scoreSecondary.getIntValue("score")+scoreSecondary.getIntValue("languageScore"));
				//主申语言
				reJson.put("language", scorePrimary.get("language"));
				//主申工作年限是否再0-1年  在为1 不在为0
				reJson.put("workYearFlag", scorePrimary.getIntValue("workYearFlag"));//
				//是否升档 0：否
				reJson.put("ifUp",0);
				//是否交换主次 0：否
				reJson.put("ifSwap",0);
			}
			
		}else{//只有主申请时
			JSONObject scorePrimary = getNSScoretoPrimary(questionPrimary);//正常主次主得分
			//正常主次未通过申请
			if(scorePrimary.getIntValue("score")+scorePrimary.getIntValue("languageScore")<67){
				//语言升档
				if(scorePrimary.getIntValue("score")+scorePrimary.getIntValue("languageScoreUp")<67){
					//通过方式（绿手green||黄手yellow||未通过none）
					reJson.put("passType","none");
					//主申请人
					reJson.put("major", "您");
					//通过成绩
					reJson.put("score", scorePrimary.getIntValue("score")+scorePrimary.getIntValue("languageScore"));
					//主申语言
					reJson.put("language", scorePrimary.get("language"));
					//主申工作年限是否再0-1年  在为1 不在为0
					reJson.put("workYearFlag", scorePrimary.getIntValue("workYearFlag"));//
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
					reJson.put("score", scorePrimary.getIntValue("score")+scorePrimary.getIntValue("languageScoreUp"));
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
				reJson.put("score", scorePrimary.getIntValue("score")+scorePrimary.getIntValue("languageScore"));
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
	 * 获取NS省规则下得分（主申请）
	 * @param questionMain  用户填写主申请
	 * @return  JSONObject  得分情况json
	 * @throws ParseException
	 */
	public static JSONObject getNSScoretoPrimary(JSONObject questionMain) throws ParseException{
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
		//第二题 年龄
		switch (StaticMethod.nullObject2String(questionMain.get("question2"))) {
		case "18-":
			return failJson;
		case "18":
			score+=12;
			break;
		case "19":
			score+=12;
			break;
		case "20":
			score+=12;
			break;
		case "21":
			score+=12;
			break;
		case "22":
			score+=12;
			break;
		case "23":
			score+=12;
			break;
		case "24":
			score+=12;
			break;
		case "25":
			score+=12;
			break;
		case "26":
			score+=12;
			break;
		case "27":
			score+=12;
			break;
		case "28":
			score+=12;
			break;
		case "29":
			score+=12;
			break;
		case "30":
			score+=12;
			break;
		case "31":
			score+=12;
			break;
		case "32":
			score+=12;
			break;
		case "33":
			score+=12;
			break;
		case "34":
			score+=12;
			break;
		case "35":
			score+=12;
			break;
		case "36":
			score+=11;
			break;
		case "37":
			score+=10;
			break;
		case "38":
			score+=9;
			break;
		case "39":
			score+=8;
			break;
		case "40":
			score+=7;
			break;
		case "41":
			score+=6;
			break;
		case "42":
			score+=5;
			break;
		case "43":
			score+=4;
			break;
		case "44":
			score+=3;
			break;
		case "45":
			score+=2;
			break;
		case "46":
			score+=1;
			break;
		case "47":
			score+=0;
			break;
		case "48":
			score+=0;
			break;
		case "49":
			score+=0;
			break;
		case "50":
			score+=0;
			break;
		case "50+":
			score+=0;
			break;
			
		default:
			break;
		}
		//第三题  NS省无需第三题判定
		//第四题   学历  
		switch (StaticMethod.nullObject2String(questionMain.get("question4"))) {
		case "博士":
			score+=25;
			break;
		case "硕士":
			score+=23;
			break;
		case "双学历":
			score+=22;
			break;
		case "本科（4年制）":
			score+=21;
			break;
		case "本科（3年制）":
			score+=21;
			break;
		case "本科（2年制）":
			score+=19;
			break;
		case "本科（1年制）":
			score+=15;
			break;
		case "专科（文科）":
			score+=21;
			break;
		case "专科（理科）":
			score+=21;
			break;
		case "普通高中":
			score+=21;
			break;
		case "职业高中":
			score+=21;
			break;
		case "初中及以下":
			score+=0;
			break;
		default:
			break;
		}
		
		//第五题   职业   申请人必须有需要职业  若所有职业不在下列case中则总分归零 
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-mm");  
		//职业合格标记  轮询所有职业后 若标记为0 则总分归零
		int careerFlag = 0;
		JSONArray q5 = (JSONArray) questionMain.get("question5");
		int workTime = 0;
		//检测职业是否都不符合要求
		for(int i=0;i<q5.size();i++){
			JSONObject answer = q5.getJSONObject(i);
			String timeline = StaticMethod.nullObject2String(answer.get("time"));
			String[] times = timeline.split("至");
			switch (StaticMethod.nullObject2String(answer.get("profession"))) {
			case "计算机类":
				careerFlag+=1;
				workTime += Util.getTime6year(times);
				break;
			case "社会及社区工作":
				careerFlag+=1;
				workTime += Util.getTime6year(times);
				break;
			case "土木、建筑类":
				careerFlag+=1;
				workTime += Util.getTime6year(times);
				break;
			case "大专及职业院校教师":
				careerFlag+=1;
				workTime += Util.getTime6year(times);
				break;
			case "法律相关":
				careerFlag+=1;
				workTime += Util.getTime6year(times);
				break;
			case "广告市场":
				careerFlag+=1;
				workTime += Util.getTime6year(times);
				break;
			case "行政助理":
				careerFlag+=1;
				workTime += Util.getTime6year(times);
				break;
			case "护士":
				careerFlag+=1;
				workTime += Util.getTime6year(times);
				break;
			case "金融财会类":
				careerFlag+=1;
				workTime += Util.getTime6year(times);
				break;
			default:
				break;
			}
		}
		//工作时间再0-1年标记
		int workYearFlag = 0;
		if(careerFlag==0){//都不符合时得分为0  
			return failJson;
		}else{//计算如果职业符合情况加分
			double workYear = workTime/12;
			if(workYear>=6){
				score += 15;
			}else if(workYear>=5||workYear>=4){
				score += 13;
			}else if(workYear>=3||workYear>=2){
				score += 11;
			}else if(workYear>=1){
				score += 9;
			}else if(workYear>=0&&workYear<=1){
				score += 9;
				workYearFlag = 1;
			}
			
		}
		
		
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
		//获取语言2规则（英语为主语时）得分
		int language2Score = language2RulePrimary(listeningFrench,speakingFrench,readingFrench,writingFrench);
		//主副语言反转 （法语为主语时）
		//获取语言1规则（法语为主语时）得分
		int relanguage1Score = language1RulePrimary(listeningFrench,speakingFrench,readingFrench,writingFrench);
		//获取语言2规则（法语为主语时）得分
		int relanguage2Score = language2RulePrimary(listeningEnglish,speakingEnglish,readingEnglish,writingEnglish);
		//对比分数
		if(language1Score+language2Score>=relanguage1Score+relanguage2Score){
			//英语作为主语言
			rescore.put("language", "英语");//
			//用户选择的主语言作为主语言时分数
			rescore.put("languageScore", language1Score+language2Score);//
			
		}else{
			//法语作为主语言
			rescore.put("language", "法语");//
			//用户选择的副语言作为主语言时分数
			rescore.put("languageScore", relanguage1Score+relanguage2Score);//
		}
		
		
		
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
			//用户升档后得分      升档后的法语的分+英语得分
			rescore.put("languageScoreUp", languageFrenchUpScore+relanguage2Score);//
		}
		rescore.put("score", score);//除语言外得分
		rescore.put("workYearFlag", workYearFlag);//工作年限在0-1年
		
		
		return rescore;
	}
	
	
	/**
	 * 语言1规则 （主申）
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
			languageOneScore += 4;
			break;
		case 8:
			languageOneScore += 5;
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
		case 7:
			languageOneScore += 4;
			break;
		case 8:
			languageOneScore += 5;
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
		case 7:
			languageOneScore += 4;
			break;
		case 8:
			languageOneScore += 5;
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
		case 7:
			languageOneScore += 4;
			break;
		case 8:
			languageOneScore += 5;
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
	 * 语言2规则 （主申）
	 * @param listening  听
	 * @param speaking	 说
	 * @param reading	读
	 * @param writing	写
	 * @return  int 该语言在规则2下 得分
	 */
	public static int language2RulePrimary(int listening,int speaking,int reading,int writing){
		
		int frenchScore = 0;//法语部分得分
		if(listening>4){
			frenchScore+=1;
		}
		if(speaking>4){
			frenchScore+=1;
		}
		if(reading>4){
			frenchScore+=1;
		}
		if(writing>4){
			frenchScore+=1;
		}
		
		return frenchScore;
		
	}
	
	
	
	/**
	 * 语言1规则 （副申）
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
		if(listening>=4){
			languageOneScore+=5;
		}
		//计算说得分
		if(speaking>=4){
			languageOneScore+=5;
		}
		//计算读得分
		if(reading>=4){
			languageOneScore+=5;
		}
		//计算写得分
		if(writing>=4){
			languageOneScore+=5;
		}
		
		return languageOneScore>=5?5:languageOneScore;
		
	}
	
	
	/**
	 * 语言2规则 （副申）
	 * @param listening  听
	 * @param speaking	 说
	 * @param reading	读
	 * @param writing	写
	 * @return  int 该语言在规则2下 得分
	 */
	public static int language2RuleSecondary(int listening,int speaking,int reading,int writing){
		
		int frenchScore = 0;//法语部分得分
		if(listening>4){
			frenchScore+=5;
		}
		if(speaking>4){
			frenchScore+=5;
		}
		if(reading>4){
			frenchScore+=5;
		}
		if(writing>4){
			frenchScore+=5;
		}
		
		return frenchScore>=5?5:frenchScore;
		
	}
	
	/**
	 * 获取NS省规则下得分（副申请）
	 * @return
	 */
	public static JSONObject getNSScoretoSecondary(JSONObject questionMain){
		//返回得分情况JSON
		JSONObject rescore = new JSONObject();
		//不符合返回
		JSONObject failJson = new JSONObject();
		failJson.put("score", 0);
		failJson.put("language", "English");//
		failJson.put("languageScore", 0);//
		failJson.put("languageScoreUp", 0);//
		//副申请得分
		int score = 0;
		//第五题 
		int careerFlag = 0;
		JSONArray q5 = (JSONArray) questionMain.get("question5");
		int workTime = 0;
		//检测职业是否都不符合要求		
		for(int i=0;i<q5.size();i++){
			JSONObject answer = q5.getJSONObject(i);
			switch (StaticMethod.nullObject2String(answer.get("profession"))) {
			case "计算机类":
				careerFlag+=1;
				break;
			case "社会及社区工作":
				careerFlag+=1;
				break;
			case "土木、建筑类":
				careerFlag+=1;
				break;
			case "大专及职业院校教师":
				careerFlag+=1;
				break;
			case "法律相关":
				careerFlag+=1;
				break;
			case "广告市场":
				careerFlag+=1;
				break;
			case "行政助理":
				careerFlag+=1;
				break;
			case "护士":
				careerFlag+=1;
				break;
			case "金融财会类":
				careerFlag+=1;
				break;
			default:
				break;
			}
		}
		if(careerFlag==0){//都不符合时得分为0  
			return failJson;
		}
		

		//第六题
		int englishScore = 0;//英语部分得分
		//获取副申英语CLB
		JSONObject q6 = (JSONObject) questionMain.get("question6");
		int listeningEnglish = Util.getCLBtoListening(StaticMethod.nullObject2String(q6.get("listening")));
		int speakingEnglish = Util.getCLBtoSpeaking(StaticMethod.nullObject2String(q6.get("speaking")));
		int readingEnglish = Util.getCLBtoReading(StaticMethod.nullObject2String(q6.get("reading")));
		int writingEnglish = Util.getCLBtoWriting(StaticMethod.nullObject2String(q6.get("writing")));
		//第七题 
		int frenchScore = 0;//法语部分得分
		//获取副申法语CLB
		JSONObject q7 = (JSONObject) questionMain.get("question7");
		int listeningFrench = Util.getCLBtoFrench(StaticMethod.nullObject2String(q7.get("listening")));
		int speakingFrench = Util.getCLBtoFrench(StaticMethod.nullObject2String(q7.get("speaking")));
		int readingFrench = Util.getCLBtoFrench(StaticMethod.nullObject2String(q7.get("reading")));
		int writingFrench = Util.getCLBtoFrench(StaticMethod.nullObject2String(q7.get("writing")));
		
		
		//获取语言1规则（英语为主语时）得分 
		int language1Score = language1RuleSecondary(listeningEnglish,speakingEnglish,readingEnglish,writingEnglish);
		//获取语言2规则（英语为主语时）得分
		int language2Score = language2RuleSecondary(listeningFrench,speakingFrench,readingFrench,writingFrench);
		//主副语言反转 （法语为主语时）
		//获取语言1规则（法语为主语时）得分
		int relanguage1Score = language1RuleSecondary(listeningFrench,speakingFrench,readingFrench,writingFrench);
		//获取语言2规则（法语为主语时）得分
		int relanguage2Score = language2RuleSecondary(listeningEnglish,speakingEnglish,readingEnglish,writingEnglish);
		//对比分数
		if(language1Score+language2Score>=relanguage1Score+relanguage2Score){
			//英语作为主语言
			rescore.put("language", "英语");//
			//用户选择的主语言作为主语言时分数
			rescore.put("languageScore", language1Score+language2Score);//
			
		}else{
			//法语作为主语言
			rescore.put("language", "法语");//
			//用户选择的副语言作为主语言时分数
			rescore.put("languageScore", relanguage1Score+relanguage2Score);//
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
			//用户升档后得分      升档后的英语的分+法语得分
			rescore.put("languageScoreUp", languageEnglishUpScore+language2Score);//
		}//判断是否语言都没填写 英语+2
		else if("不会".equals(StaticMethod.nullObject2String(q7.get("listening")))||"不会".equals(StaticMethod.nullObject2String(q7.get("speaking")))||"不会".equals(StaticMethod.nullObject2String(q7.get("reading")))||"不会".equals(StaticMethod.nullObject2String(q7.get("writing")))&&("".equals(StaticMethod.nullObject2String(q6.get("listening")))&&"".equals(StaticMethod.nullObject2String(q6.get("speaking")))&&"".equals(StaticMethod.nullObject2String(q6.get("reading")))&&"".equals(StaticMethod.nullObject2String(q6.get("writing"))))){
			//计算用户英语升档后Clb
			int listeningEnglishUp = listeningEnglish+2>10?10:listeningEnglish+2;
			int speakingEnglishUp = speakingEnglish+2>10?10:speakingEnglish+2;
			int readingEnglishUp = readingEnglish+2>10?10:readingEnglish+2;
			int writingEnglishUp =  writingEnglish+2>10?10:writingEnglish+2;
			//计算升档后英语得分
			languageEnglishUpScore = language1RuleSecondary(listeningEnglishUp,speakingEnglishUp,readingEnglishUp,writingEnglishUp);
			//用户升档后得分      升档后的英语的分+法语得分
			rescore.put("languageScoreUp", languageEnglishUpScore+language2Score);//
		}else{
			//计算用户英语升档后Clb
			int listeningEnglishUp = listeningEnglish+2>10?10:listeningEnglish+2;
			int speakingEnglishUp = speakingEnglish+2>10?10:speakingEnglish+2;
			int readingEnglishUp = readingEnglish+2>10?10:readingEnglish+2;
			int writingEnglishUp =  writingEnglish+2>10?10:writingEnglish+2;
			languageEnglishUpScore = language1RuleSecondary(listeningEnglishUp,speakingEnglishUp,readingEnglishUp,writingEnglishUp);
			//计算用户法语升档后Clb
			int listeningFrenchUp = listeningFrench+1>10?10:listeningFrench+1;
			int speakingFrenchUp = speakingFrench+1>10?10:speakingFrench+1;
			int readingFrenchUp = readingFrench+1>10?10:readingFrench+1;
			int writingFrenchUp =  writingFrench+1>10?10:writingFrench+1;
			//计算升档后法语得分
			int languageFrenchUpScore = language1RuleSecondary(listeningFrenchUp,speakingFrenchUp,readingFrenchUp,writingFrenchUp);
			
			//法语升档分不大于英语升档
			if(languageEnglishUpScore>=languageFrenchUpScore){
				//用户升档后得分      升档后的英语的分+法语得分
				rescore.put("languageScoreUp", languageEnglishUpScore+language2Score);//
			}else{
				//用户升档后得分      升档后的法语得分+英语的分
				rescore.put("languageScoreUp", languageFrenchUpScore+relanguage2Score);//
			}
			
		}
				
				
		rescore.put("score", score);//除语言外得分
		
		return rescore;
	}
	
	
	
	
	

}
