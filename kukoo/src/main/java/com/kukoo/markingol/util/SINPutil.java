package com.kukoo.markingol.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.kukoo.base.util.StaticMethod;

public class SINPutil {
	
	public static JSONObject getSPIN(JSONArray question) throws ParseException{
		int score = 0;//总得分
		JSONObject reJson = new JSONObject();//返回json
		reJson.put("projectName", "萨省技术移民");
		reJson.put("country", "加拿大");
		reJson.put("pass", 60);
		reJson.put("scoreIntro", "萨省技术移民评分标准满分100分，采用抢名额的方式进行申请；要求打分达到60分，同时满足萨省紧缺职业等其他要求。");
		reJson.put("capital", "★☆☆");
		reJson.put("period", "24个月左右");
		reJson.put("visaType", "永久居民");
		reJson.put("projectType", "技术移民");
		
		JSONObject questionPrimary = question.getJSONObject(0);//获取主申请人答题
		JSONObject scorePrimary = getSINPScoretoPrimary(questionPrimary);//正常主次主得分
		if("有".equals(StaticMethod.nullObject2String(questionPrimary.get("question1")))){//有配偶时才获取副申请
			JSONObject questionSecondary = question.getJSONObject(1);//获取副申请人答题
			JSONObject scorePrimary2 = getSINPScoretoPrimary(questionSecondary);//主次交换主得分
			//正常主次总成绩
			int normalPSscore = scorePrimary.getIntValue("score")+scorePrimary.getIntValue("languageScore");
			//交换主次总成绩
			int exchangePSscore = scorePrimary2.getIntValue("score")+scorePrimary2.getIntValue("languageScore");
			//正常主次升档总成绩
			int normalPSupscore = scorePrimary.getIntValue("score")+scorePrimary.getIntValue("languageScoreUp");
			//交换主次升档总成绩
			int exchangePSupscore = scorePrimary2.getIntValue("score")+scorePrimary2.getIntValue("languageScoreUp");
			//是否通过flag
			int psFlag = 0;
			//正常主次未通过申请
			if(scorePrimary.getIntValue("score")+scorePrimary.getIntValue("languageScore")<60){
				//主次调换
				if(scorePrimary2.getIntValue("score")+scorePrimary2.getIntValue("languageScore")<60){
					//正常主次语言升档
					if(scorePrimary.getIntValue("score")+scorePrimary.getIntValue("languageScoreUp")<60){
						//主次调换语言升档
						if(scorePrimary2.getIntValue("score")+scorePrimary2.getIntValue("languageScoreUp")<60){
						}else{
							//升档通过
							psFlag = 2;
						}
					}else{
						//升档通过
						psFlag = 2;
					}
				}else{
					//正常通过
					psFlag = 1;
				}
			}else{//通过
				//正常通过
				psFlag = 1;
			}
			if(psFlag==1){//正常通过
				//比较正常分数与主次交换分数
				if(normalPSscore>=exchangePSscore){
					//主申请人
					reJson.put("major", "您");
					//通过成绩
					reJson.put("score", scorePrimary.getIntValue("score")+scorePrimary.getIntValue("languageScore"));
					//主申语言
					reJson.put("language", scorePrimary.get("language"));
					//是否升档 0：否
					reJson.put("ifUp",0);
					//是否交换主次 0：否
					reJson.put("ifSwap",0);
					//通过方式（绿手green||黄手yellow||未通过none）
					reJson.put("passType","green");
				}else{
					//主申请人
					reJson.put("major", "配偶");
					//成绩
					reJson.put("score", scorePrimary2.getIntValue("score")+scorePrimary2.getIntValue("languageScore"));
					//主申语言
					reJson.put("language", scorePrimary.get("language"));
					//是否升档 0：否
					reJson.put("ifUp",0);
					//是否交换主次 0：否
					reJson.put("ifSwap",1);
					//通过方式（绿手green||黄手yellow||未通过none）
					reJson.put("passType","green");
				}
			}else if(psFlag==2){//升档通过
				if(normalPSupscore>=exchangePSupscore){//正常升档不小于交换升档	
					//主申请人
					reJson.put("major", "您");
					//成绩
					reJson.put("score", scorePrimary.getIntValue("score")+scorePrimary.getIntValue("languageScore"));
					//主申语言
					reJson.put("language", scorePrimary.get("language"));
					//是否升档 0：否
					reJson.put("ifUp",1);
					//是否交换主次 0：否
					reJson.put("ifSwap",0);
					//通过方式（绿手green||黄手yellow||未通过none）
					reJson.put("passType","yellow");
				}else{
					//主申请人
					reJson.put("major", "配偶");
					//成绩
					reJson.put("score", scorePrimary2.getIntValue("score")+scorePrimary2.getIntValue("languageScore"));
					//主申语言
					reJson.put("language", scorePrimary.get("language"));
					//是否升档 0：否
					reJson.put("ifUp",1);
					//是否交换主次 0：否
					reJson.put("ifSwap",1);
					//通过方式（绿手green||黄手yellow||未通过none）
					reJson.put("passType","yellow");
				}
			}else{//未通过
				//主申请人
				reJson.put("major", "配偶");
				//成绩
				reJson.put("score", scorePrimary.getIntValue("score")+scorePrimary.getIntValue("languageScore"));
				//主申语言
				reJson.put("language", scorePrimary.get("language"));
				//通过方式（绿手green||黄手yellow||未通过none）
				reJson.put("passType","none");
			}
		}else{//单身
			//正常主次未通过申请
			if(scorePrimary.getIntValue("score")+scorePrimary.getIntValue("languageScore")<60){
				//正常主次语言升档
				if(scorePrimary.getIntValue("score")+scorePrimary.getIntValue("languageScoreUp")<60){
					//主申请人
					reJson.put("major", "您");
					//成绩
					reJson.put("score", scorePrimary.getIntValue("score")+scorePrimary.getIntValue("languageScore"));
					//主申语言
					reJson.put("language", scorePrimary.get("language"));
					//通过方式（绿手green||黄手yellow||未通过none）
					reJson.put("passType","none");
				}else{
					//主申请人
					reJson.put("major", "您");
					//成绩
					reJson.put("score", scorePrimary.getIntValue("score")+scorePrimary.getIntValue("languageScore"));
					//主申语言
					reJson.put("language", scorePrimary.get("language"));
					//是否升档 0：否
					reJson.put("ifUp",1);
					//是否交换主次 0：否
					reJson.put("ifSwap",0);
					//通过方式（绿手green||黄手yellow||未通过none）
					reJson.put("passType","yellow");
				}
				
			}else{//通过
				//主申请人
				reJson.put("major", "您");
				//通过成绩
				reJson.put("score", scorePrimary.getIntValue("score")+scorePrimary.getIntValue("languageScore"));
				//主申语言
				reJson.put("language", scorePrimary.get("language"));
				//是否升档 0：否
				reJson.put("ifUp",0);
				//是否交换主次 0：否
				reJson.put("ifSwap",0);
				//通过方式（绿手green||黄手yellow||未通过none）
				reJson.put("passType","green");
			}
		}
		
		return reJson;
	}
	/**
	 * 获取SINP省规则下得分（主申请）
	 * @return
	 * @throws ParseException 
	 */
	public static JSONObject getSINPScoretoPrimary(JSONObject questionMain) throws ParseException{
		JSONObject rescore = new JSONObject();
		JSONObject failJson = new JSONObject();
		failJson.put("score", 0);
		failJson.put("language", "English");//
		failJson.put("languageScore", 0);//
		failJson.put("languageScoreUp", 0);//
		//主申请得分
		int score = 0;
		//第二题
		switch (StaticMethod.nullObject2String(questionMain.get("question2"))) {
		case "18":
			score+=8;
			break;
		case "19":
			score+=8;
			break;
		case "20":
			score+=8;
			break;
		case "21":
			score+=8;
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
			score+=10;
			break;
		case "36":
			score+=10;
			break;
		case "37":
			score+=10;
			break;
		case "38":
			score+=10;
			break;
		case "39":
			score+=10;
			break;
		case "40":
			score+=10;
			break;
		case "41":
			score+=10;
			break;
		case "42":
			score+=10;
			break;
		case "43":
			score+=10;
			break;
		case "44":
			score+=10;
			break;
		case "45":
			score+=10;
			break;
		case "46":
			score+=8;
			break;
		case "47":
			score+=8;
			break;
		case "48":
			score+=8;
			break;
		case "49":
			score+=8;
			break;
		case "50":
			score+=8;
			break;
		case "50+":
			score+=0;
			break;
			
		default:
			break;
		}
		//第三题
//		String[] q2 = StaticMethod.nullObject2String(questionMain.get("question3")).split(",");
		//第四题
		switch (StaticMethod.nullObject2String(questionMain.get("question4"))) {
		case "博士":
			score+=23;
			break;
		case "硕士":
			score+=23;
			break;
		case "双学历":
			score+=20;
			break;
		case "本科（4年制）":
			score+=20;
			break;
		case "本科（3年制）":
			score+=20;
			break;
		case "本科（2年制）":
			score+=15;
			break;
		case "本科（1年制）":
			score+=12;
			break;
		case "专科（文科）":
			score+=15;
			break;
		case "专科（理科）":
			score+=15;
			break;
		default:
			break;
		}
		
		//第五题 
		//职业合格标记
		int careerFlag = 0;
		JSONArray q5 = (JSONArray) questionMain.get("question5");
		
		//最近五年工作时间
		int workTime5_now = 0;
		//过去十年中前五年工作时间
		int workTime10_5 = 0;
		
		//检测职业是否都不符合要求
		for(int i=0;i<q5.size();i++){
			JSONObject answer = q5.getJSONObject(i);
			String timeline = StaticMethod.nullObject2String(answer.get("time"));
			String[] times = timeline.split("至");
			switch (StaticMethod.nullObject2String(answer.get("profession"))) {
			case "制造业工程师、经理类":
				careerFlag+=1;
				workTime5_now += Util.getTime5year(times);
				workTime10_5 += Util.getTimeBefore5year(times);
				break;
			case "维修/操作技师、技工类":
				careerFlag+=1;
				workTime5_now += Util.getTime5year(times);
				workTime10_5 += Util.getTimeBefore5year(times);
				break;
			case "农业、园艺类":
				careerFlag+=1;
				workTime5_now += Util.getTime5year(times);
				workTime10_5 += Util.getTimeBefore5year(times);
				break;
			case "企业咨询类":
				careerFlag+=1;
				workTime5_now += Util.getTime5year(times);
				workTime10_5 += Util.getTimeBefore5year(times);
				break;
			case "土地测量类":
				careerFlag+=1;
				workTime5_now += Util.getTime5year(times);
				workTime10_5 += Util.getTimeBefore5year(times);
				break;
			case "医疗、生物类":
				careerFlag+=1;
				workTime5_now += Util.getTime5year(times);
				workTime10_5 += Util.getTimeBefore5year(times);
				break;
			case "幼教类":
				careerFlag+=1;
				workTime5_now += Util.getTime5year(times);
				workTime10_5 += Util.getTimeBefore5year(times);
				break;
			case "地质矿产类":
				careerFlag+=1;
				workTime5_now += Util.getTime5year(times);
				workTime10_5 += Util.getTimeBefore5year(times);
				break;
			case "计算机类":
				careerFlag+=1;
				workTime5_now += Util.getTime5year(times);
				workTime10_5 += Util.getTimeBefore5year(times);
				break;
			case "社会及社区工作":
				careerFlag+=1;
				workTime5_now += Util.getTime5year(times);
				workTime10_5 += Util.getTimeBefore5year(times);
				break;
			case "土木、建筑类":
				careerFlag+=1;
				workTime5_now += Util.getTime5year(times);
				workTime10_5 += Util.getTimeBefore5year(times);
				break;
			default:
				break;
			}
		}
		if(careerFlag==0){//都不符合时得分为0  
			return failJson;
		}else{//计算如果职业符合情况加分
			double workYear5_now = workTime5_now/12;
			if(workYear5_now>=5){
				score += 10;
			}else if(workYear5_now>=4){
				score += 8;
			}else if(workYear5_now>=3){
				score += 6;
			}else if(workYear5_now>=2){
				score += 4;
			}else if(workYear5_now>=1){
				score += 2;
			}
			
			double workYear10_5 = workTime10_5/12;
			if(workYear10_5>=5){
				score += 5;
			}else if(workYear10_5>=4){
				score += 4;
			}else if(workYear10_5>=3){
				score += 3;
			}else if(workYear10_5>=2){
				score += 2;
			}else if(workYear10_5>=1){
				score += 0;
			}
			
		}
		
		
		//第六题
		JSONObject q6 = (JSONObject) questionMain.get("question6");
		//英语成绩换算CLB
		int listeningEnglish = Util.getCLBtoListening(StaticMethod.nullObject2String(q6.get("listening")));
		int speakingEnglish = Util.getCLBtoSpeaking(StaticMethod.nullObject2String(q6.get("speaking")));
		int readingEnglish = Util.getCLBtoReading(StaticMethod.nullObject2String(q6.get("reading")));
		int writingEnglish = Util.getCLBtoWriting(StaticMethod.nullObject2String(q6.get("writing")));
		//获取整体英语成绩
		int englishMinLanguage = getMinLanguage(listeningEnglish,speakingEnglish,readingEnglish,writingEnglish);
		//英语得分
		int englishScore = language1Rule(englishMinLanguage);
		//第七题
		JSONObject q7 = (JSONObject) questionMain.get("question7");
		//法语成绩换算CLB
		int listeningFrench = Util.getCLBtoFrench(StaticMethod.nullObject2String(q7.get("listening")));
		int speakingFrench = Util.getCLBtoFrench(StaticMethod.nullObject2String(q7.get("speaking")));
		int readingFrench = Util.getCLBtoFrench(StaticMethod.nullObject2String(q7.get("reading")));
		int writingFrench = Util.getCLBtoFrench(StaticMethod.nullObject2String(q7.get("writing")));
		//获取法语整体成绩
		int frenchMinLanguage = getMinLanguage(listeningFrench,speakingFrench,readingFrench,writingFrench);
		//法语得分
		int frenchScore = language1Rule(frenchMinLanguage);
		//比较英语法语成绩
		if(englishScore>=frenchScore){
			//英语作为主语言
			rescore.put("language", "英语");//
			//用户选择的主语言作为主语言时分数
			rescore.put("languageScore", englishScore);//
			
		}else{
			//法语作为主语言
			rescore.put("language", "法语");//
			//用户选择的副语言作为主语言时分数
			rescore.put("languageScore", frenchScore);//
		}
		
		//升档算法
		if("英语".equals(rescore.get("language"))){
			//用户升档后得分      升档后的英语的分
			rescore.put("languageScoreUp", language1Rule(englishMinLanguage+2));//
		}else{
			//用户升档后得分      升档后的法语得分
			rescore.put("languageScoreUp", language1Rule(frenchMinLanguage+1));//
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
	/**
	 * 获取语言成绩
	 * @param listening
	 * @param speaking
	 * @param reading
	 * @param writing
	 * @return int   规则1下成绩
	 */
	public static int language1Rule(int minScore){
		
		//计算成绩
		int score = 0;
		switch (minScore) {
		case 13:
			score += 20;
			break;
		case 12:
			score += 20;
			break;
		case 11:
			score += 20;
			break;
		case 10:
			score += 20;
			break;
		case 9:
			score += 20;
			break;
		case 8:
			score += 20;
			break;
		case 7:
			score += 18;
			break;
		case 6:
			score += 16;
			break;
		case 5:
			score += 14;
			break;
		case 4:
			score += 12;
			break;

		default:
			break;
		}
				
		return score;
	}
}
