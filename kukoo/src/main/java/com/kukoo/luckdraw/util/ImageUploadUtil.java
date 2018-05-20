package com.kukoo.luckdraw.util;

import java.io.File;
import java.io.FileOutputStream;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartFile;

public class ImageUploadUtil {
	/**
    *
    * 功能描述   保存图片
    *
    * @param filedata
    *           文件数据
    *　　返回图片位置
    */
   public static String saveFile( MultipartFile file, String filePath,String newFileName) {
	   //String filePath = request.getSession().getServletContext().getRealPath("/") + "upload/"; 
	    // 判断文件是否为空 
	    if (!file.isEmpty()) { 
	      try { 
	    	  	String fileName=file.getOriginalFilename();
	    	    //获取图片的扩展名
	    	  	String extensionName = fileName.substring(fileName.lastIndexOf(".") + 1);
	        // 文件保存路径 
	        filePath = filePath + newFileName+"."+extensionName; 
//	        if (!filePath.exists()) {
//	        		filePath.mkdirs();
//	        }
	        // 转存文件 
	        file.transferTo(new File(filePath)); 
	      } catch (Exception e) { 
	        e.printStackTrace(); 
	      } 
	    } 
	    return filePath;
	   
   }


   /**
    *
    * 功能描述：删除图片
    *
    * @param oldPic
    *
    */
   private void deleteFile(String oldPic) {
       // TODO Auto-generated method stub

       /* 构建文件目录 */
       File fileDir = new File(oldPic);
       if (fileDir.exists()) {
           //把修改之前的图片删除 以免太多没用的图片占据空间
           fileDir.delete();
       }

   }
}
