package com.kukoo.luckdraw.controller;


import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.kukoo.base.util.StaticMethod;
import com.kukoo.luckdraw.model.Lottery;
import com.kukoo.luckdraw.model.LotteryOpportunity;
import com.kukoo.luckdraw.model.WinLottery;
import com.kukoo.luckdraw.service.ILotteryOpportunityService;
import com.kukoo.luckdraw.service.ILotteryService;
import com.kukoo.luckdraw.service.IWinLotteryService;
import com.kukoo.luckdraw.util.BigWheelDrawUtil;

@Controller
@RequestMapping("/luck")
public class LuckDrawController {
	private static final Logger logger = LoggerFactory.getLogger(LuckDrawController.class);
	static final String modelPath = "WEB-INF/pages/luckdraw/";
	
	@Autowired
	private ILotteryOpportunityService lotteryOpportunityService;
	@Autowired
	private IWinLotteryService winLotteryService;
	@Autowired
	private ILotteryService lotteryService;
	/**
	 * @see 抽奖页面显示
	 * @param request
	 * @return
	 * @author gang
	 */
	@RequestMapping(value = "/luckDraw/{uId}/{userId}", method = RequestMethod.GET)
	public ModelAndView luckDraw(@PathVariable("uId")String id, @PathVariable("userId")String userId,HttpServletRequest request) {
		List<Lottery> list = lotteryService.queryLottery();
		String lotterysTr = "";
		if(list!=null && list.size()>0) {
			Lottery Lottery0 = (Lottery)list.get(0);
			Lottery Lottery1 = (Lottery)list.get(1);
			Lottery Lottery2 = (Lottery)list.get(2);
			Lottery Lottery3 = (Lottery)list.get(3);
			Lottery Lottery4 = (Lottery)list.get(4);
			Lottery Lottery5 = (Lottery)list.get(5);
			Lottery Lottery6 = (Lottery)list.get(6);
			Lottery Lottery7 = (Lottery)list.get(7);
			Lottery Lottery8 = (Lottery)list.get(8);
			Lottery Lottery9 = (Lottery)list.get(9);
			Lottery Lottery10 = (Lottery)list.get(10);
			Lottery Lottery11 = (Lottery)list.get(11);
			lotterysTr = "<tr>\n" + 
					"			<td class=\"lottery-unit lottery-unit-0\" style=\"background:url(/kukoo/img/luckdraw/bg-1.jpg) no-repeat bottom;\"><img src="+Lottery0.getImgRoute()+"></td>\n" + 
					"			<td class=\"lottery-unit lottery-unit-1\" style=\"background:url(/kukoo/img/luckdraw/bg-2.jpg) no-repeat bottom;\"><img src="+Lottery1.getImgRoute()+"></td>\n" + 
					"			<td class=\"lottery-unit lottery-unit-2\" style=\"background:url(/kukoo/img/luckdraw/bg-4.jpg) no-repeat bottom;\"><img src="+Lottery2.getImgRoute()+"></td>\n" + 
					"            <td class=\"lottery-unit lottery-unit-3\" style=\"background:url(/kukoo/img/luckdraw/bg-3.jpg) no-repeat bottom;\"><img src="+Lottery3.getImgRoute()+"></td>\n" + 
					"		</tr>\n" + 
					"		<tr>\n" + 
					"			<td class=\"lottery-unit lottery-unit-11\" style=\"background:url(/kukoo/img/luckdraw/bg-5.jpg) no-repeat bottom;\"><img src="+Lottery11.getImgRoute()+"></td>\n" + 
					"			<td style=\"width:100px;height:100px;\" colspan=\"2\" rowspan=\"2\">"+
								 "<a style=\"width:100%;height:100%;\" href=\"#\">"+
								 	"<img src=\"/kukoo/img/luckdraw/bg-0.jpg\">"+
								 "</a>"+
							"</td>\n" + 
					"			<td class=\"lottery-unit lottery-unit-4\" style=\"background:url(/kukoo/img/luckdraw/bg-6.jpg) no-repeat bottom;\"><img src="+Lottery4.getImgRoute()+"></td>\n" + 
					"		</tr>\n" + 
					"		<tr>\n" + 
					"			<td class=\"lottery-unit lottery-unit-10\" style=\"background:url(/kukoo/img/luckdraw/bg-7.jpg) no-repeat bottom;\"><img src="+Lottery10.getImgRoute()+"></td>\n" + 
					"			<td class=\"lottery-unit lottery-unit-5\" style=\"background:url(/kukoo/img/luckdraw/bg-8.jpg) no-repeat bottom;\"><img src="+Lottery5.getImgRoute()+"></td>\n" + 
					"		</tr>\n" + 
					"        <tr>\n" + 
					"			<td class=\"lottery-unit lottery-unit-9\" style=\"background:url(/kukoo/img/luckdraw/bg-9.jpg) no-repeat bottom;\"><img src="+Lottery9.getImgRoute()+"></td>\n" + 
					"			<td class=\"lottery-unit lottery-unit-8\" style=\"background:url(/kukoo/img/luckdraw/bg-10.jpg) no-repeat bottom;\"><img src="+Lottery8.getImgRoute()+"></td>\n" + 
					"			<td class=\"lottery-unit lottery-unit-7\" style=\"background:url(/kukoo/img/luckdraw/bg-11.jpg) no-repeat bottom;\"><img src="+Lottery7.getImgRoute()+"></td>\n" + 
					"            <td class=\"lottery-unit lottery-unit-6\" style=\"background:url(/kukoo/img/luckdraw/bg-12.jpg) no-repeat bottom;\"><img src="+Lottery6.getImgRoute()+"></td>\n" + 
					"		</tr>";
		}
		Map map = new HashMap();
		map.put("lotterysTr", lotterysTr);
		//map.put("lotterysList", "中奖人列表");
		map.put("lotterysDesc", "中奖描述");
		map.put("lotterysUserId", userId);
		map.put("lotterysId", id);
		map.put("lotteryUrl", "/kukoo/luck/markLuckDraw/"+id+"/"+userId);
		
		return new ModelAndView(modelPath+"list", "lotterys", map);
	}
	
	/**
	 * 分享抽奖链接给客户
	 * @param userId 客户ID
	 * @param lotteryNum 抽奖次数
	 * @return
	 */
	@RequestMapping(value = "/shareLotteryUrl/{lotteryNum}/{userId}", method = RequestMethod.GET, produces = {"application/json;charset=UTF-8"})
	@ResponseBody
	public Object shareLotteryUrl(@PathVariable("userId")String userId,@PathVariable("lotteryNum")Integer lotteryNum) {
		LotteryOpportunity lottery = new LotteryOpportunity();
		String uId = StaticMethod.nullObject2String(UUID.randomUUID()).replace("-", "");
		lottery.setId(uId);
		lottery.setLotteryUserId(userId);
		lottery.setLotteryNum(lotteryNum);
		SimpleDateFormat sdf = new SimpleDateFormat();
		lottery.setCreateTime(sdf.format(new Date()));
		lottery.setLotteryUrl("luck/markLuckDraw/"+uId+"/"+userId);
		lotteryOpportunityService.saveLotteryOpportunity(lottery);
		Map m = new HashMap();
		m.put("url", "luck/luckDraw/"+uId+"/"+userId);
		m.put("uId", uId);
		return m;
	}
	
	/**
	 * 抽奖
	 * @param id
	 * @param userId
	 * @return
	 */
	@RequestMapping(value = "/markLuckDraw/{uId}/{userId}", method = RequestMethod.GET, produces = {"application/json;charset=UTF-8"})
	@ResponseBody
	public Object markLuckDraw(@PathVariable("uId")String id, @PathVariable("userId")String userId) { 
		Map info = new HashMap();
		if(id == null || userId == null) {
			info.put("mes", "您不具备抽奖条件！");
			info.put("data", "");
		}
		LotteryOpportunity lotteryOpportunity = lotteryOpportunityService.queryLotteryOpportunity(id,userId);
		
		List<Lottery> initData = lotteryService.queryLottery();
		Lottery lottery = new Lottery();
		if(lotteryOpportunity!=null && !lotteryOpportunity.equals("")) {
			lottery = BigWheelDrawUtil.generateAward(initData);
			logger.info("用户["+userId+"]抽中"+lottery.toString());
			info.put("mes", "success");
			info.put("data", lottery);
		}else {
			info.put("mes", "您的抽奖次数已经用完！");
			info.put("data", "");
		}
		return info;
	}
	
	/**
	 * 记录中奖情况
	 * @param id
	 * @param userId
	 * @return
	 */
	@RequestMapping(value = "/winLottery/{lotteryId}/{loppId}/{userId}", method = RequestMethod.POST, produces = {"application/json;charset=UTF-8"})
	@ResponseBody
	public Object winLottery(@PathVariable("lotteryId")String lotteryId, @PathVariable("loppId")String loppId, @PathVariable("userId")String userId) { 
		WinLottery winLottery = new WinLottery();
		winLottery.setLotteryId(lotteryId);
		winLottery.setWinUserId(userId);
		winLottery.setWinPhone("");
		SimpleDateFormat sdf = new SimpleDateFormat();
		winLottery.setWinTime(sdf.format(new Date()));
		winLottery.setIsGiveOut("0");
		winLotteryService.saveWinLottery(winLottery);
		
		LotteryOpportunity lotteryOpportunity = lotteryOpportunityService.queryLotteryOpportunity(loppId,userId);
		lotteryOpportunity.setLotteryNum(lotteryOpportunity.getLotteryNum()-1);
		lotteryOpportunityService.updateLotteryOpportunity(lotteryOpportunity);
		
		Map m = new HashMap();
		m.put("mes", "success");
		m.put("data", "中奖记录插入成功");
		return m;
	}
	
	/**
	 * 查询中奖记录
	 * @param userId
	 * @return
	 */
	@RequestMapping(value = "/findWinLotteryInfo/{userId}", method = RequestMethod.GET, produces = {"application/json;charset=UTF-8"})
	@ResponseBody
	public Object findWinLotteryInfo(@PathVariable("userId")String userId) { 
		
		List<Map<String, Object>> list = new ArrayList<Map<String, Object>>();
		if(userId.equals("all")) {
			list = winLotteryService.queryAllWinLotteryList();
		}else {
			list = winLotteryService.queryWinLotteryList(userId);
		}
				
		return list;
	} 
	
	/**
     * 抽奖
     *
     * @param id id
     * @param mobile    中奖号码
     * @return
     */
//    @RequestMapping("wXinMarkLuckDraw.jspx")
//    @ResponseBody
//    public JSonRespone markLuckDraw(Long id, String mobile) { 
//        //参数验证
//        if (id == null || id.longValue() == 0) {
//            return JSonRespone.makeHasContentJSonRespone("1", "您没有抽奖次数！");
//        }
//        //参数验证
//        if (StringUtils.isEmpty(mobile)) {
//            return JSonRespone.makeHasContentJSonRespone("1", "中奖手机号码为空！");
//        }
//
//        //生成中奖金额对象
//        Lottery Lottery = BigWheelDrawUtil.generateAward();
//        if(Lottery == null){
//            return JSonRespone.makeHasContentJSonRespone("3", "生成抽奖数据失败");
//        }
//        try {
//            //修改抽奖次数
//            Integer result = appShareService.markLuckDraw(id);
//            if (result == null || result == 0) {
//                return JSonRespone.makeHasContentJSonRespone("2", "抽奖失败，请刷新重新验证。");
//            }
//        } catch (Exception e) {
//            logger.debug(e.getMessage());
//            return JSonRespone.makeHasContentJSonRespone("2", "抽奖失败，请刷新重新验证。");
//        }
//
//        if(logger.isErrorEnabled()){
//            logger.error("微信分享活动：手机号码为：{}，中奖信息：{}", mobile, JSON.toJSONString(Lottery));
//        }
//
//        //写入中间信息
//        return writeXinRecord(mobile, Lottery);
//    }
//
//    //    微信 用户分享 认证之后送话费活动 中奖记录存储路径
//    private static final String wXinFilePath =  "/home/wxhb/lottery.txt";
//    //"/home/wxhb/lottery.txt";
//    //"D:/list.txt";
//
//
//    /**
//     * 写入中奖金额
//     * @param mobile
//     * @param Lottery
//     * @return
//     */
//    private JSonRespone writeXinRecord(String mobile,Lottery Lottery ) {
//        // 记录时间
//        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
//        Calendar calendar = Calendar.getInstance();
//        String date = simpleDateFormat.format(calendar.getTime());
//        // 记录文件是否存在
//        File file = new File(wXinFilePath);
//        if (!file.exists()) {
//            try {
//                file.createNewFile();
//            } catch (IOException e) {
//                e.printStackTrace();
//            }
//        }
//        // 临时记录存储
//        ArrayList<String> arrayList = new ArrayList<>();
//        // 是否已经存在记录
//        Scanner in = null;
//        try {
//            in = new Scanner(file);
//        } catch (FileNotFoundException e) {
//            e.printStackTrace();
//        }
//        // 读取记录放置临时数组
//        while (in.hasNextLine()) {
//            arrayList.add(in.nextLine());
//        }
//        in.close();
//        // 查询记录是否存在
//        if (arrayList.size() > 0) {
//            for (String str : arrayList) {
//                if (mobile.equals(str.split("-")[0])) {
//                    return JSonRespone.makeHasContentJSonRespone("1", "成功", "记录已存在");
//                }
//            }
//        }
//        // 写入记录
//        BufferedWriter out = null;
//        try {
//            out = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(file, true)));
//            out.write(mobile + "    " + date + "    " + Lottery.getPrize());
//            out.newLine();
//            out.close();
//        } catch (IOException e) {
//            e.printStackTrace();
//            return JSonRespone.makeHasContentJSonRespone("0", "失败", e.getMessage());
//        }
//
//        Map<String, Object> resultMap = new HashMap<String, Object>();
//        try {
//            //获取抽奖次数
//            resultMap.put("luckDrawCounts", appShareService.getLuckDrawCounts(mobile));//抽奖次数
//            resultMap.put("Lottery", Lottery);
//        } catch (Exception e) {
//            logger.debug(e.getMessage());
//        }
//        return JSonRespone.makeHasContentJSonRespone("0", "成功", resultMap);
//    }
	
}
