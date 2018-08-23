package me.zbl.fullstack.utils;

import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

/**
 * 时间工具类
 * 
 * @author anl001
 *
 */
public final class DateTimeHelper
{

	/**
	 * string时间转Timestamp，默认yyyy-MM-dd HH:mm:ss
	 * 
	 * @param timeStr
	 * @return
	 * @throws ParseException
	 */
	public static Timestamp stringToTimestamp(String timeStr) throws ParseException
	{
		return stringToTimestamp(timeStr, null);
	}

	/**
	 * string时间转Timestamp，默认yyyy-MM-dd HH:mm:ss
	 * 
	 * @param timeStr
	 *            时间
	 * @param pattern
	 *            格式
	 * 
	 * @return
	 * @throws ParseException
	 */
	public static Timestamp stringToTimestamp(String timeStr, String pattern) throws ParseException
	{
		if (ValidateHelper.isEmptyString(timeStr))
		{
			return null;
		}
		
		SimpleDateFormat sdf;

		if (ValidateHelper.isEmptyString(pattern))
		{
			sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		} else
		{
			sdf = new SimpleDateFormat(pattern);
		}

		return new Timestamp(sdf.parse(timeStr).getTime());
	}

	/**
	 * timestamp转string
	 * 
	 * @param time
	 *            时间
	 * @param pattern
	 *            格式
	 * @return timeString
	 */
	public static String timestampToString(Timestamp time, String pattern)
	{
		SimpleDateFormat sdf = new SimpleDateFormat(pattern);

		return sdf.format(time);
	}

	/**
	 * 获取当天的开始时间，00:00:00.001
	 * 
	 * @return 时间戳
	 */
	public static Timestamp getCurrentDayStartTime()
	{
		Calendar calendar = Calendar.getInstance();
		calendar.set(Calendar.HOUR_OF_DAY, 0);
		calendar.set(Calendar.MINUTE, 0);
		calendar.set(Calendar.SECOND, 0);
		calendar.set(Calendar.MILLISECOND, 001);
		
		return new Timestamp(calendar.getTimeInMillis());
	}
	
	/**
     * 获取当天的结束时间，23:59:59.999
     * 
     * @return 时间戳
     */
    public static Timestamp getCurrentDayEndTime()
    {
        Calendar calendar = Calendar.getInstance();
        calendar.set(Calendar.HOUR_OF_DAY, 23);
        calendar.set(Calendar.MINUTE, 59);
        calendar.set(Calendar.SECOND, 59);
        calendar.set(Calendar.MILLISECOND, 999);

        return new Timestamp(calendar.getTimeInMillis());
    }

    /**
     * 获取指定日期的开始时间，00:00:00.0
     *
     * @return 时间戳
     */
    public static Timestamp getDayStartTime(String dateStr)
    {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        Date date = null;
        try
        {
            date = sdf.parse(dateStr);
        } catch (ParseException e)
        {
            return null;
        }
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        calendar.set(Calendar.HOUR_OF_DAY, 0);
        calendar.set(Calendar.MINUTE, 0);
        calendar.set(Calendar.SECOND, 0);
        calendar.set(Calendar.MILLISECOND, 0);

        return new Timestamp(calendar.getTimeInMillis());
    }

    /**
     * 获取指定日期的结束时间，23:59:59.999
     *
     * @return 时间戳
     */
    public static Timestamp getDayEndTime(String dateStr)
    {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        Date date = null;
        try
        {
            date = sdf.parse(dateStr);
        } catch (ParseException e)
        {
            return null;
        }
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        calendar.set(Calendar.HOUR_OF_DAY, 23);
        calendar.set(Calendar.MINUTE, 59);
        calendar.set(Calendar.SECOND, 59);
        calendar.set(Calendar.MILLISECOND, 999);

        return new Timestamp(calendar.getTimeInMillis());
    }
	
	/**
	 * 获取系统当前时间
	 * 
	 * @return
	 */
	public static Timestamp getNowTime()
	{
		return new Timestamp(System.currentTimeMillis());
	}

    /**
     * 获取今天日期
     * 
     * @return
     * @throws ParseException
     */
    public static String getNowDateStr()
    {
        Date today = new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        return sdf.format(today);
    }

    /**
     * 获取今天日期
     * 
     * @return
     */
    public static String getTodayStr()
    {
        Date today = new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        return sdf.format(today);
    }

    /**
     * TimeStamp转String
     * 
     * @param timestamp
     * @param pattern
     * @return
     */
    public static String timeStamp2Str(Timestamp timestamp, String pattern)
    {
        Date date = new Date(timestamp.getTime());
        SimpleDateFormat sdf = new SimpleDateFormat(pattern);
        String dateStr = sdf.format(date);
        return dateStr;
    }
}
