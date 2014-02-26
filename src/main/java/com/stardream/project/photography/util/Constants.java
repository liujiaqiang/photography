package com.stardream.project.photography.util;

public class Constants {
	public static final int NEWS_STATE=1;
	
	/*用户是否为管理员*/
	public static final int user_common = 0;   //普通会员
	public static final int user_forum_manager = 1;   //论坛管理员
	public static final int user_system_manager = 2;    //系统管理员
	
	/*锁定 */
	public static final int lock_no = 0; 
	public static final int lock_yes = 1; 
	
	/*帖子状态*/
	public static final int forum_status_save = 0;  //草稿
	
	public static final int forum_status_review = 1;   //审核

	public static final int forum_status_publish = 2;   //发布
	
	public static final int forum_status_no_review = 3;   //审核未通过

	

}
