package com.kukoo.detail.controller;

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
 * 详情页面控制器
 * @author chenjianghe
 *
 */
@Controller
@RequestMapping("/detail")
public class DetailController {
	
	static final String modelPath = "WEB-INF/pages/detail/";
	
	/**
	 * @see 展示新详情页面EE
	 * @param request
	 * @return
	 * @author chenjianghe
	 * @throws IOException
	 */
	@RequestMapping(value = "/detail_Canada_EE", method = RequestMethod.GET)
	public ModelAndView detail_Canada_EE(HttpServletRequest request) {
		//读取session
//		Jedis jedis = RedisUtil.getJedis();
//		String userId = jedis.get(request.getSession().getId());
		String sessionId = request.getSession().getId();
		String userId = StaticMethod.nullObject2String(request.getSession().getAttribute(sessionId));
		ModelAndView model = new ModelAndView();
		model.setViewName(modelPath+"detail_Canada_EE");
		model.addObject("userId", userId);
		return model;
	}
	
	/**
	 * @see 展示新详情页面萨省提名技术移民
	 * @param request
	 * @return
	 * @author chenjianghe
	 * @throws IOException
	 */
	@RequestMapping(value = "/detail_Canada_SINP", method = RequestMethod.GET)
	public ModelAndView detail_Canada_SINP(HttpServletRequest request) {
		//读取session
//		Jedis jedis = RedisUtil.getJedis();
//		String userId = jedis.get(request.getSession().getId());
		String sessionId = request.getSession().getId();
		String userId = StaticMethod.nullObject2String(request.getSession().getAttribute(sessionId));
		ModelAndView model = new ModelAndView();
		model.setViewName(modelPath+"detail_Canada_SINP");
		model.addObject("userId", userId);
		return model;
	}
	
	/**
	 * @see 展示新详情页面萨省提名技术移民
	 * @param request
	 * @return
	 * @author chenjianghe
	 * @throws IOException
	 */
	@RequestMapping(value = "/detail_Canada_NSNP", method = RequestMethod.GET)
	public ModelAndView detail_Canada_NSNP(HttpServletRequest request) {
		//读取session
//		Jedis jedis = RedisUtil.getJedis();
//		String userId = jedis.get(request.getSession().getId());
		String sessionId = request.getSession().getId();
		String userId = StaticMethod.nullObject2String(request.getSession().getAttribute(sessionId));
		ModelAndView model = new ModelAndView();
		model.setViewName(modelPath+"detail_Canada_NSNP");
		model.addObject("userId", userId);
		return model;
	}
	
	
	/**
	 * @see 展示新详情页面萨省提名技术移民
	 * @param request
	 * @return
	 * @author chenjianghe
	 * @throws IOException
	 */
	@RequestMapping(value = "/detail_Canada_QSW", method = RequestMethod.GET)
	public ModelAndView detail_Canada_QSW(HttpServletRequest request) {
		//读取session
//		Jedis jedis = RedisUtil.getJedis();
//		String userId = jedis.get(request.getSession().getId());
		String sessionId = request.getSession().getId();
		String userId = StaticMethod.nullObject2String(request.getSession().getAttribute(sessionId));
		ModelAndView model = new ModelAndView();
		model.setViewName(modelPath+"detail_Canada_QSW");
		model.addObject("userId", userId);
		return model;
	}
	
	/**
	 * @see 展示新详情页面萨省提名技术移民
	 * @param request
	 * @return
	 * @author chenjianghe
	 * @throws IOException
	 */
	@RequestMapping(value = "/detail_Canada_OINP", method = RequestMethod.GET)
	public ModelAndView detail_Canada_OINP(HttpServletRequest request) {
		//读取session
//		Jedis jedis = RedisUtil.getJedis();
//		String userId = jedis.get(request.getSession().getId());
		String sessionId = request.getSession().getId();
		String userId = StaticMethod.nullObject2String(request.getSession().getAttribute(sessionId));
		ModelAndView model = new ModelAndView();
		model.setViewName(modelPath+"detail_Canada_OINP");
		model.addObject("userId", userId);
		return model;
	}
	
	/**
	  * @see 展示详情页面澳大利亚189项目
	  * @param request
	  * @return
	  * @author chenjianghe
	  * @throws IOException
	  */
	 @RequestMapping(value = "/detail_Australia_189", method = RequestMethod.GET)
	 public ModelAndView detail_Australia_189(HttpServletRequest request) {
	  //读取session
	//  Jedis jedis = RedisUtil.getJedis();
	//  String userId = jedis.get(request.getSession().getId());
	  String sessionId = request.getSession().getId();
	  String userId = StaticMethod.nullObject2String(request.getSession().getAttribute(sessionId));
	  ModelAndView model = new ModelAndView();
	  model.setViewName(modelPath+"detail_Australia_189");
	  model.addObject("userId", userId);
	  return model;
	 }
	 
	 /**
	  * @see 展示详情页面澳大利亚190项目
	  * @param request
	  * @return
	  * @author chenjianghe
	  * @throws IOException
	  */
	 @RequestMapping(value = "/detail_Australia_190", method = RequestMethod.GET)
	 public ModelAndView detail_Australia_190(HttpServletRequest request) {
	  //读取session
	//  Jedis jedis = RedisUtil.getJedis();
	//  String userId = jedis.get(request.getSession().getId());
	  String sessionId = request.getSession().getId();
	  String userId = StaticMethod.nullObject2String(request.getSession().getAttribute(sessionId));
	  ModelAndView model = new ModelAndView();
	  model.setViewName(modelPath+"detail_Australia_190");
	  model.addObject("userId", userId);
	  return model;
	 }
	 
	 /**
	  * @see 展示详情页面
	  * @param request
	  * @return
	  * @author chenjianghe
	  * @throws IOException
	  */
	 @RequestMapping(value = "/detail_Canada_NBPNP", method = RequestMethod.GET)
	 public ModelAndView detail_Canada_NBPNP(HttpServletRequest request) {
	  //读取session
	//  Jedis jedis = RedisUtil.getJedis();
	//  String userId = jedis.get(request.getSession().getId());
	  String sessionId = request.getSession().getId();
	  String userId = StaticMethod.nullObject2String(request.getSession().getAttribute(sessionId));
	  ModelAndView model = new ModelAndView();
	  model.setViewName(modelPath+"detail_Canada_NBPNP");
	  model.addObject("userId", userId);
	  return model;
	 }

	
	/**
	 * @see 展示详情页面
	 * @param request
	 * @return
	 * @author chenjianghe
	 * @throws IOException
	 */
	@RequestMapping(value = "/showDetail", method = RequestMethod.GET)
	public ModelAndView showDetail(HttpServletRequest request) {
		//读取session
//		Jedis jedis = RedisUtil.getJedis();
//		String userId = jedis.get(request.getSession().getId());
		String sessionId = request.getSession().getId();
		String userId = StaticMethod.nullObject2String(request.getSession().getAttribute(sessionId));
		ModelAndView model = new ModelAndView();
		model.setViewName(modelPath+"showDetail");
		model.addObject("userId", userId);
		return model;
	}
	
	/**
	 * @see 展示详情页面
	 * @param request
	 * @return
	 * @author chenjianghe
	 * @throws IOException
	 */
	@RequestMapping(value = "/showDetail_Canada_SINP", method = RequestMethod.GET)
	public ModelAndView showDetail_Canada_SINP(HttpServletRequest request) {
		//读取session
//		Jedis jedis = RedisUtil.getJedis();
//		String userId = jedis.get(request.getSession().getId());
		String sessionId = request.getSession().getId();
		String userId = StaticMethod.nullObject2String(request.getSession().getAttribute(sessionId));
		ModelAndView model = new ModelAndView();
		model.setViewName(modelPath+"showDetail_Canada_SINP");
		model.addObject("userId", userId);
		return model;
	}
	
	/**
	 * @see 展示详情页面
	 * @param request
	 * @return
	 * @author chenjianghe
	 * @throws IOException
	 */
	@RequestMapping(value = "/showDetail_Canada_QSW", method = RequestMethod.GET)
	public ModelAndView showDetail_Canada_QSW(HttpServletRequest request) {
		//读取session
//		Jedis jedis = RedisUtil.getJedis();
//		String userId = jedis.get(request.getSession().getId());
		String sessionId = request.getSession().getId();
		String userId = StaticMethod.nullObject2String(request.getSession().getAttribute(sessionId));
		ModelAndView model = new ModelAndView();
		model.setViewName(modelPath+"showDetail_Canada_QSW");
		model.addObject("userId", userId);
		return model;
	}

	/**
	 * @see 展示详情页面
	 * @param request
	 * @return
	 * @author chenjianghe
	 * @throws IOException
	 */
	@RequestMapping(value = "/showDetail_Canada_NS", method = RequestMethod.GET)
	public ModelAndView showDetail_Canada_NS(HttpServletRequest request) {
		//读取session
//		Jedis jedis = RedisUtil.getJedis();
//		String userId = jedis.get(request.getSession().getId());
		String sessionId = request.getSession().getId();
		String userId = StaticMethod.nullObject2String(request.getSession().getAttribute(sessionId));
		ModelAndView model = new ModelAndView();
		model.setViewName(modelPath+"showDetail_Canada_NS");
		model.addObject("userId", userId);
		return model;
	}

}
