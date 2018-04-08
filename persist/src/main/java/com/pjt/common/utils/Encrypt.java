package com.pjt.common.utils;

import java.security.*;
import javax.crypto.*;
import sun.misc.*;

public class Encrypt {
	public static final String secretKey="40225920";
	public static void main(String[] args) {
		String key = "123456789"; // 初始化密钥。
		Encrypt en = new Encrypt();
		en.setKey(key);
		en.setEncString("courseId=122&coursewareId=111");
		String a = en.getStrMi();
		System.out.println(a);
		en. setDesString(a);   //将要解密的密文传送给Encrypt.java进行解密计算。
		String M=en.getStrMing();
		System.out.println(M);

	}

	private Key key;
	private byte[] byteMi = null;
	private byte[] byteMing = null;
	private String strMi = "";
	private String strM = "";

	// 根据参数生成KEY
	public void setKey(String strKey) {
		try {
			KeyGenerator _generator = KeyGenerator.getInstance("DES");
			_generator.init(new SecureRandom(strKey.getBytes()));
			this.key = _generator.generateKey();
			_generator = null;
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	// 加密String明文输入,String密文输出
	@SuppressWarnings("restriction")
	public void setEncString(String strMing) {
		BASE64Encoder base64en = new BASE64Encoder();
		try {
			this.byteMing = strMing.getBytes("UTF8");
			this.byteMi = this.getEncCode(this.byteMing);
			this.strMi = base64en.encode(this.byteMi);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {

			this.byteMing = null;
			this.byteMi = null;
		}
	}

	// 加密以byte[]明文输入,byte[]密文输出
	private byte[] getEncCode(byte[] byteS) {
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

	// 解密:以String密文输入,String明文输出
	@SuppressWarnings("restriction")
	public void setDesString(String strMi) {
		BASE64Decoder base64De = new BASE64Decoder();
		try {
			this.byteMi = base64De.decodeBuffer(strMi);
			this.byteMing = this.getDesCode(byteMi);
			this.strM = new String(byteMing, "UTF8");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			base64De = null;
			byteMing = null;
			byteMi = null;
		}

	}

	// 解密以byte[]密文输入,以byte[]明文输出
	private byte[] getDesCode(byte[] byteD) {
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

	// 返回加密后的密文strMi
	public String getStrMi() {
		return strMi;
	}

	// 返回解密后的明文
	public String getStrMing() {
		return strM;
	}
}
