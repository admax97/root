package com.pjt.common.utils;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.core.convert.converter.Converter;
 /**
  * <p>Title: Pactera LMS</p>
  * Name: CustomDateConverter
  * Description: 自定义日期类型绑定
  * Create Date: 2015年11月5日 上午9:46:08
  * File: com.pactera.lms.common.utils.CustomDateConverter.java 
  * @author P0068848
  * @version 1.0
  */
public class CustomDateConverter implements Converter<String,Date>{

	@Override
	public Date convert(String source) {
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		try {
			if(source.trim().length()==10){
				source+=" 00:00:00";
			}
			return simpleDateFormat.parse(source);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return null;
	}
	
}
