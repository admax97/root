package com.pjt.common.utils;

import org.springframework.core.convert.converter.Converter;

import java.sql.Timestamp;
import java.text.Format;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * <p>Title: Pactera LMS</p>
 * Name: CustomTimestampConverter
 * Description:
 * Create Date: 2015/12/1 16:10
 * File: com.pactera.lms.common.utils.CustomTimestampConverter.java
 *
 * @author zhiming.dong
 * @version 1.0
 */
public class CustomTimestampConverter implements Converter<String,Timestamp> {

    @Override
    public Timestamp convert(String source) {
        try {
            Format format = new SimpleDateFormat("yyyy-MM-dd HH:mm");
            Date d = (Date) format.parseObject(source);
            Timestamp ts = new Timestamp(d.getTime());
            return ts;
        } catch (ParseException e) {
            e.printStackTrace();
        }
        return null;
    }

}
