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
	
	////////////////////////////////////////////////////////////////////////////////////////////////
	/**
	 * @see 联邦技术移民详情页
	 * @param request
	 * @return
	 * @author linbin
	 * @throws IOException
	 */
	@RequestMapping(value = "/detail_CA001", method = RequestMethod.GET)
	public ModelAndView detail_CA001(HttpServletRequest request) {
		//读取session
//		Jedis jedis = RedisUtil.getJedis();
//		String userId = jedis.get(request.getSession().getId());
//		String sessionId = request.getSession().getId();
//		String userId = StaticMethod.nullObject2String(request.getSession().getAttribute(sessionId));
		ModelAndView model = new ModelAndView();
		model.setViewName(modelPath+"detail_CA001");
//		model.addObject("userId", userId);
		return model;
	}
	
	/**
	 * @see 魁省技术移民详情页
	 * @param request
	 * @return
	 * @author linbin
	 * @throws IOException
	 */
	@RequestMapping(value = "/detail_CA002", method = RequestMethod.GET)
	public ModelAndView detail_CA002(HttpServletRequest request) {
		//读取session
//		Jedis jedis = RedisUtil.getJedis();
//		String userId = jedis.get(request.getSession().getId());
//		String sessionId = request.getSession().getId();
//		String userId = StaticMethod.nullObject2String(request.getSession().getAttribute(sessionId));
		ModelAndView model = new ModelAndView();
		model.setViewName(modelPath+"detail_CA002");
//		model.addObject("userId", userId);
		return model;
	}
	
	/**
	 * @see 新斯科舍省技术移民详情页
	 * @param request
	 * @return
	 * @author linbin
	 * @throws IOException
	 */
	@RequestMapping(value = "/detail_CA003", method = RequestMethod.GET)
	public ModelAndView detail_CA003(HttpServletRequest request) {
		//读取session
//		Jedis jedis = RedisUtil.getJedis();
//		String userId = jedis.get(request.getSession().getId());
//		String sessionId = request.getSession().getId();
//		String userId = StaticMethod.nullObject2String(request.getSession().getAttribute(sessionId));
		ModelAndView model = new ModelAndView();
		model.setViewName(modelPath+"detail_CA003");
//		model.addObject("userId", userId);
		return model;
	}
	
	/**
	 * @see 萨省技术移民详情页
	 * @param request
	 * @return
	 * @author linbin
	 * @throws IOException
	 */
	@RequestMapping(value = "/detail_CA004", method = RequestMethod.GET)
	public ModelAndView detail_CA004(HttpServletRequest request) {
		//读取session
//		Jedis jedis = RedisUtil.getJedis();
//		String userId = jedis.get(request.getSession().getId());
//		String sessionId = request.getSession().getId();
//		String userId = StaticMethod.nullObject2String(request.getSession().getAttribute(sessionId));
		ModelAndView model = new ModelAndView();
		model.setViewName(modelPath+"detail_CA004");
//		model.addObject("userId", userId);
		return model;
	}
	
	/**
	 * @see 安大略省技术移民详情页
	 * @param request
	 * @return
	 * @author linbin
	 * @throws IOException
	 */
	@RequestMapping(value = "/detail_CA005", method = RequestMethod.GET)
	public ModelAndView detail_CA005(HttpServletRequest request) {
		//读取session
//		Jedis jedis = RedisUtil.getJedis();
//		String userId = jedis.get(request.getSession().getId());
//		String sessionId = request.getSession().getId();
//		String userId = StaticMethod.nullObject2String(request.getSession().getAttribute(sessionId));
		ModelAndView model = new ModelAndView();
		model.setViewName(modelPath+"detail_CA005");
//		model.addObject("userId", userId);
		return model;
	}
	
	/**
	 * @see 新不伦瑞克省技术移民详情页
	 * @param request
	 * @return
	 * @author linbin
	 * @throws IOException
	 */
	@RequestMapping(value = "/detail_CA006", method = RequestMethod.GET)
	public ModelAndView detail_CA006(HttpServletRequest request) {
		//读取session
//		Jedis jedis = RedisUtil.getJedis();
//		String userId = jedis.get(request.getSession().getId());
//		String sessionId = request.getSession().getId();
//		String userId = StaticMethod.nullObject2String(request.getSession().getAttribute(sessionId));
		ModelAndView model = new ModelAndView();
		model.setViewName(modelPath+"detail_CA006");
//		model.addObject("userId", userId);
		return model;
	}
	
	/**
	 * @see 澳大利亚189独立技术移民详情页
	 * @param request
	 * @return
	 * @author linbin
	 * @throws IOException
	 */
	@RequestMapping(value = "/detail_AU001", method = RequestMethod.GET)
	public ModelAndView detail_AU001(HttpServletRequest request) {
		//读取session
//		Jedis jedis = RedisUtil.getJedis();
//		String userId = jedis.get(request.getSession().getId());
//		String sessionId = request.getSession().getId();
//		String userId = StaticMethod.nullObject2String(request.getSession().getAttribute(sessionId));
		ModelAndView model = new ModelAndView();
		model.setViewName(modelPath+"detail_AU001");
//		model.addObject("userId", userId);
		return model;
	}
	
	/**
	 * @see 澳大利亚190州担保技术移民详情页
	 * @param request
	 * @return
	 * @author linbin
	 * @throws IOException
	 */
	@RequestMapping(value = "/detail_AU002", method = RequestMethod.GET)
	public ModelAndView detail_AU002(HttpServletRequest request) {
		//读取session
//		Jedis jedis = RedisUtil.getJedis();
//		String userId = jedis.get(request.getSession().getId());
//		String sessionId = request.getSession().getId();
//		String userId = StaticMethod.nullObject2String(request.getSession().getAttribute(sessionId));
		ModelAndView model = new ModelAndView();
		model.setViewName(modelPath+"detail_AU002");
//		model.addObject("userId", userId);
		return model;
	}
	
	
}
