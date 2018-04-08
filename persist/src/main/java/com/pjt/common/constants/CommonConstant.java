package com.pjt.common.constants;

import com.pjt.common.utils.PropertiesHelper;

public class CommonConstant {
	public static final String FTP_UPLOAD_TOOL="";
	public static final int BUY_IN_ORDER_CODE = 3;
	public static final String BUY_IN_ORDER_CODE_PRI = "R";
	public static final int SALE_OUT_ORDER_CODE = 4;
	public static final String SALE_OUT_ORDER_CODE_RPI = "T";
	public static final String FILE_HTTP_URL = PropertiesHelper.getProperty("FILE_HTTP_URL");
   //当日允许注册人数
	public static final String REG_LIMIT = "reg_limit";

	//订单自动匹配开关
	public static final String ORDER_AUTO_MATCH_YN = "order_auto_match_yn";
	
	public static final int ORDER_STATUS_ZERO = 0;
	
	public static final String BANK_TYPE_DEFAULT = "default";
	
	public static int ORDER_RELEASE_DAYS_14 = 14;
	public static int ORDER_COMPRE_DAYS_2 = 2;
	
	public static int ORDER_COMPRE_DAYS_3 = 3;
	
	public static final String DATE_FROMAT_MINUTE = "MM/dd/yyyy HH:mm";
	//0-未生效
	public static int MAFURO_STATUS_NON_ACTIVE = 0;
	//1-生效
	public static int MAFURO_STATUS_ACTIVE = 1;
	//2-取消
	public static int MAFURO_STATUS_CANCEL = 2;
	//未证实
	public static int MAFURO_TYPE_NO_CONFIRM = 0;
	//已确认
	public static int MAFURO_TYPE_CONFIRM = 1;
	//冻结
	public static int MAFURO_TYPE_FREEZED = 2;
	//已解冻
	public static int MAFURO_TYPE_UNFREEZED = 3;
	//直推奖
	public static String MAFURO_BONUS_LB = "LB";
	//管理奖
	public static String MAFURO_BONUS_MB = "MB";
	//预计领导人奖
	public static String MAFURO_BONUS_PLB = "PLB";
	
	public static double MAFURO_BONUS_LEVLE1 = 0.1;
	public static double MAFURO_BONUS_LEVLE2 = 0.05;
	public static double MAFURO_BONUS_LEVLE3 = 0.03;
	public static double MAFURO_BONUS_LEVLE4 = 0.01;
	public static double MAFURO_BONUS_LEVLE5 = 0.0025;
	//15天收益
	public static double MAFURO_BONUS_LEVLE0 = 0.15;
	//18天收益
	public static double MAFURO_BONUS_LEVLE18 = 0.18;
	
	public static int OPERATE_WAIT_HOURS = 24;
	public static int OPERATE_WAIT_HOURS_48 = 48;
	public static int OPERATE_WAIT_HOURS_36 = 36;
	
	public static int ORDER_TYPE_IN = 1;
	
	public static int ORDER_TYPE_OUT = 2;
	
	public static int ORDER_STATUS_DEL_7 = 7;
	
	public static int USER_STATUS_0 = 0;
	
	public static int USER_STATUS_1 = 1;
	
	public static int NOTE_STATUS_1 = 1;
	//已确认付款，等待确认收款
	public static int NOTE_STATUS_3 = 3;
	//付款超时
	public static int NOTE_STATUS_8 = 8;
	//收款超时
	public static int NOTE_STATUS_9 = 9;
	
	/** 文件服务器目录路径分隔符 */
	public static final String FILE_SEPARATOR = "/";
}
