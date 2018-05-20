package com.kukoo.list.controller;


import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.kukoo.base.util.StaticMethod;

@Controller
@RequestMapping("/list")
public class ListController {
	static final String modelPath = "WEB-INF/pages/list/";
	
	/**
	 * @see 项目列表
	 * @param request
	 * @return
	 * @author gang
	 */
	@RequestMapping(value = "/lists", method = RequestMethod.GET)
	public ModelAndView list(HttpServletRequest request) {
		String sessionId = request.getSession().getId();
		String userId = StaticMethod.nullObject2String(request.getSession().getAttribute(sessionId));
		ModelAndView model = new ModelAndView();
		model.setViewName(modelPath+"list");
		model.addObject("userId", userId);
		model.addObject("search", StaticMethod.nullObject2String(request.getParameter("search")));
		model.addObject("project", StaticMethod.nullObject2String(request.getParameter("project")));
		model.addObject("country", StaticMethod.nullObject2String(request.getParameter("country")));
		return model;
	}
	
	/**
	 * @see 案例列表
	 * @param request
	 * @return
	 * @author linbin
	 */
	@RequestMapping(value = "/cases", method = RequestMethod.GET)
	public ModelAndView cases(HttpServletRequest request) {
		ModelAndView model = new ModelAndView();
		model.setViewName(modelPath+"cases");
		return model;
	}
	
	/**
	 * @see 查询项目列表
	 * @param request
	 * @return
	 * @author gang
	 */
	@RequestMapping(value = "/lists", method = RequestMethod.POST)
	public ModelAndView queryList(HttpServletRequest request) {
		String sessionId = request.getSession().getId();
		String userId = StaticMethod.nullObject2String(request.getSession().getAttribute(sessionId));
		ModelAndView model = new ModelAndView();
		model.setViewName(modelPath+"list");
		model.addObject("userId", userId);
		model.addObject("search", StaticMethod.nullObject2String(request.getParameter("search")));
		model.addObject("project", StaticMethod.nullObject2String(request.getParameter("project")));
		model.addObject("country", StaticMethod.nullObject2String(request.getParameter("country")));
		return model;
	}
}
