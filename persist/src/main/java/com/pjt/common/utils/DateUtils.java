package com.pjt.common.utils;

import java.text.ParseException;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class DateUtils {

	private static SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");

	public static int compareDate(Date d1, Date d2) {
		try {
			Date dt1 = df.parse(df.format(d1));
			Date dt2 = df.parse(df.format(d2));
			if (dt1.getTime() > dt2.getTime()) {
				return 1; // dt1在dt2前
			} else if (dt1.getTime() < dt2.getTime()) {
				return -1; // dt1在dt2后
			} else {
				return 0;
			}
		} catch (Exception exception) {
			exception.printStackTrace();
		}
		return 0;
	}
	
	public static int compareDate(String d1, String d2, String format) {
		SimpleDateFormat df1 = new SimpleDateFormat(format);
		try {
			Date dt1 = df1.parse(d1);
			Date dt2 = df1.parse(d2);
			if (dt1.getTime() > dt2.getTime()) {
				return 1; // dt1在dt2前
			} else{
				return 0; // dt1在dt2后
			} 
		} catch (Exception exception) {
			exception.printStackTrace();
		}
		return 0;
	}


	public static int compareDate(String d1, Date d2) {
		try {
			Date dt1 = df.parse(d1);
			Date dt2 = df.parse(df.format(d2));
			if (dt1.getTime() > dt2.getTime()) {
				return 1; // dt1在dt2前
			} else if (dt1.getTime() < dt2.getTime()) {
				return -1; // dt1在dt2后
			} else {
				return 0;
			}
		} catch (Exception exception) {
			exception.printStackTrace();
		}
		return 0;
	}
	
	public static int compareDateBetween(String d1, String d2, String d3){
		try{
			Date dt1 = df.parse(d1);
			Date dt2 = df.parse(d2);
			Date dt3 = df.parse(d3);
			if(dt3.getTime() < dt1.getTime() || dt3.getTime() >dt2.getTime()){
				return -2;
			}
		}catch (Exception exception){
			exception.printStackTrace();
		}
		return 0;
	}

	public static Date stringToDate(String d) {
		try {
			return df.parse(d);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return null;
	}

	public static String dateToString(Date d) {
		return df.format(d);
	}
	
	public static String dateToString(Date d, String format) {
		SimpleDateFormat cformat = new SimpleDateFormat(format);
		return cformat.format(d);
	}

	public static int dateDiff(Date d1, Date d2) {
		long dtime1 = d1.getTime();
		long dtime2 = d2.getTime();
		long diff = dtime2 - dtime1;
		long day = diff / (3600 * 24 * 1000);
		return (int) day + 1;
	}

	public static String GetSysDate(String format, String StrDate, int year, int month, int day) {
		Calendar cal = Calendar.getInstance();
		SimpleDateFormat sFmt = new SimpleDateFormat(format);
		cal.setTime(sFmt.parse((StrDate), new ParsePosition(0)));

		if (day != 0) {
			cal.add(Calendar.DATE, day);
		}
		if (month != 0) {
			cal.add(Calendar.MONTH, month);
		}
		if (year != 0) {
			cal.add(Calendar.YEAR, year);

		}
		return sFmt.format(cal.getTime());
	}
	
	public static Date addDate(Date d1, int day, String format){
		Calendar cal = Calendar.getInstance();
		cal.setTime(d1);
		cal.add(Calendar.DATE, day);
		return cal.getTime();
	}
	public static long getDateSecondTime(Date d1, int hours){
		Calendar cal = Calendar.getInstance();
		cal.setTime(d1);
		cal.add(Calendar.HOUR_OF_DAY, hours);
		return cal.getTime().getTime();
	}
	public static long getLessTime(Date d1, int hours){
		Calendar cal = Calendar.getInstance();
		cal.setTime(d1);
		cal.add(Calendar.HOUR_OF_DAY, hours);
		long now = new Date().getTime();
		long cTime = cal.getTime().getTime();
		long result = cTime - now;
		if(result > 0){
			return result;
		}else{
			return 0;
		}
	}
	public static int getNumofWeek(Date d1){
		Calendar calendar = Calendar.getInstance();
	    SimpleDateFormat df = new SimpleDateFormat("yyyy-M-d");
	    df.format(calendar.getTime());
	    return calendar.get(Calendar.DAY_OF_WEEK);
	}
	public static Date getPreviousSundayDate(){
		 Calendar c = Calendar.getInstance();
		 c.set(Calendar.DAY_OF_WEEK, Calendar.SUNDAY);
		 return c.getTime();
	}

	public static Date getPreviousDate(){
		 Calendar c = Calendar.getInstance();
		 c.add(Calendar.DATE, -1);
		 return c.getTime();
	}

	public static String getStudyTime(Integer time){
		String date = "";
		if (time != null) {
			int hour = time / 3600000;
			int min = (time % 3600000) / 60000;
			int sec = ((time % 3600000) % 60000) / 1000;
			date = hour + ":" + min + ":" + sec;
		}
		return date;
	}
}
