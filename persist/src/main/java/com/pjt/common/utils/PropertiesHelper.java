/*
 * Pactera Technology International Ltd.
 * Copyright (c) 2014-2015 All Rights Reserved.
 */
package com.pjt.common.utils;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

import org.apache.log4j.Logger;


/**
 * <p>Title: PC-BHEC</p>
 * @version 1.0
 */
public class PropertiesHelper {
	private static final Logger LOGGER = Logger.getLogger(PropertiesHelper.class);
	private static Properties props = new Properties();

	static {
		InputStream inputStream = PropertiesHelper.class.getClassLoader()
				.getResourceAsStream("application.properties");
		try {
			props.load(inputStream);
		} catch (IOException e) {
			LOGGER.error("Could not found file application.properties");
			throw new RuntimeException("Could not found file application.properties");
		}
	}

	/**
	 * Name: 读取配置文件配置参数值
	 * Description: 
	 * @author Sky.liu
	 * @date 2014年12月18日 下午10:19:03
	 * @param key 键
	 * @return 值
	 */
	public static final String getProperty(String key) {

		return props.getProperty(key);
	}
	public static void main(String[] args) {
		System.out.println(getProperty("USER_NAME"));
	}
}