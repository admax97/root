package com.pjt.common.utils;

import java.math.RoundingMode;
import java.text.DecimalFormat;

public class NumberHelper {
	public static String format(int size,double number){
		StringBuffer formatString = new StringBuffer("0");
		  if(size>0){
		   formatString.append(".");
		  }
		  for (int i = 0; i < size; i++) {
		   formatString.append("#");
		  }
		  DecimalFormat df = new DecimalFormat(formatString.toString());
		  df.setRoundingMode(RoundingMode.HALF_UP);
		return df.format(number);
	}
	
	public static Double formatToDouble(int size,double number){
		return Double.parseDouble(format(size,number));
	}
	
	public static Float formatToFloat(int size,double number){
		return Float.parseFloat(format(size,number));
	}
}
