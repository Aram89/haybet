package org.proffart.bet.utils;

import java.lang.reflect.Method;
import java.util.ArrayList;

public class ReflectUtils {
	
	/**
	 * Calls getter for field 
	 * @param fieldName
	 * @param obj
	 * @return
	 */
	public static Object callGetter(String fieldName, Object obj){
		try{
			Method method = obj.getClass().getMethod("get" + StringUtils.toUpperCase(fieldName));               
			return method.invoke(obj);
		}
		catch (Exception e){
			return new Object();
		}
	}
	
	/**
	 * 
	 * @param fieldName started with upper case
	 * @param obj
	 * @param param
	 */
	public static boolean callSetter(String fieldName, Object obj, Object param){
		try{
			Method method = obj.getClass().getMethod("set" + StringUtils.toUpperCase(fieldName), new Class[] { param.getClass() });               
			method.invoke(obj, param);
			return true;
		}
		catch (Exception e){
			return false;
		}		
	}
	
	/**
	 * 
	 * @param obj
	 * @param teamNumber
	 * @param score
	 * @param param
	 */
	public static void callSetters(Object obj, Integer teamNumber, int score, Object param){
		ArrayList<Integer> scores = new ArrayList<Integer>();
		ArrayList<String> fieldNames = new ArrayList<String>();
		for(int i = 0; i < 6; ++i){
			scores.add(i);
		}
		for (Integer s : scores){
			String fieldName = null;
			if (teamNumber == 0){
				if(s >= score){					
					fieldName = "T_m" + "_" + s.toString() +  "5";
					fieldNames.add(fieldName);
				}
				else{
					fieldName = "T_b" + "_" + s.toString() +  "5";
					fieldNames.add(fieldName);
				}
			}
			else{
				if (s >= score){
					fieldName = "T_m" + teamNumber.toString() + "_" + s.toString() + "5";
					fieldNames.add(fieldName);
				}
				else{
					fieldName = "T_b" + teamNumber.toString() + "_" + s.toString() + "5";
					fieldNames.add(fieldName);
				}				
			}
		}
			for(String field : fieldNames){
				try{
					System.out.println(field);
					callSetter(field, obj, param);
				}
				catch(Exception e){
					e.printStackTrace();
				}					
		}		
	}
}
