package com.kukoo.markingol.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class Util {
	
	/**
	 * 转换法语听得分至CLB
	 * 
	 * @param french  法语得分
	 * @return int  CLB得分
	 */
	public static int getCLBtoFrench(String french){
		switch (french) {
		case "高":
			return 10;
		case "中":
			return 7;
		case "低":
			return 6;
		case "入门":
			return 5;
		case "不会":
			return 3;

		default:
			return 0;
		}
	}
	
	/**
	 * 转换法语得分 BC
	 * @param french 法语得分  
	 * @return  String  BC得分
	 */
	public static String getBCtoFrench(String french){
		switch (french) {
		case "高":
			return "C2";
		case "中":
			return "B2";
		case "低":
			return "B1";
		case "入门":
			return "B1";
		case "不会":
			return "B1及以下";

		default:
			return "B1及以下";
		}
	}
	
	
	
	
	
	
	
	
	
	/**
	 * 转换雅思听得分至CLB
	 * 
	 * @param listening 雅思听得分	
	 * @return  int		CLB得分
	 */
	public static int getCLBtoListening(String listening){
		if(!"".equals(listening)){
			double sorce = Double.parseDouble(listening);
			if(8.5<=sorce){
				return 10;
			}else if(8.0<=sorce){
				return 9;
			}else if(7.5<=sorce){
				return 8;
			}else if(6.0<=sorce){
				return 7;
			}else if(5.5<=sorce){
				return 6;
			}else if(5.0<=sorce){
				return 5;
			}else if(4.5<=sorce){
				return 4;
			}else{
				return 0;
			}
		}else{
			return 0;
		}
		
	}
	/**
	 * 转换雅思说得分至CLB
	 * 
	 * @param listening  雅思说得分
	 * @return  int		CLB得分
	 */
	public static int getCLBtoSpeaking(String speaking){
		if(!"".equals(speaking)){
			double sorce = Double.parseDouble(speaking);
			if(7.5<=sorce){
				return 10;
			}else if(7.0<=sorce){
				return 9;
			}else if(6.5<=sorce){
				return 8;
			}else if(6.0<=sorce){
				return 7;
			}else if(5.5<=sorce){
				return 6;
			}else if(5.0<=sorce){
				return 5;
			}else if(4.0<=sorce){
				return 4;
			}else{
				return 0;
			}
		}else{
			return 0;
		}
	}
	/**
	 * 转换雅思读得分至CLB
	 * 
	 * @param reading   雅思读得分
	 * @return	int    CLB得分
	 */
	public static int getCLBtoReading(String reading){
		if(!"".equals(reading)){
			double sorce = Double.parseDouble(reading);
			if(8<=sorce){
				return 10;
			}else if(7.0<=sorce){
				return 9;
			}else if(6.5<=sorce){
				return 8;
			}else if(6.0<=sorce){
				return 7;
			}else if(5.0<=sorce){
				return 6;
			}else if(4.0<=sorce){
				return 5;
			}else if(3.5<=sorce){
				return 4;
			}else{
				return 0;
			}
		}else{
			return 0;
		}
	}
	/**
	 * 转换雅思写得分至CLB
	 * 
	 * @param writing  雅思写得分
	 * @return int  CLB得分
	 */
	public static int getCLBtoWriting(String writing){
		if(!"".equals(writing)){
			double sorce = Double.parseDouble(writing);
			if(7.5<=sorce){
				return 10;
			}else if(7.0<=sorce){
				return 9;
			}else if(6.5<=sorce){
				return 8;
			}else if(6.0<=sorce){
				return 7;
			}else if(5.5<=sorce){
				return 6;
			}else if(5.0<=sorce){
				return 5;
			}else if(4.0<=sorce){
				return 4;
			}else{
				return 0;
			}
		}else{
			return 0;
		}
	}
	
	/**
	 * 计算工作时间  近六年(月份)
	 * @param times 该工作开始/结束时间数组  【开始，结束】
	 * @return int 本工作六年前至今工作所占月份
	 * @throws ParseException
	 */
	public static int getTime6year(String[] times) throws ParseException{
		Calendar calendar = Calendar.getInstance();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM");
		//开始时间
		Date date1 = sdf.parse(times[0]);
		//结束时间
		Date date2 = sdf.parse(times[1]);
		calendar.setTime(sdf.parse(sdf.format(new Date())));
		calendar.add(Calendar.YEAR,-6);
		//六年前时间
		Date now6 = calendar.getTime();
		//开始时间在6年前   结束时间在近6年 
		if(!now6.before(date1)&&now6.before(date2)){
			Calendar c = Calendar.getInstance();
			//结束时间
	        c.setTime(date2);
	        int year1 = c.get(Calendar.YEAR);
	        int month1 = c.get(Calendar.MONTH);
	        //六年前时间
	        c.setTime(now6);
	        int year2 = c.get(Calendar.YEAR);
	        int month2 = c.get(Calendar.MONTH);
	        int result;
	        if(year1 == year2) {
	            result = month1 - month2;
	        } else {
	            result = 12*(year1 - year2) + month1 - month2;
	        }
	        return result+1;
		}//开始时间在近6年中   
		else if(!date1.before(now6)){
			Calendar c = Calendar.getInstance();
	        c.setTime(date2);
	        int year1 = c.get(Calendar.YEAR);
	        int month1 = c.get(Calendar.MONTH);
	        c.setTime(date1);
	        int year2 = c.get(Calendar.YEAR);
	        int month2 = c.get(Calendar.MONTH);
	        int result;
	        if(year1 == year2) {
	            result = month1 - month2;
	        } else {
	            result = 12*(year1 - year2) + month1 - month2;
	        }
	        return result+1;
		}else{
			return 0;
		}
		
	}
	
	
	/**
	 * 计算工作时间   近五年(月份)
	 * @param times 该工作开始/结束时间数组  【开始，结束】
	 * @return int 本工作五年前至今工作所占月份
	 * @throws ParseException
	 */
	public static int getTime5year(String[] times) throws ParseException{
		Calendar calendar = Calendar.getInstance();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM");
		//开始时间
		Date date1 = sdf.parse(times[0]);
		//结束时间
		Date date2 = sdf.parse(times[1]);
		calendar.setTime(sdf.parse(sdf.format(new Date())));
		calendar.add(Calendar.YEAR,-5);
		//五年前时间
		Date year5 = calendar.getTime();
		//开始时间在五年前   结束时间在近五年中
		if(!year5.before(date1)&&year5.before(date2)){
			Calendar c = Calendar.getInstance();
	        c.setTime(date2);//五年时间
	        int year1 = c.get(Calendar.YEAR);
	        int month1 = c.get(Calendar.MONTH);
	        c.setTime(year5);//开始时间
	        int year2 = c.get(Calendar.YEAR);
	        int month2 = c.get(Calendar.MONTH);
	        int result;
	        if(year1 == year2) {
	            result = month1 - month2;
	        } else {
	            result = 12*(year1 - year2) + month1 - month2;
	        }
	        return result+1;
		}//开始时间在近五年中   
		else if(year5.before(date1)){
			Calendar c = Calendar.getInstance();
	        c.setTime(date2);
	        int year1 = c.get(Calendar.YEAR);
	        int month1 = c.get(Calendar.MONTH);
	        c.setTime(date1);
	        int year2 = c.get(Calendar.YEAR);
	        int month2 = c.get(Calendar.MONTH);
	        int result;
	        if(year1 == year2) {
	            result = month1 - month2;
	        } else {
	            result = 12*(year1 - year2) + month1 - month2;
	        }
	        return result+1;
		}else{
			return 0;
		}
		
	}
	
	
	/**
	 * 计算工作时间过去十年中前五年  (月份)
	 * @param times 该工作开始/结束时间数组  【开始，结束】
	 * @return int 本工作过去十年中前五年前工作所占月份
	 * @throws ParseException
	 */
	public static int getTimeBefore5year(String[] times) throws ParseException{
		Calendar calendar = Calendar.getInstance();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM");
		//开始时间
		Date date1 = sdf.parse(times[0]);
		//结束时间
		Date date2 = sdf.parse(times[1]);
		calendar.setTime(sdf.parse(sdf.format(new Date())));
		calendar.add(Calendar.MONTH,-1);
		calendar.add(Calendar.YEAR,-10);
		//十年前时间
		Date year10 = calendar.getTime();
		//五年前的时间
		calendar.add(Calendar.YEAR,5);
		Date year5 = calendar.getTime();
		//开始时间在十年前   结束时间在前五年中
		if(!year10.before(date1)&&year10.before(date2)&&!year5.before(date2)){
			Calendar c = Calendar.getInstance();
	        c.setTime(date2);//五年时间
	        int year1 = c.get(Calendar.YEAR);
	        int month1 = c.get(Calendar.MONTH);
	        c.setTime(year10);//开始时间
	        int year2 = c.get(Calendar.YEAR);
	        int month2 = c.get(Calendar.MONTH);
	        int result;
	        if(year1 == year2) {
	            result = month1 - month2;
	        } else {
	            result = 12*(year1 - year2) + month1 - month2;
	        }
	        return result+1;
		}//开始时间在前五年中  且结束时间也在前五年中
		else if(!date1.before(year10)&&!year5.before(date2)){
			Calendar c = Calendar.getInstance();
	        c.setTime(date2);
	        int year1 = c.get(Calendar.YEAR);
	        int month1 = c.get(Calendar.MONTH);
	        c.setTime(date1);
	        int year2 = c.get(Calendar.YEAR);
	        int month2 = c.get(Calendar.MONTH);
	        int result;
	        if(year1 == year2) {
	            result = month1 - month2;
	        } else {
	            result = 12*(year1 - year2) + month1 - month2;
	        }
	        return result+1;
		}//开始时间在前五年中 结束时间在近五年中
		else if(!date1.before(year10)&&date1.before(year5)&&year5.before(date2)){ 
			Calendar c = Calendar.getInstance();
	        c.setTime(year5);
	        int year1 = c.get(Calendar.YEAR);
	        int month1 = c.get(Calendar.MONTH);
	        c.setTime(date1);
	        int year2 = c.get(Calendar.YEAR);
	        int month2 = c.get(Calendar.MONTH);
	        int result;
	        if(year1 == year2) {
	            result = month1 - month2;
	        } else {
	            result = 12*(year1 - year2) + month1 - month2;
	        }
	        return result+1;
		}//开始时间在十年前  结束时间在近五年
		else if(!year10.before(date1)&&!date2.before(year5)){ 
			Calendar c = Calendar.getInstance();
	        c.setTime(year5);
	        int year1 = c.get(Calendar.YEAR);
	        int month1 = c.get(Calendar.MONTH);
	        c.setTime(year10);
	        int year2 = c.get(Calendar.YEAR);
	        int month2 = c.get(Calendar.MONTH);
	        int result;
	        if(year1 == year2) {
	            result = month1 - month2;
	        } else {
	            result = 12*(year1 - year2) + month1 - month2;
	        }
	        return result+1;
		}else{
			return 0;
		}
		
	}

}
