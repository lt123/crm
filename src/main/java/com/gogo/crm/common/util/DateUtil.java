package com.gogo.crm.common.util;

import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;

import javax.xml.datatype.DatatypeConfigurationException;
import javax.xml.datatype.DatatypeFactory;
import javax.xml.datatype.XMLGregorianCalendar;


public class DateUtil {
	
	private final static SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	private final static SimpleDateFormat ymdsf = new SimpleDateFormat("yyyy-MM-dd");
	private final static SimpleDateFormat ymdsfs = new SimpleDateFormat("yyMMdd");
	private final static SimpleDateFormat yyyymmdd = new SimpleDateFormat("yyyyMMdd");
	public static final String PATTERN_STANDARD = "yyyy-MM-dd HH:mm:ss";

	public static final String PATTERN_DATE = "yyyy-MM-dd";

	public static String timestamp2String(Timestamp timestamp, String pattern) {
		if (timestamp == null) {
			throw new IllegalArgumentException("timestamp null illegal");
		}
		if (pattern == null || pattern.equals("")) {
			pattern = PATTERN_STANDARD;
		}
		SimpleDateFormat sdf = new SimpleDateFormat(pattern);
		return sdf.format(new Date(timestamp.getTime()));
	}

	public static String date2String(Date date, String pattern) {
		if (date == null) {
			throw new IllegalArgumentException("timestamp null illegal");
		}
		if (pattern == null || pattern.equals("")) {
			pattern = PATTERN_STANDARD;
			;
		}
		SimpleDateFormat sdf = new SimpleDateFormat(pattern);
		return sdf.format(date);
	}

	public static Timestamp currentTimestamp() {
		return new Timestamp(new Date().getTime());
	}

	public static String currentTimestamp2String(String pattern) {
		return timestamp2String(currentTimestamp(), pattern);
	}

	public static Timestamp string2Timestamp(String strDateTime, String pattern) {
		if (strDateTime == null || strDateTime.equals("")) {
			throw new IllegalArgumentException("Date Time Null Illegal");
		}
		if (pattern == null || pattern.equals("")) {
			pattern = PATTERN_STANDARD;
		}

		SimpleDateFormat sdf = new SimpleDateFormat(pattern);
		Date date = null;
		try {
			date = sdf.parse(strDateTime);
		} catch (ParseException e) {
			throw new RuntimeException(e);
		}
		return new Timestamp(date.getTime());
	}

	public static Date string2Date(String strDate, String pattern) {
		if (strDate == null || strDate.equals("")) {
			throw new RuntimeException("str date null");
		}
		if (pattern == null || pattern.equals("")) {
			pattern = DateUtil.PATTERN_DATE;
		}
		SimpleDateFormat sdf = new SimpleDateFormat(pattern);
		Date date = null;

		try {
			date = sdf.parse(strDate);
		} catch (ParseException e) {
			throw new RuntimeException(e);
		}
		return date;
	}

	public static String stringToYear(String strDest) {
		if (strDest == null || strDest.equals("")) {
			throw new IllegalArgumentException("str dest null");
		}

		Date date = string2Date(strDest, DateUtil.PATTERN_DATE);
		Calendar c = Calendar.getInstance();
		c.setTime(date);
		return String.valueOf(c.get(Calendar.YEAR));
	}

	public static String stringToMonth(String strDest) {
		if (strDest == null || strDest.equals("")) {
			throw new IllegalArgumentException("str dest null");
		}

		Date date = string2Date(strDest, DateUtil.PATTERN_DATE);
		Calendar c = Calendar.getInstance();
		c.setTime(date);
		// return String.valueOf(c.get(Calendar.MONTH));
		int month = c.get(Calendar.MONTH);
		month = month + 1;
		if (month < 10) {
			return "0" + month;
		}
		return String.valueOf(month);
	}

	public static String stringToDay(String strDest) {
		if (strDest == null || strDest.equals("")) {
			throw new IllegalArgumentException("str dest null");
		}

		Date date = string2Date(strDest, DateUtil.PATTERN_DATE);
		Calendar c = Calendar.getInstance();
		c.setTime(date);
		// return String.valueOf(c.get(Calendar.DAY_OF_MONTH));
		int day = c.get(Calendar.DAY_OF_MONTH);
		if (day < 10) {
			return "0" + day;
		}
		return "" + day;
	}

	public static Date getFirstDayOfMonth(Calendar c) {
		int year = c.get(Calendar.YEAR);
		int month = c.get(Calendar.MONTH);
		int day = 1;
		c.set(year, month, day, 0, 0, 0);
		return c.getTime();
	}

	public static Date getLastDayOfMonth(Calendar c) {
		int year = c.get(Calendar.YEAR);
		int month = c.get(Calendar.MONTH) + 1;
		int day = 1;
		if (month > 11) {
			month = 0;
			year = year + 1;
		}
		c.set(year, month, day - 1, 0, 0, 0);
		return c.getTime();
	}

	public static String date2GregorianCalendarString(Date date) {
		if (date == null) {
			throw new IllegalArgumentException("Date is null");
		}
		long tmp = date.getTime();
		GregorianCalendar ca = new GregorianCalendar();
		ca.setTimeInMillis(tmp);
		try {
			XMLGregorianCalendar t_XMLGregorianCalendar = DatatypeFactory.newInstance().newXMLGregorianCalendar(ca);
			return t_XMLGregorianCalendar.normalize().toString();
		} catch (DatatypeConfigurationException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			throw new IllegalArgumentException("Date is null");
		}

	}

	public static boolean compareDate(Date firstDate, Date secondDate) {
		if (firstDate == null || secondDate == null) {
			throw new RuntimeException();
		}

		String strFirstDate = date2String(firstDate, "yyyy-MM-dd");
		String strSecondDate = date2String(secondDate, "yyyy-MM-dd");
		if (strFirstDate.equals(strSecondDate)) {
			return true;
		}
		return false;
	}
	
	public static Date getStartTimeOfDate(Date currentDate) {
		String strDateTime = date2String(currentDate,"yyyy-MM-dd") + " 00:00:00";
		return string2Date(strDateTime,"yyyy-MM-dd hh:mm:ss");
	}
	
	public static Date getEndTimeOfDate(Date currentDate) {
		String strDateTime = date2String(currentDate,"yyyy-MM-dd") + " 23:59:59";
		return string2Date(strDateTime,"yyyy-MM-dd hh:mm:ss");
	}
	
	/**
	 * @author zhang kui   
	 * @Title: addDate 
	 * @Description: TODO 传入添加的天数，减少天数，传入负数
	 * @param @param day
	 * @param @return    设定文件 
	 * @return Date    返回类型
	 */
	public static Date addDate(int day){
		Calendar calendar = Calendar.getInstance();
		calendar.add(Calendar.DATE, day);
		return calendar.getTime();
	}
	
	/**
	 * 为指定日期加天数
	 * @param date
	 * @param day
	 * @return
	 */
	public static Date addDate(Date date,int day){
		Calendar calendar = Calendar.getInstance();
		calendar.setTime(date);
		calendar.add(Calendar.DATE, day);
		return calendar.getTime();
	}
	/** 
	* @author hezhoujun
	* @Title: date2Long 
	* @Description: 将日期转化为long/1000
	* @param date
	* @return long
	*/
	public static long date2Long(Date date){
	    return  date.getTime()/1000;
	}
	/**
	 * 
	 * @author li chengbing   
	 * @Title: dateToInt 
	 * @Description: 10位时间戳 转换成时间
	 * @param int i
	 * @return String 
	 */
	public static String long2StringDate(long time){
		time = time * 1000;
		Date date = new Date(time);
		DateFormat d = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	     return d.format(date);
	       	
	}
	/** 
	* @author hezhoujun
	* @Title: long2Date 
	* @Description: 将long时间（10位-gettime/1000）戳转化为日期
	* @param time
	* @return Date
	*/
	public static Date long2Date(long time){
		time = time * 1000;
		Date date = new Date(time);
		return date;
	}
	/** 
	* @author hezhoujun
	* @Title: biglong2littlelong 
	* @Description: 将日期时间戳 / 1000
	* @param time
	* @return long
	*/
	public static long biglong2littlelong(long time){
		return time/1000;
	}
	

	/** 
	* @author li tao
	* @Title: getLastDate 
	* @Description: 将日期减一个月
	* @param time
	* @return long
	*/
	public static Date getLastDate(){
		Date date = new Date();//当前日期
		Calendar calendar = Calendar.getInstance();//日历对象
		calendar.setTime(date);//设置当前日期
		calendar.add(Calendar.MONTH, -1);//月份减一
		return calendar.getTime();
	}
	
	
	/**
	  * @author zhang kui   
	  * @Title: dateFormat 
	  * @Description: TODO 时间格式化字符串
	  * @param @param date
	  * @param @return    设定文件 
	  * @return String    返回类型
	 */
	public static String dateFormat(Date date){
		
		return sf.format(date);
	}
	
	/**
	  * @author zhang kui   
	  * @Title: dateFormat 
	  * @Description: TODO 字符串格式化日期
	  * @param @param strdate
	  * @param @return    设定文件 
	  * @return Date    返回类型
	 */
	public static Date strFormatDate(String strdate){
		try {
			return sf.parse(strdate);
		} catch (ParseException e) {
		}
		return null;
	}
	
	/**
	 * @author zhang kui   
	 * @Title: dateFormat 
	 * @Description: TODO 字符串格式化日期
	 * @param @param strdate
	 * @param @return    设定文件 
	 * @return Date    返回类型
	 */
	public static Date strYmdFormatDate(String strdate){
		try {
			return ymdsf.parse(strdate);
		} catch (Exception e) {
		}
		return null;
	}
	
	/**
	 * @author zhang kui   
	 * @Title: dateFormat 
	 * @Description: TODO 字符串格式化日期
	 * @param @param strdate
	 * @param @return    设定文件 
	 * @return Date    返回类型
	 */
	public static String strYmdFormatStr(Date date){
		try {
			return ymdsf.format(date);
		} catch (Exception e) {
		}
		return null;
	}
	
	/**
	  * @author zhang kui   
	  * @Title: newDateAdd30 
	  * @Description: TODO 添加30分钟以后的时间
	  * @param @return    设定文件 
	  * @return Date    返回类型
	  */
	public static Date newDateAdd30(){
		Calendar calendar =  Calendar.getInstance();
		calendar.add(Calendar.MINUTE, 30);
		return calendar.getTime();
	}
	
	
	/**
	  * @author zhang kui   
	  * @Title: newDateadd 
	  * @Description: TODO 添加分钟
	  * @param @param n
	  * @param @return    设定文件 
	  * @return Date    返回类型
	  */
	public static Date newDateadd(int n){
		Calendar calendar =  Calendar.getInstance();
		calendar.add(Calendar.MINUTE, n);
		return calendar.getTime();
	}
	
	public static Date newDateSub2(){
		Calendar calendar =  Calendar.getInstance();
		calendar.add(Calendar.SECOND, 3);
		return calendar.getTime();
	}
	
	/**
	 * @author zhang kui   
	 * @Title: newDateAdd30 
	 * @Description: TODO 一月
	 * @param @return    设定文件 
	 * @return Date    返回类型
	 */
	public static Date newDateAddMONTH(int n){
		Calendar calendar =  Calendar.getInstance();
		calendar.add(Calendar.MONTH, n);
		return calendar.getTime();
	}
	
	/** 
	* @author hezhoujun
	* @Title: dateAddWeek 
	* @Description: 推算周
	* @param n
	* @return Date
	*/
	public static Date dateAddWeek(int n){
		Calendar calendar =  Calendar.getInstance();
		calendar.add(Calendar.WEEK_OF_MONTH, n);
		calendar.add(Calendar.DATE, -1);
		return calendar.getTime();
	}
	
	
	/**
	  * @author zhang kui   
	  * @Title: dayForWeek 
	  * @Description: TODO 根据日期计算，周几
	  * @param @param day
	  * @param @return
	  * @param @throws Throwable    设定文件 
	  * @return int    返回类型
	 */
	private static String[] week = {"","星期天","星期一","星期二","星期三","星期四","星期五","星期六"}; 
	
	/**
	  * @author zhang kui   
	  * @Title: dayForWeek 
	  * @Description: TODO 查询星期中文
	  * @param @param day
	  * @param @return    设定文件 
	  * @return String    返回类型
	  */
	public static String dayForWeek(Date day) {  
	    Calendar cal = Calendar.getInstance();
	    cal.setTime(day);
	    int n = cal.get(Calendar.DAY_OF_WEEK);  
	    return week[n];
	}  
	
	/**
	  * 查询日期 
	  * @author zhang kui   
	  * @Title: yyMMdd 
	  * @Description: TODO(这里用一句话描述这个方法的作用) 
	  * @param @param date
	  * @param @return    设定文件 
	  * @return String    返回类型
	  */
	public static String yyMMdd(Date date){
		
		return ymdsfs.format(date);
	}
	public static boolean isBetweenTwoDate(Object d1, Object d2){
		Calendar calendar = Calendar.getInstance();
		calendar.setTime(new Date());
		if(calendar.after(d1) && calendar.before(d2)){
			return true;
		}
		return false;
	}
	//计算两个date相差多少天
	public static int daysCompare(Date d1, Date d2) {
       Calendar aCalendar = Calendar.getInstance();
       aCalendar.setTime(d1);
       int day1 = aCalendar.get(Calendar.DAY_OF_YEAR);
       aCalendar.setTime(d2);
       int day2 = aCalendar.get(Calendar.DAY_OF_YEAR);
       return day2 - day1;
    }
	
	/**
	 * 添加年
	 * @param n
	 * @return
	 */
	public static Date addyear(int n){
		Calendar calendar = Calendar.getInstance();
		calendar.add(Calendar.YEAR, n);
		return calendar.getTime();
	}
	
	public static String formatyyyymmdd(Date date){
			
			return  yyyymmdd.format(date);
	}
	
	public static void main(String[] args){
	}
	
	/**
	 * 计算周几
	 * @author zhang kui   
	 * @Title: getWeek 
	 * @Description: TODO 
	 * @param  date
	 * @return String    返回类型 
	 * @throws
	 */
	public static String getWeek(Date date){
		Calendar calendar = Calendar.getInstance();//获得一个日历
		calendar.setTime(date);//设置当前时间,月份是从0月开始计算
		int number = calendar.get(Calendar.DAY_OF_WEEK);//星期表示1-7，是从星期日开始，   
		String [] str = {"","星期日","星期一","星期二","星期三","星期四","星期五","星期六",};
		return str[number];
	}

	/**
	 * 计算传入的日期到现在的年份
	 *
	 * @param birthday
	 * @return
	 */
	public static Integer getYear(Date birthday) {
		Calendar cal = Calendar.getInstance();

		if (cal.before(birthday)) {
			throw new IllegalArgumentException(
					"The birthDay is before Now.It's unbelievable!");
		}

		int yearNow = cal.get(Calendar.YEAR);
		int monthNow = cal.get(Calendar.MONTH) + 1;
		int dayOfMonthNow = cal.get(Calendar.DAY_OF_MONTH);

		cal.setTime(birthday);
		int yearBirth = cal.get(Calendar.YEAR);
		int monthBirth = cal.get(Calendar.MONTH) + 1;
		int dayOfMonthBirth = cal.get(Calendar.DAY_OF_MONTH);

		int age = yearNow - yearBirth;

		if (monthNow <= monthBirth) {
			if (monthNow == monthBirth) {
				// monthNow==monthBirth
				if (dayOfMonthNow < dayOfMonthBirth) {
					age--;
				}
			} else {
				// monthNow>monthBirth
				age--;
			}
		}
		return age;
	}
	
}