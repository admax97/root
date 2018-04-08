package com.pjt.common.utils;

import org.springframework.core.convert.converter.Converter;

 /**
  * <p>Title: Pactera LMS</p>
  * Name: CustomFloatConverter
  * Description: 自定义浮点型类型绑定
  * Create Date: 2015年11月5日 上午11:17:21
  * File: com.pactera.lms.common.utils.CustomFloatConverter.java 
  * @author P0068848
  * @version 1.0
  */
public class CustomFloatConverter  implements Converter<String,Float>{

	@Override
	public Float convert(String source) {
		try {
			return new Float(source);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

}
