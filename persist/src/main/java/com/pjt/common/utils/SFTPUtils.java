package com.pjt.common.utils;

import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.Vector;

import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.jcraft.jsch.Channel;
import com.jcraft.jsch.ChannelExec;
import com.jcraft.jsch.ChannelSftp;
import com.jcraft.jsch.ChannelSftp.LsEntry;
import com.jcraft.jsch.JSch;
import com.jcraft.jsch.Session;
import com.jcraft.jsch.SftpException;
import com.pjt.common.constants.CommonConstant;

/**
 * <p>Title: Pactera LMS</p>
 * Name: 
 * Description: SFTP方式文件上传到远程linux服务器
 * Create Date: 2015年11月26日 下午4:52:05
 * File: com.pactera.lms.common.utils.SFTPUtils.java 
 * @author gaodan
 * @version 1.0
 */
public class SFTPUtils {
	private static Logger logger = LoggerFactory.getLogger(SFTPUtils.class);
	public static  String separator =CommonConstant.FILE_SEPARATOR;
	private static float format=1024;
	private static DecimalFormat decimalFormat = new DecimalFormat(".#");
//	private static  String host=CommonConstant.IP;
//	private static  int port=22;
//	private static  String userName=CommonConstant.USER_NAME;
//	private static  String passWord=CommonConstant.PASSWORD;
//	public static   String COURSE_DIC=CommonConstant.COURSE_DIC;
//	public static   String DEFAULT_COURSE_PIC=CommonConstant.DEFAULT_COURSE_PIC;
//	public static String FILE_SERVER=CommonConstant.FILE_SERVER;
	
	
	public static  String host="";
	public static  int port=22;
	public static  String userName="";
	public static  String passWord="";
	public static   String baseUrl="";
	static{
		host=PropertiesHelper.getProperty("IP");
		port=Integer.parseInt(PropertiesHelper.getProperty("PORT"));
		userName=PropertiesHelper.getProperty("USER_NAME");
		passWord=PropertiesHelper.getProperty("PASSWORD");
		baseUrl=PropertiesHelper.getProperty("BASE_URL");
	}

	/**
	 * Name: 
	 * Description:与远程linux服务器建立SFTP连接 
	 * @author gaodan
	 * @date 2015年11月26日 下午4:54:31
	 * @param host
	 * @param port
	 * @param username
	 * @param password
	 * @return
	 */
	public static ChannelSftp connect(String host, int port, String username, String password) {
		ChannelSftp sftp = null;
		try {
			JSch jsch = new JSch();
			jsch.getSession(username, host, port);
			Session sshSession = jsch.getSession(username, host, port);
			logger.info("Session created.");
			sshSession.setPassword(password);
			Properties sshConfig = new Properties();
			sshConfig.put("StrictHostKeyChecking", "no");
			sshSession.setConfig(sshConfig);
			sshSession.connect();
			logger.info("Session connected.");
			logger.info("Opening Channel.");
			Channel channel = sshSession.openChannel("sftp");
			channel.connect();
			sftp = (ChannelSftp) channel;
			logger.info("Connected to " + host + ".");
		} catch (Exception e) {

		}
		return sftp;
	}
	public static ChannelSftp connect() {
		ChannelSftp sftp = null;
		try {
			JSch jsch = new JSch();
			jsch.getSession(userName, host, port);
			Session sshSession = jsch.getSession(userName, host, port);
			logger.info("Session created.");
			sshSession.setPassword(passWord);
			Properties sshConfig = new Properties();
			sshConfig.put("StrictHostKeyChecking", "no");
			sshSession.setConfig(sshConfig);
			sshSession.connect();
			logger.info("Session connected.");
			logger.info("Opening Channel.");
			Channel channel = sshSession.openChannel("sftp");
			channel.connect();
			sftp = (ChannelSftp) channel;
			logger.info("Connected to " + host + ".");
		} catch (Exception e) {
			e.getStackTrace();
             logger.info(e.getLocalizedMessage());
		}
		return sftp;
	}
	/**
	 * Name: 
	 * Description: 关闭sftp连接
	 * @author gaodan
	 * @date 2015年11月26日 下午5:27:52
	 * @param sftp
	 */
	public static void disconnect(ChannelSftp sftp ){
		if(!sftp.isClosed()){
			sftp.disconnect();
			logger.info("ChannelSftp 连接关闭");
		}
		
	}

	/**
	 * Name: 
	 * Description:将指定文件转成byte[] 
	 * @author gaodan
	 * @date 2015年11月26日 下午5:15:36
	 * @param filePath
	 * @return
	 */
	public static byte[] File2byte(String filePath) {
		FileInputStream fis = null;
		ByteArrayOutputStream bos = null;
		byte[] buffer = null;
		try {
			File file = new File(filePath);
			fis = new FileInputStream(file);
			bos = new ByteArrayOutputStream();
			byte[] b = new byte[1024 * 4];
			int n;
			while ((n = fis.read(b)) != -1) {
				bos.write(b, 0, n);
			}
			fis.close();
			bos.close();
			buffer = bos.toByteArray();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (fis != null) {
				try {
					fis.close();
				} catch (IOException e) {
					logger.error("", e);
				}
			}
			if (bos != null) {
				try {
					bos.close();
				} catch (IOException e) {
					logger.error("", e);
				}
			}
		}
		return buffer;
	}

	/**
	 * Name: 
	 * Description: 
	 * @author gaodan
	 * @date 2015年11月26日 下午5:21:29
	 * @param directory
	 * @param fileName
	 * @param byteArray
	 * @param sftp
	 */
	@SuppressWarnings({ "static-access" })
	public static boolean  uploadFile(String directory, String fileName, byte[] byteArray, ChannelSftp sftp) {
		boolean flag=false;
		InputStream in = null;
		String realPath = baseUrl.concat(CommonConstant.FILE_SEPARATOR).concat(directory);
		try {
			String[] dirArray=realPath.split(CommonConstant.FILE_SEPARATOR);
	    	for (int i=0;i<dirArray.length;i++) {
	    		String dir="";	
	    		String fileNamePath=dirArray[i];
	    		try {
	    			if(i==0){
	    				dir=CommonConstant.FILE_SEPARATOR.concat(fileNamePath);
	    			}else{
	    				dir=fileNamePath;
	    			}
	    			sftp.cd(dir);
				} catch (SftpException e) {
					if(sftp.SSH_FX_NO_SUCH_FILE == e.id){
						sftp.mkdir(fileNamePath);
			            sftp.cd(dir);
			        }
				}
				
			}
			in = new ByteArrayInputStream(byteArray);
			sftp.put(in, fileName);
			flag=true;
		} catch (Exception e) {
			e.printStackTrace();
			logger.error("",e);
			flag=false;
		} finally {
			if (in != null) {
				try {
					in.close();
				} catch (IOException e) {
					e.getStackTrace();
				}

			}
		}
		return flag;
	}
	/**
	 * Name: 
	 * Description:  删除指定目录下指定文件
	 * @author gaodan
	 * @date 2015年12月7日 下午6:13:45
	 * @param fileName  目录/文件名
	 * @param sftp
	 * @return
	 * @throws Exception 
	 */
	public static boolean deleteFile(String fileName,ChannelSftp sftp) throws Exception{
		sftp.rm(fileName);
		return true;
	}
	/**
	 * Name: 
	 * Description: 列出远程服务器上指定目录下的所有文件信息
	 * @author gaodan
	 * @date 2015年12月15日 下午2:21:12
	 * @param directory
	 * @param sftp
	 * @return
	 * @throws Exception
	 */
	@SuppressWarnings("unchecked")
	public static Vector<LsEntry> listFiles(String directory, ChannelSftp sftp) throws Exception{  
        return sftp.ls(directory);  
    }  
	/**
	 * Name: 
	 * Description:  获取远程服务器上指定路径下的文件信息
	 * @date 2015年12月16日 上午9:06:09
	 * @param directory
	 * @param sftp
	 * @param specifyType
	 * @return MapList<文件名称,文件名   文件大小   文件创建时间>
	 * @throws Exception
	 */
	public static List<Map<String,String>> getListFiles(String directory, ChannelSftp sftp,List<String> specifyTypeList) throws Exception{
		List<Map<String,String>> mapList=new ArrayList<Map<String,String>>();
		Vector<LsEntry> filelist=listFiles(directory,sftp);
		if(filelist!=null&&!filelist.isEmpty()){
			Map<String,String> map=null;
			for (LsEntry lsEntry : filelist) {
				map=new HashMap<String,String>();
				StringBuffer fileStr=new StringBuffer();
				//文件名称  排除目录 只要文件
				if(lsEntry.getLongname().startsWith("d")){
					continue;
				}
				//判断是否有需要过滤的文件格式  
				if(specifyTypeList!=null&&!specifyTypeList.isEmpty()){
					Map<String,String> typeMap=new HashMap<String,String>();
					for (String type : specifyTypeList) {
						typeMap.put(type, type);
					}
					//有指定文件格式则过滤掉指定格式之外的文件
					String fileRealType=lsEntry.getFilename().substring(lsEntry.getFilename().lastIndexOf(".")+1);
					if(typeMap.get(fileRealType)==null){
						continue;
					}
					
				}
				fileStr.append(lsEntry.getFilename()).append("  ");
				//文件大小  从字节转成kb
				long srcFileSize=lsEntry.getAttrs().getSize();
				float fileKBSize=byteToKb(srcFileSize);
				if(fileKBSize>=1024){
					float fileMBSize=kbToMb(fileKBSize);
					fileStr.append(fileMBSize).append("MB  ");
				}else{
					fileStr.append(fileKBSize).append("KB  ");
				}
			    //文件的创建日期
				Date date=DateHelper.parseDateFromUS(lsEntry.getAttrs().getMtimeString());
				fileStr.append(DateHelper.formatDate(date,DateHelper.YYYY_MM_DD_HH_MM_SS));
				map.put("fileName",lsEntry.getFilename()+","+fileKBSize);
				map.put("fileDesc",fileStr.toString());
				mapList.add(map);
			}
		}
		return mapList;
	}
	public static float byteToKb(long byteSize){
		float kbSize=0;
		kbSize=Float.parseFloat(decimalFormat.format(byteSize/format));
		return kbSize;
	}
	/**
	 * Name: 
	 * Description: KB转为MB 保留一位小数
	 * @date 2015年11月13日 上午10:15:05
	 * @param kbSize
	 * @return
	 */
	public static float kbToMb(float kbSize){
		float mbSize=0;
		mbSize=Float.parseFloat(decimalFormat.format(kbSize/format));
		return mbSize;
		
	}
    /**
     * Name: 
     * Description: 登录远程服务器执行shell脚本
     * @author gaodan
     * @date 2015年12月29日 下午2:27:23
     * @param privateKey
     * @param passphrase
     * @param shellPath
     * @param cdDir
     * @param mkDir
     * @param unzipFile
     * @throws Exception
     */
    public static void sshShell(String privateKey ,String passphrase,String shellPath,String cdDir,String unzipFile) throws Exception{
	    Session session = null;
	    Channel channel = null;
	    JSch jsch = new JSch();
	    //设置密钥和密码
	    if (privateKey != null && !"".equals(privateKey)) {
	        if (passphrase != null && "".equals(passphrase)) {
	            //设置带口令的密钥
	            jsch.addIdentity(privateKey, passphrase);
	        } else {
	            //设置不带口令的密钥
	            jsch.addIdentity(privateKey);
	        }
	    }
	    if(port <=0){
	        //连接服务器，采用默认端口
	        session = jsch.getSession(userName,host);
	    }else{
	        //采用指定的端口连接服务器
	        session = jsch.getSession(userName,host ,port);
	    }
	    //如果服务器连接不上，则抛出异常
	    if (session == null) {
	        throw new Exception("session is null");
	    }
	    //设置登陆主机的密码
	    session.setPassword(passWord);//设置登录密码
	    //设置第一次登陆的时候提示，可选值：(ask | yes | no)
	    Properties sshConfig = new Properties();
		sshConfig.put("StrictHostKeyChecking", "no");
	    session.setConfig(sshConfig);
	    //设置登陆超时时间
	    session.connect(30000);
	    try {
	        //创建sftp通信通道
	        channel = (Channel) session.openChannel("shell");
	        channel.connect(1000);
	        //获取输入流和输出流
	        InputStream instream = channel.getInputStream();
	        OutputStream outstream = channel.getOutputStream();
	        //发送需要执行的SHELL命令，需要用\n结尾，表示回车
	        String shellCommand = shellPath+" "+cdDir+" "+unzipFile+"\n";
//	        StringBuffer shellCommand =new StringBuffer(shellPath);
//	        shellCommand.append("  ");
//	        shellCommand.append(cdDir);
//	        shellCommand.append("  ");
//	        shellCommand.append(mkDir);
//	        shellCommand.append("  ");
//	        shellCommand.append(unzipFile);
//	        shellCommand.append("  /n");
	        outstream.write(shellCommand.toString().getBytes());
	        outstream.flush();
	        //获取命令执行的结果
	        if (instream.available() > 0) {
	            byte[] data = new byte[instream.available()];
	            int nLen = instream.read(data);
	            if (nLen < 0) {
	                throw new Exception("network error.");
	            }
	            //转换输出结果并打印出来
	            String temp = new String(data, 0, nLen,"iso8859-1");
	            logger.info(temp);
	        }
	        if(outstream!=null){
	        	outstream.close();
	        }
	        if(instream!=null){
	        	instream.close();
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    } finally {
            if(session!=null){
            	session.disconnect();
            }
            if(channel!=null){
            	channel.disconnect();
            }
	    }

	}
    public static void sshHelper(String shellPath,String cdDir,String unzipFile,String type){
    	  String result="";
  	    Session session =null;
  	    ChannelExec openChannel =null;
  	    InputStream in =null;
  	    try {
  	      JSch jsch=new JSch();
  	      session = jsch.getSession(userName, host, port);
  	      java.util.Properties config = new java.util.Properties();
  	      config.put("StrictHostKeyChecking", "no");
  	      session.setConfig(config);
  	      session.setPassword(passWord);
  	      session.connect();
  	      openChannel = (ChannelExec) session.openChannel("exec");
  	      String shellCommand = shellPath+" "+cdDir+" "+unzipFile+"  "+type+"\n";
  	      openChannel.setCommand(shellCommand);
  	      openChannel.connect(); 
  	      if(openChannel.getInputStream()!=null){
              in = openChannel.getInputStream();  
  	    	  BufferedReader reader = new BufferedReader(new InputStreamReader(in));  
  	    	  String buf = null;
  	    	  while ((buf = reader.readLine()) != null) {
  	    		  result+= new String(buf.getBytes("gbk"),"UTF-8")+"    <br>\r\n"; 
  	    	  }  
  	      }
  	    } catch (Exception e) {
  	      result+=e.getMessage();
  	    }finally{
  	      if(openChannel!=null&&!openChannel.isClosed()){
  	        openChannel.disconnect();
  	      }
  	      if(session!=null&&session.isConnected()){
  	        session.disconnect();
  	      }
  	      if(in!=null){
  	    	  try {
				in.close();
			} catch (IOException e) {
				logger.error("", e);
			}
  	      }
  	    }
  	    logger.info(result);
    }
    public static String sshHelper(String shellCommand){
  	  String result="";
	    Session session =null;
	    ChannelExec openChannel =null;
	    InputStream in =null;
	    try {
	      JSch jsch=new JSch();
	      session = jsch.getSession(userName, host, port);
	      java.util.Properties config = new java.util.Properties();
	      config.put("StrictHostKeyChecking", "no");
	      session.setConfig(config);
	      session.setPassword(passWord);
	      session.connect();
	      openChannel = (ChannelExec) session.openChannel("exec");
	     // String shellCommand = shellPath+" "+cdDir+" "+unzipFile+"  "+type+"\n";
	      openChannel.setCommand(shellCommand);
	      openChannel.connect(); 
	      if(openChannel.getInputStream()!=null){
            in = openChannel.getInputStream();  
	    	  BufferedReader reader = new BufferedReader(new InputStreamReader(in));  
	    	  String buf = null;
	    	  while ((buf = reader.readLine()) != null) {
	    		  result+= new String(buf.getBytes("gbk"),"UTF-8")+"\n"; 
	    	  }  
	      }
	    } catch (Exception e) {
	      result+=e.getMessage();
	    }finally{
	      if(openChannel!=null&&!openChannel.isClosed()){
	        openChannel.disconnect();
	      }
	      if(session!=null&&session.isConnected()){
	        session.disconnect();
	      }
	      if(in!=null){
	    	  try {
				in.close();
			} catch (IOException e) {
				logger.error("", e);
			}
	      }
	    }
	    logger.info(result);
	    if(!StringUtils.isEmpty(result)){
	    	
	    	String[] resultArray=result.split("\n");
	    	logger.info("imsmanifest.xml所在目录="+resultArray[resultArray.length-1]);
	    	return resultArray[resultArray.length-1];
	    }
	    
	    return null;
  }
    public static byte[] readBytesFromInput(InputStream in,int fileSize) throws IOException {  
        BufferedInputStream bufin = new BufferedInputStream(in);  
        int buffSize = fileSize*1024;  
        ByteArrayOutputStream out = new ByteArrayOutputStream(buffSize);    
        byte[] temp = new byte[buffSize];  
        int size = 0;  
        while ((size = bufin.read(temp)) != -1) {  
            out.write(temp, 0, size);  
        }  
        bufin.close();  
        byte[] content = out.toByteArray();  
        return content;  
    }  
    /**
     * Name: 
     * Description: 远程服务器上获取指定文件byte[]
     * @author gaodan
     * @date 2016年1月13日 下午5:04:19
     * @param directory  文件服务器上的文件所在的绝对路径
     * @param downloadFile  需要下载文件的名称
     * @param sftp
     * @param fileSize  缓冲区大小  根据需要获取的文件大小而设置  单位是MB 最小为1
     * @return
     * @throws Exception
     */
    public static byte[] downloadFile(String directory, String downloadFile, ChannelSftp sftp,int fileSize) throws Exception {
		byte[] fileByte=null;
		InputStream in=null;
		if(fileSize<=0){
			fileSize=1;
		}
		try {
			sftp.cd(directory);
			in=sftp.get(downloadFile);
			if(in!=null){
				fileByte=readBytesFromInput(in,fileSize);
			}else{
				logger.error("文件服务器上路径="+directory+"|文件="+downloadFile+"|获取不到");
			}
		} catch (Exception e) {
			logger.error("获取文件服务器上路径="+directory+"|文件="+downloadFile+"|发生异常:"+e.getMessage());
			throw new Exception("获取文件服务器上路径="+directory+"|文件="+downloadFile+"|发生异常:"+e.getMessage());
		}finally{
			if(in!=null){
				try {
					in.close();
				} catch (IOException e) {
					throw new Exception();
				}
			}
		}
		return fileByte;
	}
	public static void main(String[] args) {
		try {
			sshHelper("/usr/local/shell/file_excu.sh","/usr/local/shell","SCORM_1_2_pdf.zip","zip");
		} catch (Exception e) {
			logger.error("", e);
		}
		}

}
