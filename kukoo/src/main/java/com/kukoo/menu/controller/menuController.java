package com.kukoo.menu.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.kukoo.base.util.RedisUtil;
import com.kukoo.base.util.StaticMethod;

import redis.clients.jedis.Jedis;

/**
 * @see 首页body页面
 * @return
 * @author
 */
@Controller
@RequestMapping("/menu")
public class menuController {
	
	static final String modelPath = "WEB-INF/pages/menu/";
	
	/**
	 * @see 展示项目介绍
	 * @param request
	 * @return
	 * @author 张世杰
	 * @throws IOException
	 */
	@RequestMapping(value = "/showProjectInfo", method = RequestMethod.GET)
	public ModelAndView showProject(HttpServletRequest request) {
		//读取session
//		Jedis jedis = RedisUtil.getJedis();
//		String userId = jedis.get(request.getSession().getId());
		String sessionId = request.getSession().getId();
		String userId = StaticMethod.nullObject2String(request.getSession().getAttribute(sessionId));
		ModelAndView model = new ModelAndView();
		model.setViewName(modelPath+"showProjectInfo");
		model.addObject("userId", userId);
		return model;
	}
	
	/**
	 * @see 展示文章精选
	 * @param request
	 * @return
	 * @author 张世杰
	 * @throws IOException
	 */
	@RequestMapping(value = "/showArticle", method = RequestMethod.GET)
	public ModelAndView showArticle(HttpServletRequest request) {
		//读取session
//		Jedis jedis = RedisUtil.getJedis();
//		String userId = jedis.get(request.getSession().getId());
		String sessionId = request.getSession().getId();
		String userId = StaticMethod.nullObject2String(request.getSession().getAttribute(sessionId));
		ModelAndView model = new ModelAndView();
		model.setViewName(modelPath+"showArticle");
		model.addObject("userId", userId);
		return model;
	}
	
	/**
	 * @see 展示时间轴
	 * @param request
	 * @return
	 * @author 张世杰
	 * @throws IOException
	 */
	@RequestMapping(value = "/showTimeAxis", method = RequestMethod.GET)
	public ModelAndView showTimeAxis(HttpServletRequest request) {
		//读取session
//		Jedis jedis = RedisUtil.getJedis();
//		String userId = jedis.get(request.getSession().getId());
		String sessionId = request.getSession().getId();
		String userId = StaticMethod.nullObject2String(request.getSession().getAttribute(sessionId));
		ModelAndView model = new ModelAndView();
		model.setViewName(modelPath+"showTimeAxis");
		model.addObject("userId", userId);
		return model;
	}
}
