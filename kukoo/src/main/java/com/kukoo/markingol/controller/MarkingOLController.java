package com.kukoo.markingol.controller;

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

import redis.clients.jedis.Jedis;

@RestController
@RequestMapping("/markingOLController")
public class MarkingOLController {
	
	static final String modelPath = "WEB-INF/pages/markingol/";
	
	@Autowired
	public MarkingOLService markingOLService;
	
	private Logger logger = LoggerFactory.getLogger(MarkingOLController.class);
	
	/**
	 * @see 展示在线答题
	 * @param request
	 * @return
	 * @author 张世杰
	 * @throws IOException
	 */
	@RequestMapping(value = "/showMarkingOL", method = RequestMethod.GET)
	public ModelAndView showMarkingOL(HttpServletRequest request) {
		//读取session
//		Jedis jedis = RedisUtil.getJedis();
//		String userId = jedis.get(request.getSession().getId());
		String sessionId = request.getSession().getId();
		String userId = StaticMethod.nullObject2String(request.getSession().getAttribute(sessionId));
		ModelAndView model = new ModelAndView();
		model.setViewName(modelPath+"showMarkingOL");
		model.addObject("userId", userId);
		return model;
	}
	
	/**
	 * @see 展示在线答题结果
	 * @param request
	 * @return
	 * @author 林彬
	 * @throws IOException
	 */
	@RequestMapping(value = "/resultOL", method = RequestMethod.GET)
	public ModelAndView resultOL(HttpServletRequest request) {
		
		ModelAndView model = new ModelAndView();
		model.setViewName(modelPath+"resultOL");
		return model;
	}
	
	/**
	 * 根据答题信息返回得分等信息
	 * @param request
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/addMarkingOL", method=RequestMethod.POST)
	@ResponseBody
	public JSONObject addMarking(HttpServletRequest request) throws Exception{
		System.out.println(request.getParameter("marking"));
		//传入jsonarr
		String input = StaticMethod.nullObject2String(request.getParameter("marking"));
		JSONArray inputJsonarr = JSONArray.parseArray(input);
		System.out.println(inputJsonarr);
		
		JSONObject applicant1 = inputJsonarr.getJSONObject(0);
		System.out.println("--------");
		System.out.println(applicant1.getString("question5"));
		JSONArray question5 = JSONArray.parseArray(applicant1.getString("question5"));
		applicant1.put("question5", question5);
		JSONObject question6 = JSONObject.parseObject(applicant1.getString("question6"));
		applicant1.put("question6", question6);
		JSONObject question7 = JSONObject.parseObject(applicant1.getString("question7"));
		applicant1.put("question7", question7);
		String question1Value = applicant1.getString("question1");
		JSONArray inputJson = new JSONArray();
		inputJson.add(applicant1);
		if("有".equals(question1Value)) {
			JSONObject applicant2 = inputJsonarr.getJSONObject(1);
			JSONArray question25 = JSONArray.parseArray(applicant2.getString("question5"));
			applicant2.put("question5", question25);
			JSONObject question26 = JSONObject.parseObject(applicant2.getString("question6"));
			applicant2.put("question6", question26);
			JSONObject question27 = JSONObject.parseObject(applicant2.getString("question7"));
			applicant2.put("question7", question27);
			inputJson.add(applicant2);
		}
		
		logger.info("答题传入json==================="+inputJson.toJSONString());
		//返回jsonarr
		JSONObject outPutJson = new JSONObject();
		//绿手推荐
		JSONArray recommend = new JSONArray();
		//黄手推荐
		JSONArray promote = new JSONArray();
		outPutJson.put("input", inputJsonarr);
		
		//获取可以推荐项目
		JSONObject extendProjectOne = markingOLService.extendProjectOne(inputJson);
		if(extendProjectOne.get("recommend")!=null&&extendProjectOne.get("promote")==null){
			recommend.add(extendProjectOne.get("recommend"));
		}else if(extendProjectOne.get("promote")!=null&&extendProjectOne.get("recommend")==null){
			promote.add(extendProjectOne.get("promote"));
		}
		JSONObject extendProjectTwo = markingOLService.extendProjectTwo(inputJson);
		if(extendProjectTwo.get("recommend")!=null&&extendProjectTwo.get("promote")==null){
			recommend.add(extendProjectTwo.get("recommend"));
		}else if(extendProjectTwo.get("promote")!=null&&extendProjectTwo.get("recommend")==null){
			promote.add(extendProjectTwo.get("promote"));
		}
		JSONObject extendProjectThree = markingOLService.extendProjectThree(inputJson);
		if(extendProjectThree.get("recommend")!=null&&extendProjectThree.get("promote")==null){
			recommend.add(extendProjectThree.get("recommend"));
		}else if(extendProjectThree.get("promote")!=null&&extendProjectThree.get("recommend")==null){
			promote.add(extendProjectThree.get("promote"));
		}
		JSONObject extendProjectFour = markingOLService.extendProjectFour(inputJson);
		if(extendProjectFour.get("recommend")!=null&&extendProjectFour.get("promote")==null){
			recommend.add(extendProjectFour.get("recommend"));
		}else if(extendProjectFour.get("promote")!=null&&extendProjectFour.get("recommend")==null){
			promote.add(extendProjectFour.get("promote"));
		}
		JSONObject extendProjectFive = markingOLService.extendProjectFive(inputJson);
		if(extendProjectFive.get("recommend")!=null&&extendProjectFive.get("promote")==null){
			recommend.add(extendProjectFive.get("recommend"));
		}else if(extendProjectFive.get("promote")!=null&&extendProjectFive.get("recommend")==null){
			promote.add(extendProjectFive.get("promote"));
		}
		JSONObject extendProjectSix = markingOLService.extendProjectSix(inputJson);
		if(extendProjectSix.get("recommend")!=null&&extendProjectSix.get("promote")==null){
			recommend.add(extendProjectSix.get("recommend"));
		}else if(extendProjectSix.get("promote")!=null&&extendProjectSix.get("recommend")==null){
			promote.add(extendProjectSix.get("promote"));
		}
		JSONObject extendProjectSeven = markingOLService.extendProjectSeven(inputJson);
		if(extendProjectSeven.get("recommend")!=null&&extendProjectSeven.get("promote")==null){
			recommend.add(extendProjectSeven.get("recommend"));
		}else if(extendProjectSeven.get("promote")!=null&&extendProjectSeven.get("recommend")==null){
			promote.add(extendProjectSeven.get("promote"));
		}
		JSONObject EEProject = markingOLService.EEProject(inputJson);
		if(EEProject.get("recommend")!=null&&EEProject.get("promote")==null){
			recommend.add(EEProject.get("recommend"));
		}else if(EEProject.get("promote")!=null&&EEProject.get("recommend")==null){
			promote.add(EEProject.get("promote"));
		}
		JSONObject OAProject = markingOLService.OAProject(inputJson);
		if(OAProject.get("recommend")!=null&&OAProject.get("promote")==null){
			recommend.add(OAProject.get("recommend"));
		}else if(OAProject.get("promote")!=null&&OAProject.get("recommend")==null){
			promote.add(OAProject.get("promote"));
		}
		JSONObject NSProject = markingOLService.NSProject(inputJson);
		if("green".equals(NSProject.get("passType"))){
			recommend.add(NSProject);
		}else if("yellow".equals(NSProject.get("passType"))){
			promote.add(NSProject);
		}
		JSONObject SINPProject = markingOLService.SINPProject(inputJson);
		if("green".equals(SINPProject.get("passType"))){
			recommend.add(SINPProject);
		}else if("yellow".equals(SINPProject.get("passType"))){
			promote.add(SINPProject);
		}
		
		JSONObject QSWProject = markingOLService.QSWProject(inputJson);
		JSONArray sjsonarr = QSWProject.getJSONArray("specialty");
		if(sjsonarr.size()>0){
			if("green".equals(QSWProject.get("passType"))){
				recommend.add(QSWProject);
			}else if("yellow".equals(QSWProject.get("passType"))){
				promote.add(QSWProject);
			}else{
				outPutJson.put("Quebec", QSWProject);
			}
		}else{
			outPutJson.put("Quebec", QSWProject);
		}
		outPutJson.put("recommend", recommend);
		outPutJson.put("promote", promote);
		logger.info("答题返回json==================="+outPutJson.toJSONString());
		System.out.println(outPutJson);
		return outPutJson;
	}
	
	/**
	 * 获取全部魁北克专业
	 * @param request
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/getAllProfession", method=RequestMethod.GET)
	@ResponseBody
	public JSONArray getAllProfession(HttpServletRequest request){
		
		JSONArray array = new JSONArray();
		try {
			List list = markingOLService.getAllProfession();
			for(int i = 0 ; i < list.size() ; i++) {
				JSONObject obj = new JSONObject();
				Map map = (Map)list.get(i);
				String id = StaticMethod.nullObject2String(map.get("id"));
				String cnName = StaticMethod.nullObject2String(map.get("profession_cn_name"));
				String enName = StaticMethod.nullObject2String(map.get("profession_en_name"));
				obj.put("id", id);
				obj.put("cnName", cnName);
				obj.put("enName", enName);
				array.add(obj);
			}
//			String aa = JSON.toJSONString(list);
//			array = JSON.parseArray(aa);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return array;
	}
	
	

}
