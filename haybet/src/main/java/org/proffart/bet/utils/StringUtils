package org.proffart.bet.utils;

public class StringUtils {

	/**
	 * 
	 * @param str
	 * @return
	 */
	public static boolean isEmpty (String str){
		return str == null || str.isEmpty();
	}
	
	/**
	 * Changes first letter in field to upper case
	 * used for invoking getters and setters with field
	 * @param field
	 * @return
	 */
	public static String toUpperCase (String field){
		if (isEmpty(field)){
			return field;
		}
		String first = field.substring(0,1);
		String tmp = field.replaceFirst(first,first.toUpperCase());
		return tmp;		
	}
}

