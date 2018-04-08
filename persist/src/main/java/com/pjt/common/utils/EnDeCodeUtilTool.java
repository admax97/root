package com.pjt.common.utils;

import java.util.HashMap;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

 /**
  * <p>Title: Pactera LMS</p>
  * Name: 
  * Description: 参数加密解密工具类
  * Create Date: 2016年2月24日 上午9:01:40
  * File: com.pactera.lms.common.utils.EnDeCodeUtilTool.java 
  * @author gaodan
  * @version 1.0
  */
public class EnDeCodeUtilTool {
	private static Logger logger = LoggerFactory.getLogger(EnDeCodeUtilTool.class);
	private static final String  SECRETKEY="40225920";
	/**
	 * Name: 
	 * Description: 给字符串加密处理
	 * @author gaodan
	 * @date 2016年2月24日 上午11:17:45
	 * @param paramStr
	 * @return
	 */
	public static String getEnCodeStr(String paramStr){
		//将参数加密处理
//		Encrypt en = new Encrypt();
//		en.setKey(Encrypt.secretKey);
//		en.setEncString(paramStr);
//		String miString = en.getStrMi();
	    Arithmetic des1 = new Arithmetic();// 实例化一个对像  
		des1.getKey(SECRETKEY);// 生成密匙  
		String miString = des1.getEncString(paramStr);
//		try {
//			miString=URLEncoder.encode(miString, "utf-8");
//		} catch (Exception e) {
//			logger.error("给参数->"+paramStr+"加密发生异常:"+e.getMessage());
//			e.getStackTrace();
//			return null;
//		}
		return miString;
	}
	/**
	 * Name: 
	 * Description: 
	 * @author gaodan
	 * @date 2016年2月24日 上午9:06:21
	 * @param courseId
	 * @param coursearchiveId
	 * @return
	 */
	public static String getEnCodeStr(Integer courseId,Integer courseArchiveId){
		//将参数组装成URL参数格式 连接符&
		String paramStr="courseId="+courseId+"&courseArchiveId="+courseArchiveId;
		//将参数加密处理
		 Arithmetic des1 = new Arithmetic();// 实例化一个对像  
		des1.getKey(SECRETKEY);// 生成密匙  
		String miString = des1.getEncString(paramStr);
//		try {
//			miString=URLEncoder.encode(miString, "utf-8");
//		} catch (Exception e) {
//			logger.error("courseId="+courseId+"|courseArchiveId="+courseArchiveId+"|参数加密发生异常:"+e.getMessage());
//			e.getStackTrace();
//			return null;
//		}
		return miString;
	}
	/**
	 * Name: 
	 * Description: 
	 * @author gaodan
	 * @date 2016年2月24日 上午9:06:26
	 * @param courseId
	 * @param coursearchiveId
	 * @param coursewareId
	 * @return
	 */
	public static String getEnCodeStr(Integer courseId,Integer courseArchiveId,Integer coursewareId){
		//将参数组装成URL参数格式 连接符&
		String paramStr="courseId="+courseId+"&courseArchiveId="+courseArchiveId+"&coursewareId="+coursewareId;
		//将参数加密处理
		Arithmetic des1 = new Arithmetic();// 实例化一个对像  
		des1.getKey(SECRETKEY);// 生成密匙  
		String miString = des1.getEncString(paramStr);
//		try {
//			miString=URLEncoder.encode(miString, "utf-8");
//		} catch (Exception e) {
//			logger.error("courseId="+courseId+"|courseArchiveId="+courseArchiveId+"|coursewareId="+coursewareId+"|参数加密发生异常:"+e.getMessage());
//			e.getStackTrace();
//			return null;
//		}
		return miString;
	}
	/**
	 * Name: 
	 * Description: 
	 * @author gaodan
	 * @date 2016年2月24日 上午9:07:05
	 * @param miString
	 * @return
	 */
	public static Map<String,Integer> getDeCodeURLStr(String miString){
		Map<String,Integer> map=null;
		//将密文解密
		//将参数加密处理
		 Arithmetic des2 = new Arithmetic();// 实例化一个对像  
		 des2.getKey(SECRETKEY);// 生成密匙  
		 String mingString = des2.getDesString(miString);
		String[] paramArray=mingString.split("&");
		if(paramArray!=null&&paramArray.length>0){
			map=new HashMap<String,Integer>();
			for (String str : paramArray) {
				String[] subParamArray=str.split("=");
				if(subParamArray!=null&&subParamArray.length>1){
					map.put(subParamArray[0], Integer.parseInt(subParamArray[1]));
				}
			}
		}
		return map;
	}
	public static String getDeCodeStr(String miString){
		//将密文解密
		 Arithmetic des2 = new Arithmetic();// 实例化一个对像  
		 des2.getKey(SECRETKEY);// 生成密匙  
		 String mingString = des2.getDesString(miString);
		return mingString;
	}
}
