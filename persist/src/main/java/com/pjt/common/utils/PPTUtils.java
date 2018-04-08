package com.pjt.common.utils;



/**
 * Title: PPTUtils
 * Description:
 * Copyright: Copyright &copy; 2007 By SKTA
 *
 * @author justin.hao
 */
public class PPTUtils {

//  /**
//   * Logger for this class
//   */
//  private static final Logger LOGGER = Logger.getLogger(PPTUtils.class);
//  
//  /**
//   * logger for convert failure output convertError.log
//  */
//  //protected static final ConvertErrorLogHelper ERRORLOGGER = ConvertErrorLogHelper.getInstance();
//
//  private final static FileUtils fu = new FileUtils();;
//
//  private final static String EXTENSION_PPT = "ppt";
//  private final static String EXTENSION_PPTX = "pptx";
//
//  /**
//   * convert ppt to images return images path
//   *
//   * @param pptPath
//   * @param outPath
//   * @return List<String>
// * @throws Exception
//   */
//  @SuppressWarnings("unchecked")
//  public static void convertToSlides(final String pptPath, final String outPath) throws Exception {
//
//	String docType = getPPTDocumentType(pptPath);
//	if(DocumentState.PPT_CONVERTABLE_STATE_PASSWORD_PROTECTED.equals(docType)){
//	      /*ERRORLOGGER.error("|#"+this.getClass().getName()+".convertToSlides|#convert PPT to slides failure|#message|#"+
//	    		  "Can not open the document specified ["+pptPath+"]. Given file is password protected.");*/
//		ComThread.Release();
//		throw new Exception(DocumentState.PPT_CONVERTABLE_STATE_PASSWORD_PROTECTED);
//		/*throw new PasswordProtectedPPTException("Can not open the document specified ["+pptPath+"]. Given file is password protected.");*/
//	}else if(DocumentState.PPT_CONVERTABLE_STATE_READ_ONLY.equals(docType)){
//	      /*ERRORLOGGER.error("|#"+this.getClass().getName()+".convertToSlides|#convert PPT to slides failure|#message|#"+
//	    		  "Can not open the document specified ["+pptPath+"]. Given file is read only.");*/
//	      ComThread.Release();
//	      throw new Exception(DocumentState.PPT_CONVERTABLE_STATE_READ_ONLY);
//	      /*throw new PasswordProtectedPPTException("Can not open the document specified ["+pptPath+"]. Given file is read only.");*/
//	}else if(DocumentState.PPT_CONVERTABLE_STATE_INVALID.equals(docType)){
////	      ERRORLOGGER.error("|#"+this.getClass().getName()+".convertToSlides|#convert PPT to slides failure|#message|#"+
////	    		  "Can not open the document specified ["+pptPath+"]. Given file is invalid.");
//		ComThread.Release();
//		throw new Exception(DocumentState.PPT_CONVERTABLE_STATE_INVALID);
////		throw new Exception("Can not open the document specified ["+pptPath+"]. Given file is invalid.");
//	}
//
//    ActiveXComponent ppt = null;
// /*   try {*/
//			LOGGER.debug("start to convert new PPT : input path: [" + pptPath + "], output path:[" + outPath + "]");
//			ppt = new ActiveXComponent("PowerPoint.Application");
//			final ActiveXComponent presentations = ppt
//					.getPropertyAsComponent("Presentations");
//
//			final ActiveXComponent presentation = presentations
//					.invokeGetComponent("Open", new Variant(pptPath),
//							new Variant(true), new Variant(false), new Variant(
//									false));
//
////			final String savePath = FilePathUtils.convertPath(outPath
////					+ FilePathUtils.getVirtualPath(FileUtils.getPath(pptPath,
////							true)));
//
//			fu.createDir(outPath);
//
//			Dispatch.invoke(presentation, "SaveAs", Dispatch.Method,
//					new Object[] { outPath, new Variant(17) }, new int[1]);
//			final File[] fileArray = fu.getSubFiles(outPath);
//			
//			File every = null;
//			for(int i=0;i<fileArray.length;i++) {
//				every = fileArray[i];
//				if(every.getName().substring(every.getName().length()-4).toLowerCase().equals(BusinessConstants.IMAGE_SUFFIX)) {
//					every.renameTo(new File(outPath+File.separator+pptPath.substring(pptPath.lastIndexOf(File.separator)+1, pptPath.lastIndexOf("."))+"-"+every.getName().substring(3, every.getName().lastIndexOf(BusinessConstants.IMAGE_SUFFIX.toUpperCase()))+BusinessConstants.IMAGE_SUFFIX));
//					CompressPicHelper.compressPic(outPath+File.separator,outPath+File.separator, pptPath.substring(pptPath.lastIndexOf(File.separator)+1, pptPath.lastIndexOf("."))+"-"+every.getName().substring(3, every.getName().lastIndexOf(BusinessConstants.IMAGE_SUFFIX.toUpperCase()))+BusinessConstants.IMAGE_SUFFIX, pptPath.substring(pptPath.lastIndexOf(File.separator)+1, pptPath.lastIndexOf("."))+"-"+every.getName().substring(3, every.getName().lastIndexOf(BusinessConstants.IMAGE_SUFFIX.toUpperCase()))+"_t"+BusinessConstants.IMAGE_SUFFIX, 120, 120, true);
//				}
//			}
//			
////			Collections.sort(list, new SlideComparator());
//
//		/*} catch (ComFailException comFailException) {
////		      ERRORLOGGER.error("|#"+this.getClass().getName()+".convertToSlides|#convert PPT to slides failure|#message|#",comFailException);
////		      throw new PasswordProtectedPPTException("Can not read the document specified ["+pptPath+"]. Given file is password protected.");
//		} catch (IllegalStateException illegalStateException) {
////		      ERRORLOGGER.error("|#"+this.getClass().getName()+".convertToSlides|#convert PPT to slides failure|#message|#",illegalStateException);
//			//return this.retryToConvertPPT(pptPath, outPath, retryCount + 1,illegalStateException);
//		} catch (final Exception e) {
////		      ERRORLOGGER.error("|#"+this.getClass().getName()+".convertToSlides|#convert PPT to slides failure|#message|#",e);
////		      throw new PasswordProtectedPPTException("Can not read the document specified ["+pptPath+"]. Given file is password protected.");
//		} catch (Throwable e) {
////		      ERRORLOGGER.error("|#"+this.getClass().getName()+".convertToSlides|#convert PPT to slides failure|#message|#",e);
////		      throw new PasswordProtectedPPTException("Can not read the document specified ["+pptPath+"]. Given file is password protected.");
//		}*/
//		/*finally {*/
//		if (ppt != null) {
//			/*try {*/
//				ppt.invoke("Quit");
//			/*} catch (Exception e) {
//				e.printStackTrace();
//		    }*/
//		}
//	/*	try{*/
//			// release thread
//			ComThread.Release();
//		/*}catch(Throwable e){
//			e.printStackTrace();
//		}*/
//  /*  }*/
//  }
//
//  private static String getPPTDocumentType(String fileLocation) {
//		String ext = FileUtils.getExt(fileLocation);
//		String docState = DocumentState.PPT_CONVERTABLE_STATE_OK;
//		if (EXTENSION_PPT.equalsIgnoreCase(ext)) {
//			try {
//				new HSLFSlideShow(fileLocation);
//			} catch (Exception e) {
//				docState = DocumentState.PPT_CONVERTABLE_STATE_PASSWORD_PROTECTED;
//				LOGGER.warn(e.getMessage());
//			}
//			return docState;
//		} else if (EXTENSION_PPTX.equalsIgnoreCase(ext)) {
//			try {
//				XSLFSlideShow ss = new XSLFSlideShow(fileLocation);
//				if(ss.getPresentation().isSetModifyVerifier()){
//					docState = DocumentState.PPT_CONVERTABLE_STATE_READ_ONLY;
//				}
//			} catch (Exception e) {
//				docState = DocumentState.PPT_CONVERTABLE_STATE_PASSWORD_PROTECTED;
//				LOGGER.warn(e.getMessage());
//			}
//			return docState;
//		} else {
//			return DocumentState.PPT_CONVERTABLE_STATE_INVALID;
//		}
//	}
//
//  /**
//   * backward compatible
//   * @param pptPath
//   * @param outPath
//   * @return
// * @throws Exception
//   */
///*  public static void convertToSlides(final String pptPath, final String outPath) throws Exception{
//	  convertToSlides(pptPath, outPath, 0);
//  }*/
//  /*private static class SlideComparator implements Comparator<String> {
//
//    @Override
//    public int compare(final String o1, final String o2) {
//
//      final String fileName1 = StringUtils.substringBetween(StringUtils.substringAfterLast(o1,
//          File.separator), "Slide", ".");
//      final String fileName2 = StringUtils.substringBetween(StringUtils.substringAfterLast(o2,
//          File.separator), "Slide", ".");
//
//      final Integer i1 = NumberUtils.toInt(fileName1);
//
//      final Integer i2 = NumberUtils.toInt(fileName2);
//
//      return i1.compareTo(i2);
//    }
//  }*/
//  	/**
//	 * Author: Vito.Zhao
//     * Create At: 2011-11-4
//     * Description: kill currently PPT convert process when the monitor thread wait timeout
//     * @return void
//     */
//  	public static void killPPTProcess(){
//  		Runtime run = Runtime.getRuntime();
//		try {
//			Process p = run.exec("tasklist /fi \"imagename eq powerpnt.exe\"");
//			BufferedReader br=new BufferedReader(new InputStreamReader(p.getInputStream()));  
//		    StringBuffer sb=new StringBuffer();  
//		    String inline;  
//		    while(null!=(inline=br.readLine())){  
//		    	sb.append(inline).append("\n");  
//		    }
//		    String listStr = sb.toString();
//		    if(listStr.toUpperCase().lastIndexOf("POWERPNT.EXE")>0){
//		    	run.exec("taskkill /f /im powerpnt.exe");
////		    	ERRORLOGGER.error("PPT convert process was killed, the process info:"+listStr);
//		    }
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//  	}
//  	
//  	public static void main(String[] args) throws Exception {
//  		String filePath="f:/haha.pptx";  
//  		/*PPTUtils p = new PPTUtils();*/
//  		PPTUtils.convertToSlides(filePath, "f:/20134");
//  		killPPTProcess();
//	}
  	
}