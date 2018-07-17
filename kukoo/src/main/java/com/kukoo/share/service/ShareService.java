package com.kukoo.share.service;

import java.util.List;
import java.util.Map;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.kukoo.markingol.model.MarkingOL;
import com.kukoo.share.model.ShareConfigModel;




/**
 * 分享功能 接口
 * @author zhaobowen
 *
 */
public interface ShareService{
	
	/**
	 * 获取分享信息
	 * @param url
	 * @return
	 * @throws Exception
	 */
	public JSONObject getShare(String url) throws Exception;
	
	
	/**
	 * 获取access_token和jsapi_ticket
	 * @return
	 * @throws Exception
	 */
	public ShareConfigModel getShareConfig() throws Exception;
}
