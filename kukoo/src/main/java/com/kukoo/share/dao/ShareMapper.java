package com.kukoo.share.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.kukoo.markingol.model.MarkingOL;
import com.kukoo.share.model.ShareConfigModel;



public interface ShareMapper {
	
	/**
	 * 保存获取的access_token和jsapi_ticket
	 * 
	 */
	public void saveShareConfig(ShareConfigModel shareConfigModel);
	
	/**
	 * 保存获取的access_token和jsapi_ticket
	 * @return 
	 * 
	 */
	public List getShareConfig();
	
	
}
