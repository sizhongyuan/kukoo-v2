package com.kukoo.timeline.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.kukoo.base.util.StaticMethod;

/**
 * @see 时间轴页面
 * @return
 * @author
 */
@Controller
@RequestMapping("/timeline")
public class TimeLineController {
	
	static final String modelPath = "WEB-INF/pages/timeline/";
	
	/**
	 * @see 展示时间轴
	 * @param request
	 * @return
	 * @author 张世杰
	 * @throws IOException
	 */
	@RequestMapping(value = "", method = RequestMethod.GET)
	public ModelAndView showTimeLine(HttpServletRequest request) {
		//读取session
//		Jedis jedis = RedisUtil.getJedis();
//		String userId = jedis.get(request.getSession().getId());
		String sessionId = request.getSession().getId();
		String userId = StaticMethod.nullObject2String(request.getSession().getAttribute(sessionId));
		ModelAndView model = new ModelAndView();
		model.setViewName(modelPath+"showtimeline");
		model.addObject("userId", userId);
		return model;
	}
}