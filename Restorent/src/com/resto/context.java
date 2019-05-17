package com.resto;

import java.io.BufferedReader;
import java.io.FileReader;

public class context {
	public static String getParameter(String para)
	{
		String result = "";
		String str = null;
		try {
			FileReader fr = new FileReader("C:\\Resto.parm");
			BufferedReader br = new BufferedReader(fr);
			while((str=br.readLine())!=null)
			{
				if((str.split("=")[0]).equals(para))
				{
					result=str.split("=")[1];
				}
			}
			br.close();
			fr.close();
			
		}
		catch(Exception e)
		{
			
			System.out.println(e);
		}
		
		return result;
	}
	
	public static String decodeValue(String val)
	{
		//return (val.replaceAll("%20"," ").replaceAll("%26","&").replaceAll("%2B","+").replaceAll("%25","%"));
		return (val.replaceAll("%26","&").replaceAll("%25","%"));
	}

	public static String encodeValue(String val)
	{
		//return val.replaceAll(" ","%20").replaceAll("&","%26").replaceAll("+","%2B").replaceAll("%","%25");
		return val.replaceAll("&","%26").replaceAll("%","%25");
	}
}



