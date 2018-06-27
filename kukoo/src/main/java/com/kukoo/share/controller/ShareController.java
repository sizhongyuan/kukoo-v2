package com.kukoo.share.controller;

import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.kukoo.base.util.RedisUtil;
import com.kukoo.base.util.StaticMethod;
import com.kukoo.markingol.model.MarkingOL;
import com.kukoo.markingol.service.MarkingOLService;
import com.kukoo.share.service.ShareService;

import redis.clients.jedis.Jedis;

@RestController
@RequestMapping("/shareController")
public class ShareController {
	@Autowired
	public ShareService shareService;
	
	private Logger logger = LoggerFactory.getLogger(ShareController.class);
	
	/**
	 * 根据答题信息返回得分等信息
	 * @param request
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/share", method=RequestMethod.POST)
	@ResponseBody
	public JSONObject share(HttpServletRequest request) throws Exception{
		 //微信分享
//		String strUrl = "http://www.xxxxx.com"
//				+ request.getContextPath()   //项目名称  
//				+ request.getServletPath()   //请求页面或其他地址  
//				+ "?" + (request.getQueryString()); //参数  
		return shareService.getShare(request.getParameter("shareUrl"));
	}

}
