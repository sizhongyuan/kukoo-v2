package com.kukoo.timeaxis.controller;

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
@RequestMapping("/timeAxis")
public class TimeAxisController {
	
	static final String modelPath = "WEB-INF/pages/timeaxis/";
	
	/**
	 * @see 展示时间轴
	 * @param request
	 * @return
	 * @author 张世杰
	 * @throws IOException
	 */
	@RequestMapping(value = "/showTimeAxis", method = RequestMethod.GET)
	public ModelAndView showTimeAxis(HttpServletRequest request) {
		String sessionId = request.getSession().getId();
		String userId = StaticMethod.nullObject2String(request.getSession().getAttribute(sessionId));
		ModelAndView model = new ModelAndView();
		model.setViewName(modelPath+"showTimeAxis");
		model.addObject("userId", userId);
		return model;
	}
}