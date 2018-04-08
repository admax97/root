package com.pjt.common.utils;

import java.util.Map;
import java.util.Set;

public class MessageTemplateHelper {
	
	public static String getMessageWithTemplate(String templateFile, Map<String, String> params) {
		String template = getTemplate(templateFile);
		Set<String> keys = params.keySet();
		for (String key : keys) {
			String keyParam = "<" + key + ">";
			template = template.replaceAll(keyParam, params.get(key).toString());
		}
		return template;
	}

	private static String getTemplate(String name) {
		return PropertiesHelper.getProperty(name);
	}

}
