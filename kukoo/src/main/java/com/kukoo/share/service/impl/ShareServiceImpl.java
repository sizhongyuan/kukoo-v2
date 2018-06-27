package com.kukoo.share.service.impl;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.kukoo.base.util.StaticMethod;
import com.kukoo.markingol.dao.MarkingOLMapper;
import com.kukoo.markingol.model.MarkingOL;
import com.kukoo.markingol.service.MarkingOLService;
import com.kukoo.markingol.util.EEutil;
import com.kukoo.markingol.util.NSutil;
import com.kukoo.markingol.util.QSWutil;
import com.kukoo.markingol.util.SINPutil;
import com.kukoo.share.model.ShareModel;
import com.kukoo.share.service.ShareService;
import com.kukoo.share.sign.Sign;
import com.kukoo.share.util.WeinXinUtil;




/**
 * 在线答题实现类
 * @author Boco
 *
 */
@Service("shareService")
public class ShareServiceImpl implements ShareService{
	
	
	/**
	 * 获取分享信息
	 * @param url
	 * @return
	 * @throws Exception
	 */
	public JSONObject getShare(String url) throws Exception {
		JSONObject json = new JSONObject();
		WeinXinUtil wxUtil = new WeinXinUtil();
		ShareModel wx = new ShareModel();
		String access_token = wxUtil.getAccessToken();
		String ticket = wxUtil.getTicket(access_token);
		Map<String, String> ret = Sign.sign(ticket, url);
		// System.out.println(ret.toString());
		wx.setTicket(ret.get("jsapi_ticket"));
		wx.setSignature(ret.get("signature"));
		wx.setNoncestr(ret.get("nonceStr"));
		wx.setTimestamp(ret.get("timestamp"));
		json.put("appId", "wxa7e5e00c55178c8a");
		json.put("timestamp", ret.get("timestamp"));
		json.put("nonceStr", ret.get("nonceStr"));
		json.put("signature", ret.get("signature"));
		json.put("shareUrl", ret.get("url"));
		System.out.println("\n\n" + ret.toString() + "\n\n");
		System.out.println(json);
		return json;
	}


}
