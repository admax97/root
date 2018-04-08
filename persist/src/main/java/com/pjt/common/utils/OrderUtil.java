package com.pjt.common.utils;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;



public class OrderUtil {
	
    public static String generateOrderNum() {
    	Date date = new Date();
    	SimpleDateFormat sf = new SimpleDateFormat("yyyyMMddHHmmssSSS");
    	String dateStr = new String();
        dateStr = sf.format(date);
    	String random= String.valueOf(Math.floor(Math.random()*9000+1000)).substring(0,4);
    	dateStr = dateStr+random;
        return dateStr;
    }
    
    public static DateFormat df = new  SimpleDateFormat("yyyy年MM月dd日 HH:mm");
    
    public static String dateToString(Date d){
    	return df.format(d);
    }
}
