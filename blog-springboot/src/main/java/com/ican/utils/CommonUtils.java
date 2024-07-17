package com.ican.utils;

import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * 公共工具类
 *
 * @author gj
 */
public class CommonUtils {

    /**
     * 检测手机是否合法
     *
     * @param username 用户名
     * @return 合法状态
     */
    public static boolean checkPhone(String username) {
        String rules = "^((\\+86)|(86))?1[3-9]\\d{9}$";
        if (username.length() != 11) {
            return false;
        } else {
            Pattern p = Pattern.compile(rules);
            Matcher m = p.matcher(username);
            return m.matches();
        }
    }

    /**
     * 获取括号内容
     *
     * @param str str
     * @return {@link String} 括号内容
     */
    public static String getBracketsContent(String str) {
        return str.substring(str.indexOf("(") + 1, str.indexOf(")"));
    }

    /**
     * 转换List
     *
     * @param obj   obj
     * @param clazz clazz
     * @return {@link List<T>}
     */
    public static <T> List<T> castList(Object obj, Class<T> clazz) {
        List<T> result = new ArrayList<T>();
        if (obj instanceof List<?>) {
            for (Object o : (List<?>) obj) {
                result.add(clazz.cast(o));
            }
            return result;
        }
        return result;
    }

}
