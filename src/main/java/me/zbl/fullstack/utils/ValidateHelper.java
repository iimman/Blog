package me.zbl.fullstack.utils;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import tk.mybatis.mapper.util.StringUtil;

/**
 * 公共校验类
 * 
 * @author anl001
 *
 */
public class ValidateHelper
{
	/**
	 * 判断列表是否为空
	 * 
	 * @param list
	 * @return 结果
	 */
	public static <T> boolean isEmptyList(List<T> list)
	{
		if (null == list || list.isEmpty() || list.size() == 0)
		{
			return true;
		}

		return false;
	}

	/**
	 * 判断字符串是否为空
	 * 
	 * @param str
	 * @return 结果
	 */
	public static boolean isEmptyString(String str)
	{
		if (StringUtil.isEmpty(str))
		{
			return true;

		}

		return str.trim().length() == 0;
	}

	/**
	 * 固定号码，手机号码校验
	 * 
	 * @param contactType
	 *            电话类型
	 * @param contactNo
	 *            电话号码
	 * @return 结果
	 */
	public static boolean isPhoneNumber(int contactType, String contactNo)
	{

		// 固定号码
		if (contactType == 1 || contactType == 2 || contactType == 3)
		{
			String regularExpression = "^\\d{3,4}-\\d{7,8}$";
			return contactNo.matches(regularExpression);
		} else if (contactType == 4)
		{
			// 手机号码验证
			String regularExpression = "^[0-9]*$";
			return contactNo.matches(regularExpression);
		}
		return false;
	}

	/**
	 * 根据身份证号获取性别，生日
	 * 
	 * @param certNo
	 * 
	 * @return 返回的出生日期格式：1990-01-01 性别格式：F-女，M-男
	 */
	public static Map<String, String> getBirthDaySexFromCertNo(String certNo)
	{
		String birthday = "";
		String sexCode = "";

		char[] number = certNo.toCharArray();
		boolean flag = true;
		if (number.length == 15)
		{
			for (int x = 0; x < number.length; x++)
			{
				if (!flag)
					return new HashMap<String, String>();
				flag = Character.isDigit(number[x]);
			}
		} else if (number.length == 18)
		{
			for (int x = 0; x < number.length - 1; x++)
			{
				if (!flag)
					return new HashMap<String, String>();
				flag = Character.isDigit(number[x]);
			}
		}
		if (flag && certNo.length() == 15)
		{
			birthday = "19" + certNo.substring(6, 8) + "-" + certNo.substring(8, 10) + "-" + certNo.substring(10, 12);
			sexCode = Integer.parseInt(certNo.substring(certNo.length() - 3, certNo.length())) % 2 == 0 ? "F" : "M";
		} else if (flag && certNo.length() == 18)
		{
			birthday = certNo.substring(6, 10) + "-" + certNo.substring(10, 12) + "-" + certNo.substring(12, 14);
			sexCode = Integer.parseInt(certNo.substring(certNo.length() - 4, certNo.length() - 1)) % 2 == 0 ? "F" : "M";
		}
		Map<String, String> map = new HashMap<String, String>();
		map.put("birthday", birthday);
		map.put("sexCode", sexCode);
		return map;
	}
}
