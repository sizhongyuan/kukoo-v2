package com.kukoo.luckdraw.util;

import java.util.ArrayList;
import java.util.List;

import com.alibaba.fastjson.JSON;
import com.kukoo.luckdraw.model.Lottery;

public class BigWheelDrawUtil {
	/**
     * 给转盘的每个角度赋初始
     * 测试使用
     * 
     * @return
     */
    private final static List<Lottery> initDrawList = new ArrayList<Lottery>() {
    		{
    			add(new Lottery(0, "感谢参与", 5));
            add(new Lottery(1, "耳机", 1));
            add(new Lottery(2, "Apple18手机", 3));
            add(new Lottery(3, "iPad", 10));
            add(new Lottery(4, "感谢参与", 20));
            add(new Lottery(5, "娃娃", 26));	
            add(new Lottery(6, "运动鞋", 10));
            add(new Lottery(7, "感谢参与", 5));
            add(new Lottery(8, "感谢参与", 5));
            add(new Lottery(9, "感谢参与", 5));
            add(new Lottery(10, "感谢参与", 5));
            add(new Lottery(11, "感谢参与", 5));
        }
    };

    /**
     * 生成奖项
     * @return
     */
    public static Lottery generateAward(List<Lottery> initData) {
        //List<Lottery> initData = initDrawList;
        long result = randomnum(1, 100);
        int line = 0;
        int temp = 0;
        Lottery returnobj = null;
        int index = 0;
        for (int i = 0; i < initDrawList.size(); i++) {
            Lottery obj2 = initDrawList.get(i);
            int c = obj2.getRate();
            temp = temp + c;
            line = 100 - temp;
            if (c != 0) {
                if (result > line && result <= (line + c)) {
                    returnobj = obj2;
                    break;
                }
            }
        }
        return returnobj;
    }

    // 获取2个值之间的随机数
    private static long randomnum(int smin, int smax){
            int range = smax - smin;
            double rand = Math.random();
            return (smin + Math.round(rand * range));
    }


    public static void main(String[] args) {
        System.out.println(JSON.toJSONString(generateAward(initDrawList)));
    }
}
