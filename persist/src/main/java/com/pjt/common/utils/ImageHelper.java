package com.pjt.common.utils;

import java.awt.Rectangle;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Iterator;

import javax.imageio.ImageIO;
import javax.imageio.ImageReadParam;
import javax.imageio.ImageReader;
import javax.imageio.stream.ImageInputStream;

import sun.misc.BASE64Decoder;

public class ImageHelper {
	public static void cutImage(String src,String dest,int x,int y,int w,int h,int width) throws IOException{   
        InputStream in=new FileInputStream(src);  
        ImageInputStream iis = ImageIO.createImageInputStream(in); 
//        Iterator<ImageReader> iterator = ImageIO.getImageReadersByFormatName("jpg");   
        Iterator<ImageReader> iterator = ImageIO.getImageReaders(iis);   
        ImageReader reader = iterator.next();   
        reader.setInput(iis, true);   
        ImageReadParam param = reader.getDefaultReadParam(); 
        
        int imageIndex = 0;   
        int realwidth = reader.getWidth(imageIndex);   
        float scale = (float)realwidth/width;
        
        int rx = NumberHelper.formatToFloat(0,x*scale).intValue();
        int ry = NumberHelper.formatToFloat(0,y*scale).intValue();
        int rw = NumberHelper.formatToFloat(0,w*scale).intValue();
        int rh = NumberHelper.formatToFloat(0,h*scale).intValue();
        
        Rectangle rect = new Rectangle(rx,ry,rw,rh);    
        param.setSourceRegion(rect);   
        BufferedImage bi = reader.read(0,param);     
        ImageIO.write(bi, "jpg", new File(dest));             
        if (in != null)
			in.close();
		if (iis != null)
			iis.close();
    }  
	
	 //base64字符串转化成图片  
    public static byte[] generateImage(String imgStr) throws IOException  
    {   
    	//对字节数组字符串进行Base64解码并生成图片  
        BASE64Decoder decoder = new BASE64Decoder();  
        //Base64解码  
        byte[] b = decoder.decodeBuffer(imgStr);  
        for(int i=0;i<b.length;++i)  
        {  
            if(b[i]<0)  
            {//调整异常数据  
                b[i]+=256;  
            }  
        }  
        return b;
    }
}
