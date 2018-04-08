package com.pjt.common.utils;


import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.Random;

import org.apache.commons.lang3.StringUtils;
import org.apache.commons.lang3.SystemUtils;

/**
 * Title: FileUtils Description: Copyright: Copyright &copy; 2007 By SKTA
 *
 * @author justin.hao
 */
public class FileUtils {

	public static final String getExt(final String path) {
		return StringUtils.substringAfterLast(path, ".").toLowerCase();
	}

	public static final String getName(final String filePath,
			final boolean isIncludeExt) {

		String fileName = null;

		if (filePath.indexOf(File.separator) < 0)
			fileName = filePath;
		else
			fileName = StringUtils.substringAfterLast(filePath, File.separator);

		if (!isIncludeExt)
			fileName = StringUtils.substringBefore(fileName, ".");

		return fileName;
	}

	public static final String getPath(final String localPath,
			final boolean isIncludeName) {
		return isIncludeName ? StringUtils.substringBeforeLast(localPath, ".")
				: StringUtils.substringBeforeLast(localPath, File.separator);
	}

	/**
	 * get file size(kb)
	 *
	 * @param file
	 * @return long
	 */
	public static final long getSize(final File file) {
		return file.length() / 1024;
	}

	public static final long getSize(final String filePath) {
		final File file = new File(filePath);
		return getSize(file);
	}

	public static final String getTempDirPath() {
		return SystemUtils.getJavaIoTmpDir().getPath() + File.separator;
	}

	public static final void remove(final String path) {
		final File file = new File(path);
		if (file.isFile())
			file.delete();
	}

	/**
	 * Remove the directory tree of the given path.
	 * The sub-dirs and files of the directory will be removed together
	 * @param path
	 */
	public static final void removeDir(final String path) {
		final File dir = new File(path);
		removeDir(dir);
	}

	public static final void removeDir(final File dir) {
		if (!dir.exists()) {
			return;
		}

		if (!dir.isDirectory()) {
			dir.delete();
			return;
		}

		File filelist[] = dir.listFiles();
		for (int i = 0; i < filelist.length; i++) {
			if (filelist[i].isDirectory()) {
				removeDir(filelist[i]);
			} else {
				filelist[i].delete();
			}
		}
		dir.delete();
	}
	 /*  
     * 生成随机文件名  
     */    
    public static final String generateRandomFilename(){    
        String RandomFilename = "";    
        Random rand = new Random();//生成随机数    
        int random = rand.nextInt();    
            
        Calendar calCurrent = Calendar.getInstance();    
        int intDay = calCurrent.get(Calendar.DATE);    
        int intMonth = calCurrent.get(Calendar.MONTH) + 1;    
        int intYear = calCurrent.get(Calendar.YEAR);    
        String now = String.valueOf(intYear) + "_" + String.valueOf(intMonth) + "_" + String.valueOf(intDay) + "_";    
        RandomFilename = now + String.valueOf(random > 0 ? random : ( -1) * random) + ".";    
        return RandomFilename;    
    }    
//	private final IOUtils iou = new IOUtils();
//
//	public boolean copy(final String input, final String output)
//			throws InOutException {
//		File fromFile;
//		File toFile;
//
//		fromFile = new File(input);
//
//		if (!fromFile.exists())
//			return false;
//
//		toFile = new File(output);
//
//		if (toFile.exists())
//			return true;
//
//		FileInputStream fis = null;
//
//		FileOutputStream fos = null;
//
//		try {
//			create(output);
//
//			fis = new FileInputStream(fromFile);
//
//			fos = new FileOutputStream(toFile);
//
//			int bytesRead;
//
//			final byte[] buf = new byte[4 * 1024]; // 4K buffer
//
//			while ((bytesRead = fis.read(buf)) != -1)
//				fos.write(buf, 0, bytesRead);
//
//			fos.flush();
//		} catch (final IOException e) {
//			throw new InOutException(e);
//		} finally {
//			iou.closeQuietly(fos);
//			iou.closeQuietly(fis);
//		}
//
//		return true;
//	}
//
//	public boolean create(final String name) throws InOutException {
//		final File f = new File(name);
//
//		if (f.exists())
//			return true;
//
//		final String path = StringUtils.substringBeforeLast(name,
//				File.separator);
//		createDir(path);
//
//		final File file = new File(name);
//
//		try {
//			file.createNewFile();
//		} catch (final IOException e) {
//			throw new InOutException("create file [" + name + "] failure", e);
//		}
//
//		return true;
//	}

	public boolean createDir(final String path) {
		final File filepath = new File(path);

		if (!filepath.exists())
			return filepath.mkdirs();

		return true;
	}

	public List<String> getFilesPath(final String path) {
		final List<String> files = new ArrayList<String>();
		final File file = new File(path);

		if (!file.exists() || !file.isDirectory())
			return files;

		final File[] fileArray = file.listFiles();

		for (final File f : fileArray)
			files.add(f.getPath());

		return files;
	}
	
	public File[] getSubFiles(final String path) {
		final File file = new File(path);

		if (!file.exists() || !file.isDirectory())
			return null;

		final File[] fileArray = file.listFiles();

		return fileArray;
	}

	public final boolean renameFileTo(final String filePath,
			final String newFilePath) {
		final File file = new File(filePath);
		if (!file.exists())
			return false;
		final File newFile = new File(newFilePath);
		if (newFile.exists())
			return false;

		return file.renameTo(newFile);
	}

	/*public static byte[] readFile(String filePath) throws IOException
    {

	   FileReader fr = new FileReader(filePath);
	   BufferedReader br = new BufferedReader(fr);
	   byte[] line = br.readLine().getBytes();
	   br.close();
	   fr.close();
		return line;
    } */
	
	/**
     * 
     * @param request
     * @param response
     * @param filePatch
     *            文件路径
     * @param showFileName
     *            要显示的文件名，注意：要加上扩展名
     * @throws Exception
     */
    /*public void download(HttpServletRequest request, HttpServletResponse response, String filePatch, String showFileName)
            throws Exception {

        request.setCharacterEncoding("UTF-8");
        response.setContentType("application/octet-stream");

        BufferedInputStream bis = null;
        BufferedOutputStream bos = null;
        long fileLength = new File(filePatch).length();
        String fileName = "";

        String agent = request.getHeader("USER-AGENT");
        // 解决文件名显示乱码问题
        if (null != agent && -1 != agent.indexOf("MSIE")) {
            fileName = java.net.URLEncoder.encode(showFileName, "UTF-8");
        } else {
            fileName = new String(showFileName.getBytes("UTF-8"), "ISO8859-1");
        }
        response.setHeader("Content-Disposition", "attachment;filename=" + fileName);
        response.setHeader("Content-Length", String.valueOf(fileLength));
        response.setHeader("connection", "close");
        bis = new BufferedInputStream(new FileInputStream(filePatch));
        bos = new BufferedOutputStream(response.getOutputStream());
        byte[] buff = new byte[2048];
        int bytesRead;
        while (-1 != (bytesRead = bis.read(buff, 0, buff.length))) {
            bos.write(buff, 0, bytesRead);
        }
        bis.close();
        bos.close();
    }*/
    
    public String readFileHex(String filePatch, int length) throws IOException {
        FileInputStream fileInputStream = new FileInputStream(new File(filePatch));
        StringBuffer str = new StringBuffer();

        int len = 1;
        byte[] temp = new byte[len];

        /* 16进制转化模块 */
        for (; (fileInputStream.read(temp, 0, len)) != -1;) {
            if (temp[0] > 0xf && temp[0] <= 0xff) {
                str.append(Integer.toHexString(temp[0]));
            } else if (temp[0] >= 0x0 && temp[0] <= 0xf) {
                // 对于只有1位的16进制数前边补“0”
                str.append("0" + Integer.toHexString(temp[0]));
            } else {
                // 对于int<0的位转化为16进制的特殊处理，因为Java没有Unsigned int，所以这个int可能为负数
                str.append(Integer.toHexString(temp[0]).substring(6));
            }
            if (str.length() > (length - 2)) {
                fileInputStream.close();
                return str.toString();
            }
        }
        fileInputStream.close();
        return str.toString();
    }
	
	public boolean checkFileExtension(String filePatch, String... extensions) throws Exception {
        if (StringUtils.isBlank(filePatch)) {
            return false;
        }
        if (extensions == null || extensions.length < 1) {
        	return false;
        }
        int index = filePatch.lastIndexOf(".");
        if (index < 0 || index == filePatch.length() - 1) {
        	return false;
        }
        String tmpExtension = filePatch.substring(index + 1);

        for (String extension : extensions) {
            if (extension.equalsIgnoreCase(tmpExtension)) {
                return true;
            }
        }
        
        return false;
    }
}
