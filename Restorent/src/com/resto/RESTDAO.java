package com.resto;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.LinkedList;
import java.util.List;

public class RESTDAO {
	
	private static Connection con = null;
	private static Statement stmt = null;
	private static String uname = "system";
	private static String pwd = "vaibhav";
	
	public static int Resto_insert(String sql)
	{
		int n=0;
		try 
		{
			Class.forName("oracle.jdbc.driver.OracleDriver");  
			con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE",uname,pwd);
			stmt = con.createStatement();
			n = stmt.executeUpdate(sql);
			stmt.close();
			con.close();
			return n;			
		}
		catch(Exception e) 
		{
		
			System.out.println(e.toString());		
		}
		return n;
	}
	
	
	public static List<String> Resto_getData(String sql,int col_index)
	{
		List<String> l = new LinkedList<String>();
		
		try
		{
			String str = null;
			Class.forName("oracle.jdbc.driver.OracleDriver");  
			con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE",uname,pwd);
			stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while(rs.next())
			{
				for(int i=1;i<=col_index;i++)
				{
					if(i==1)
					{
						str = rs.getString(i);
					}
					else
					{
						str = str + "@||@"+ rs.getString(i);
					}
				}
				
				l.add(str);
				str=null;
				
			}
			rs.close();
			stmt.close();
			con.close();
			
		}
		catch(Exception e)
		{
			System.out.println(e.toString());		
		}
		
		return l;
	}
	
	
	public static String[] splitData(String s)
	{
		String[] str1 = s.split("@\\|\\|@");
		return str1;
	}
	
	
}
