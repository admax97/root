package com.pjt.common.utils;
import java.security.Key;  
import java.security.SecureRandom;  
  
import javax.crypto.Cipher;  
import javax.crypto.KeyGenerator; 

public class Arithmetic {
	static Key key;  
	  
	 /** 
	  * 根据参数生成KEY 
	  *  
	  * @param strKey 
	  */  
	 public static void getKey(String strKey) {  
	  try {  
	   KeyGenerator _generator = KeyGenerator.getInstance("DES"); 
	   SecureRandom secureRandom = SecureRandom.getInstance("SHA1PRNG");  
	    secureRandom.setSeed(strKey.getBytes());
	   _generator.init(secureRandom);  
	   key = _generator.generateKey();  
	   _generator = null;  
	  } catch (Exception e) {  
	   e.printStackTrace();  
	  }  
	 }  
	  
	 /** 
	  * 加密String明文输入,String密文输出 
	  *  
	  * @param strMing 
	  * @return 
	  */  
	 public static String getEncString(String strMing) {  
	  byte[] byteMi = null;  
	  byte[] byteMing = null;  
	  String strMi = "";  
	  try {  
	   return byte2hex(getEncCode(strMing.getBytes()));  
	  
	   // byteMing = strMing.getBytes("UTF8");  
	   // byteMi = this.getEncCode(byteMing);  
	   // strMi = new String( byteMi,"UTF8");  
	  } catch (Exception e) {  
	   e.printStackTrace();  
	  } finally {  
	   byteMing = null;  
	   byteMi = null;  
	  }  
	  return strMi;  
	 }  
	  
	 /** 
	  * 解密 以String密文输入,String明文输出 
	  *  
	  * @param strMi 
	  * @return 
	  */  
	 public static String getDesString(String strMi) {  
	  byte[] byteMing = null;  
	  byte[] byteMi = null;  
	  String strMing = "";  
	  try {  
	   return new String(getDesCode(hex2byte(strMi.getBytes())));  
	  
	   // byteMing = this.getDesCode(byteMi);  
	   // strMing = new String(byteMing,"UTF8");  
	  } catch (Exception e) {  
	   e.printStackTrace();  
	  } finally {  
	   byteMing = null;  
	   byteMi = null;  
	  }  
	  return strMing;  
	 }  
	  
	 /** 
	  * 加密以byte[]明文输入,byte[]密文输出 
	  *  
	  * @param byteS 
	 * @return 
	  */  
	 private static byte[] getEncCode(byte[] byteS) {  
	  byte[] byteFina = null;  
	  Cipher cipher;  
	  try {  
	   cipher = Cipher.getInstance("DES");  
	   cipher.init(Cipher.ENCRYPT_MODE, key);  
	   byteFina = cipher.doFinal(byteS);  
	  } catch (Exception e) {  
	   e.printStackTrace();  
	  } finally {  
	   cipher = null;  
	  }  
	  return byteFina;  
	 }  
	  
	 /** 
	  * 解密以byte[]密文输入,以byte[]明文输出 
	  *  
	  * @param byteD 
	  * @return 
	  */  
	 private static byte[] getDesCode(byte[] byteD) {  
	  Cipher cipher;  
	  byte[] byteFina = null;  
	  try {  
	   cipher = Cipher.getInstance("DES");  
	   cipher.init(Cipher.DECRYPT_MODE, key);  
	   byteFina = cipher.doFinal(byteD);  
	  } catch (Exception e) {  
	   e.printStackTrace();  
	  } finally {  
	   cipher = null;  
	  }  
	  return byteFina;  
	 }  
	  
	 /** 
	  * 二行制转字符串 
	  *  
	  * @param b 
	  * @return 
	  */  
	 public static String byte2hex(byte[] b) { // 一个字节的数，  
	  // 转成16进制字符串  
	  String hs = "";  
	  String stmp = "";  
	  for (int n = 0; n < b.length; n++) {  
	  // 整数转成十六进制表示  
	   stmp = (Integer.toHexString(b[n] & 0XFF));
	   if (stmp.length() == 1)  
	    hs = hs + "0" + stmp;  
	   else  
	    hs = hs + stmp;  
	  }  
	  return hs.toUpperCase(); // 转成大写  
	 }  
	  
	 public static byte[] hex2byte(byte[] b) {  
	  if ((b.length % 2) != 0)  
	   throw new IllegalArgumentException("长度不是偶数");  
	  byte[] b2 = new byte[b.length / 2];  
	  for (int n = 0; n < b.length; n += 2) {  
	   String item = new String(b, n, 2);  
	   // 两位一组，表示一个字节,把这样表示的16进制字符串，还原成一个进制字节  
	   b2[n / 2] = (byte) Integer.parseInt(item, 16);  
	  }  
	  
	  return b2;  
	 }  
	  
	 public static void main(String[] args) {  
	  Arithmetic des1 = new Arithmetic();// 实例化一个对像  
	  des1.getKey("23103050");// 生成密匙  
	  
	  String strEnc = des1.getEncString("appkey=23103050&category=kehuguanli&chatNick=cntaobao%e6%af%9b%e8%8f%87%e5%b0%8f%e8%b1%a1%3a%e4%b8%b9%e4%b8%b9&deviceuuid=ff30d594514d915107abf18d44fceb5f&from=qianniupc&instance=6281_A7685C39470A4EF192A51A11700B9A0E&nick=yu4250&sdkversion=107003&seller_id=20616365&sessionkey=6301a19b755534800a3a0459c4f98bdfc22cc94723cd6a720616365&sign=39E9B5082E5F6A3F0E942BEACF035871&slot=wangwang&timestamp=1428630435195&user_id=20616365&version=2.08.05N");// 加密字符串,返回String的密文  
	  System.out.println(strEnc);  
	  Arithmetic des2 = new Arithmetic();// 实例化一个对像  
	  des2.getKey("23103050");// 生成密匙  
	  String strDes = des2.getDesString(strEnc);// 把String 类型的密文解密  
	 System.out.println(strDes);  
	 }  


}
