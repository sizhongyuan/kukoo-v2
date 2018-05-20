package com.kukoo.homepage.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.kukoo.base.model.User;
import com.kukoo.base.util.StaticMethod;

/**
 * @see 首页body页面
 * @return
 * @author
 */
@Controller
@RequestMapping("/homePage")
public class HomePageController {
	
	static final String modelPath = "WEB-INF/pages/homepage/";
	
	/**
	 * @see 新版展示首页
	 * @param request
	 * @return
	 * @author 张世杰
	 * @throws IOException
	 */
	@RequestMapping(value = "", method = RequestMethod.GET)
	public ModelAndView showIndex2(HttpServletRequest request) {
		//读取session
//		Jedis jedis = RedisUtil.getJedis();
//		String userId = jedis.get(request.getSession().getId());
		String sessionId = request.getSession().getId();
		String userId = StaticMethod.nullObject2String(request.getSession().getAttribute(sessionId));
		ModelAndView model = new ModelAndView();
		model.setViewName(modelPath+"homePage");
		model.addObject("userId", userId);
		return model;
	}
	
	/**
	 * @see 新版项目列表
	 * @param request
	 * @return
	 * @author 张世杰
	 * @throws IOException
	 */
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public ModelAndView list(HttpServletRequest request) {
		//读取session
//		Jedis jedis = RedisUtil.getJedis();
//		String userId = jedis.get(request.getSession().getId());
		String sessionId = request.getSession().getId();
		String userId = StaticMethod.nullObject2String(request.getSession().getAttribute(sessionId));
		ModelAndView model = new ModelAndView();
		model.setViewName(modelPath+"list");
		model.addObject("userId", userId);
		return model;
	}
	
	/**
	 * @see 新版项目详情
	 * @param request
	 * @return
	 * @author 张世杰
	 * @throws IOException
	 */
	@RequestMapping(value = "/detail", method = RequestMethod.GET)
	public ModelAndView detail(HttpServletRequest request) {
		//读取session
//		Jedis jedis = RedisUtil.getJedis();
//		String userId = jedis.get(request.getSession().getId());
		String sessionId = request.getSession().getId();
		String userId = StaticMethod.nullObject2String(request.getSession().getAttribute(sessionId));
		ModelAndView model = new ModelAndView();
		model.setViewName(modelPath+"detail");
		model.addObject("userId", userId);
		return model;
	}
	
	/**
	 * @see 新版时间轴
	 * @param request
	 * @return
	 * @author 张世杰
	 * @throws IOException
	 */
	@RequestMapping(value = "/timeLine", method = RequestMethod.GET)
	public ModelAndView timeLine(HttpServletRequest request) {
		//读取session
//		Jedis jedis = RedisUtil.getJedis();
//		String userId = jedis.get(request.getSession().getId());
		String sessionId = request.getSession().getId();
		String userId = StaticMethod.nullObject2String(request.getSession().getAttribute(sessionId));
		ModelAndView model = new ModelAndView();
		model.setViewName(modelPath+"timeline");
		model.addObject("userId", userId);
		return model;
	}
	
	/**
	 * @see 新版答题
	 * @param request
	 * @return
	 * @author 张世杰
	 * @throws IOException
	 */
	@RequestMapping(value = "/dati", method = RequestMethod.GET)
	public ModelAndView dati(HttpServletRequest request) {
		//读取session
//		Jedis jedis = RedisUtil.getJedis();
//		String userId = jedis.get(request.getSession().getId());
		String sessionId = request.getSession().getId();
		String userId = StaticMethod.nullObject2String(request.getSession().getAttribute(sessionId));
		ModelAndView model = new ModelAndView();
		model.setViewName(modelPath+"dati");
		model.addObject("userId", userId);
		return model;
	}
	
	/**
	 * @see 展示首页
	 * @param request
	 * @return
	 * @author 张世杰
	 * @throws IOException
	 */
	@RequestMapping(value = "/showHomePage", method = RequestMethod.GET)
	public ModelAndView showIndex(HttpServletRequest request) {
		//读取session
//		Jedis jedis = RedisUtil.getJedis();
//		String userId = jedis.get(request.getSession().getId());
		String sessionId = request.getSession().getId();
		String userId = StaticMethod.nullObject2String(request.getSession().getAttribute(sessionId));
		ModelAndView model = new ModelAndView();
		model.setViewName(modelPath+"showHomePage");
		model.addObject("userId", userId);
		return model;
	}
	
	/**
	 * @see 列表页面
	 * @param request
	 * @return
	 * @author WG
	 * @throws IOException
	 */
	@RequestMapping(value = "/showListPage", method = RequestMethod.GET)
	public ModelAndView showListPage(HttpServletRequest request) {
		//读取session
//		Jedis jedis = RedisUtil.getJedis();
//		String userId = jedis.get(request.getSession().getId());
		String sessionId = request.getSession().getId();
		String userId = StaticMethod.nullObject2String(request.getSession().getAttribute(sessionId));
		ModelAndView model = new ModelAndView();
		model.setViewName("WEB-INF/pages/list/list");
		model.addObject("userId", userId);
		return model;
	}
	
	/**
	 * @see 列表页面
	 * @param request
	 * @return
	 * @author WG
	 * @throws IOException
	 */
	@RequestMapping(value = "/showListPage2", method = RequestMethod.GET)
	public ModelAndView showListPage2(HttpServletRequest request) {
		//读取session
//		Jedis jedis = RedisUtil.getJedis();
//		String userId = jedis.get(request.getSession().getId());
		String sessionId = request.getSession().getId();
		String userId = StaticMethod.nullObject2String(request.getSession().getAttribute(sessionId));
		ModelAndView model = new ModelAndView();
		model.setViewName("WEB-INF/pages/list/list2");
		model.addObject("userId", userId);
		return model;
	}
}
