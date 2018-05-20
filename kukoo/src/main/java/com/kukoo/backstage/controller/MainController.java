package com.kukoo.backstage.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.kukoo.base.util.PageUtils;
import com.kukoo.base.util.StaticMethod;
import com.kukoo.base.util.StringUtils;
import com.kukoo.logsystem.service.LogService;
import com.kukoo.luckdraw.model.Lottery;
import com.kukoo.luckdraw.model.LotteryOpportunity;
import com.kukoo.luckdraw.model.WinLottery;
import com.kukoo.luckdraw.service.ILotteryOpportunityService;
import com.kukoo.luckdraw.service.ILotteryService;
import com.kukoo.luckdraw.service.IWinLotteryService;
import com.kukoo.luckdraw.util.ImageUploadUtil;
/**
 * 后台系统访问Controller类
 * @author gang
 *
 */
@Controller
@RequestMapping("/main")
public class MainController {
	static final String modelPath = "WEB-INF/backstage/";
	
	@Resource
	private LogService logService;
	@Autowired
	private ILotteryService lotteryService;
	@Autowired
	private ILotteryOpportunityService lotteryOpportunityService;
	@Autowired
	private IWinLotteryService winLotteryService;
	
	@RequestMapping("/showLoginPage")
	public ModelAndView showLoginPage(HttpServletRequest request) {
		ModelAndView model = new ModelAndView();
		model.setViewName(modelPath+"login");
		return model;
	}
	
	@RequestMapping("/showMain")
	public ModelAndView showIndex(HttpServletRequest request) { 
		ModelAndView model = new ModelAndView();
		model.setViewName(modelPath+"index");
		return model;
	}
	/**
	 * 日志列表
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping("/showSystemLog")
	public ModelAndView showSystemLog(HttpServletRequest request,HttpServletResponse response) {
		ModelAndView model = new ModelAndView();
		model.setViewName(modelPath+"systemLog");
		
		String pageNum = request.getParameter("pageNum");
		int pageNumInt = StringUtils.isBlank(pageNum) ? 1 : Integer.parseInt(pageNum.trim());
		int pageSize = 10;
		PageHelper.startPage(pageNumInt, pageSize);
		List<Map<String, Object>> list = logService.queryLogByPage();
		PageInfo<Map<String, Object>> page = new PageInfo<Map<String, Object>>(list);
		model.addObject("list", list);
		model.addObject("page", page);
		model.addObject("index_nums", PageUtils.listPageNums(page.getPageNum(),page.getPages()));
		System.out.println("==page日志数据=="+page.getList().get(0).toString());
		System.out.println("==list日志数据=="+list.toString());
		return model;
	}
	
	/**
	 * 查询抽奖奖品列表
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping("/showLotteryPage")
	public ModelAndView showLotteryPage(HttpServletRequest request,HttpServletResponse response) {
		ModelAndView model = new ModelAndView();
		model.setViewName(modelPath+"Lottery");
		
		String pageNum = request.getParameter("pageNum");
		int pageNumInt = StringUtils.isBlank(pageNum) ? 1 : Integer.parseInt(pageNum.trim());
		int pageSize = 12;
		PageHelper.startPage(pageNumInt, pageSize);
		List<Map<String, Object>> list = lotteryService.queryLotteryList();
		PageInfo<Map<String, Object>> page = new PageInfo<Map<String, Object>>(list);
		model.addObject("list", list);
		model.addObject("page", page);
		model.addObject("index_nums", PageUtils.listPageNums(page.getPageNum(),page.getPages()));
		System.out.println("==page日志数据=="+page.getList().get(0).toString());
		System.out.println("==list日志数据=="+list.toString());
		return model;
	}
	

	/**
	 * 显示编辑奖品页面，回显数据
	 * @param id
	 * @return
	 */
	@RequestMapping(value = "/showEditLotteryPage/{id}", method = RequestMethod.GET, produces = {"application/json;charset=UTF-8"})
	@ResponseBody
	public Object showEditLotteryPage(@PathVariable("id")String id) { 
		Lottery lottery = lotteryService.queryLotteryById(id);
		return lottery;
	}
	
	/**
	 * 
	 * @param model
	 * @param file
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "/editLottery", method = RequestMethod.POST, produces = {"application/json;charset=UTF-8"})
	@ResponseBody
	public Object editLottery(Model model,@RequestParam("imgRoute") MultipartFile file, HttpServletRequest request) { 
		String filePath = request.getSession().getServletContext().getRealPath("/")+"img/luckdraw/";
		String id = StaticMethod.nullObject2String(request.getParameter("id"));
		Integer lno = StaticMethod.nullObject2int(request.getParameter("lno"));
		String name = StaticMethod.nullObject2String(request.getParameter("name"));
		Integer rate = StaticMethod.nullObject2int(request.getParameter("rate"));
		String imgRoute = StaticMethod.nullObject2String(request.getParameter("imgRoute"));
		String num = StaticMethod.nullObject2String(request.getParameter("num"));
		String fileName=file.getOriginalFilename();
		String extensionName = fileName.substring(fileName.lastIndexOf(".") + 1);
		String fileUrl = ImageUploadUtil.saveFile(file, filePath,StaticMethod.nullObject2String(lno));
		System.out.println(fileUrl);
		
		Lottery lottery = new Lottery();
		lottery.setId(id);
		lottery.setLno(lno);
		lottery.setName(name);
		lottery.setRate(rate);
		lottery.setNum(num);
		lottery.setImgRoute("/kukoo/img/luckdraw/"+lno+"."+extensionName);
		lotteryService.updateLottery(lottery);
		
		Map m = new HashMap();
		m.put("mes", "success");
		m.put("data", "修改成功");
		return m;
	}
	
	/**
	 * 查询中奖记录
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping("/showWinLotteryPage")
	public ModelAndView showWinLotteryPage(HttpServletRequest request,HttpServletResponse response) {
		ModelAndView model = new ModelAndView();
		model.setViewName(modelPath+"WinLottery");
		
		String pageNum = request.getParameter("pageNum");
		int pageNumInt = StringUtils.isBlank(pageNum) ? 1 : Integer.parseInt(pageNum.trim());
		int pageSize = 10;
		PageHelper.startPage(pageNumInt, pageSize);
		List<Map<String, Object>> list = winLotteryService.queryAllWinLotteryList();
		PageInfo<Map<String, Object>> page = new PageInfo<Map<String, Object>>(list);
		model.addObject("list", list);
		model.addObject("page", page);
		model.addObject("index_nums", PageUtils.listPageNums(page.getPageNum(),page.getPages()));
		System.out.println("==page日志数据=="+page.getList().get(0).toString());
		System.out.println("==list日志数据=="+list.toString());
		return model;
	}
	
	/**
	 * 查询抽奖机会记录
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping("/showLotteryOpportunityPage")
	public ModelAndView showLotteryOpportunityPage(HttpServletRequest request,HttpServletResponse response) {
		ModelAndView model = new ModelAndView();
		model.setViewName(modelPath+"LotteryOpportunity");
		
		String pageNum = request.getParameter("pageNum");
		int pageNumInt = StringUtils.isBlank(pageNum) ? 1 : Integer.parseInt(pageNum.trim());
		int pageSize = 10;
		PageHelper.startPage(pageNumInt, pageSize);
		List<Map<String, Object>> list = lotteryOpportunityService.queryLotteryOpportunityList();
		PageInfo<Map<String, Object>> page = new PageInfo<Map<String, Object>>(list);
		model.addObject("list", list);
		model.addObject("page", page);
		model.addObject("index_nums", PageUtils.listPageNums(page.getPageNum(),page.getPages()));
		System.out.println("==page日志数据=="+page.getList().get(0).toString());
		System.out.println("==list日志数据=="+list.toString());
		return model;
	}
	
	
	
	@RequestMapping("/showTest")
	public ModelAndView showTest(HttpServletRequest request) { 
		ModelAndView model = new ModelAndView();
		model.setViewName(modelPath+"Food");
		return model;
	}
}
