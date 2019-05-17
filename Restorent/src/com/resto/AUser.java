package com.resto;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AUser
 */
@WebServlet("/AUser")
public class AUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AUser() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int n=0;
		if(request.getParameter("MenuOrder").equals("1"))
		{
			
			if((request.getParameter("Uname").length()!=0))
			{
			
			
			String sql = "insert into RESTO_LOGIN select NVL(max(RL_LOGIN_ID),0)+1,'" + request.getParameter("Uname") + "',";
			sql = sql + "'" + request.getParameter("UId") + "','" + request.getParameter("pwd") + "','','" + request.getParameter("ltype") +"' FROM RESTO_LOGIN ";
			n=DAO.Resto_insert(sql);
	
			}
			String confirm="";
			if(n==0)
			{
				confirm="UserId already exist, Please try some other user Id";
			}
			else
			{
				confirm="Records inserted successfully";
			}
			response.sendRedirect("ManageUser.jsp?confirm="+ confirm);
		}
		else if(request.getParameter("MenuOrder").equals("2"))
		{
			String sql = "select RL_Name,RL_Login_Type from RESTO_LOGIN where RL_UNAME = '" + request.getParameter("UId")+"'";
			System.out.println(sql);
			List<String> l = DAO.Resto_getData(sql, 2);
			String s = l.get(0);
			//request.getRequestDispatcher("UpdateUser.jsp?LoginType="+DAO.splitData(s)[1]+"&Uname="+DAO.splitData(s)[0]).forward(request, response);
			response.sendRedirect("UpdateUser.jsp?LoginType="+DAO.splitData(s)[1]+"&Uname="+DAO.splitData(s)[0]+"&UId="+request.getParameter("UId"));
		}
		else if(request.getParameter("MenuOrder").equals("3"))
		{
			
			
		String sql = "DELETE FROM RESTO_LOGIN where RL_UNAME = '" + request.getParameter("UId")+"'";
		System.out.println(sql);
		n=DAO.Resto_insert(sql);
		String confirm="";
		if(n==0)
		{
			confirm="Unable to remove the selected User";
		}
		else
		{
			confirm="Records removed successfully";
		}
		response.sendRedirect("UpdateUser.jsp?confirm="+ confirm);
	    }
		else if(request.getParameter("MenuOrder").equals("4"))
		{
			
			if((request.getParameter("ItemType").length()!=0))
			{
			
			
			String sql = "insert into RESTO_ITEM_TYPE select NVL(max(ITEM_TYPE_ID),0)+1,'" + request.getParameter("ItemType") + "' FROM RESTO_ITEM_TYPE";
			n=DAO.Resto_insert(sql);
	
			}
			String confirm="";
			if(n==0)
			{
				confirm="UserId already exist, Please try some other user Id";
			}
			else
			{
				confirm="Records inserted successfully";
			}
			response.sendRedirect("Item_Type.jsp?confirm="+ confirm);
		}
		else if(request.getParameter("MenuOrder").equals("5"))
		{
			String sql = "select ITEM_TYPE,ITEM_PRICE,DESCRIPTION from RESTO_MENU where ITEM_NAME = '" + context.decodeValue(request.getParameter("Itemname"))+"'";
			System.out.println(sql);
			List<String> l = DAO.Resto_getData(sql, 3);
			String s = l.get(0);
			//request.getRequestDispatcher("UpdateUser.jsp?LoginType="+DAO.splitData(s)[1]+"&Uname="+DAO.splitData(s)[0]).forward(request, response);
			response.sendRedirect("UpdateMenu.jsp?Item_type="+context.encodeValue(DAO.splitData(s)[0])+"&Item_price="+DAO.splitData(s)[1]+"&Desc="+context.encodeValue(DAO.splitData(s)[2]) +"&Itemname="+request.getParameter("Itemname"));
		}
		else if(request.getParameter("MenuOrder").equals("6"))
		{
			
			
		String sql = "DELETE FROM RESTO_MENU where ITEM_NAME = '" + context.decodeValue(request.getParameter("Itemname"))+"'";
		System.out.println(sql);
		n=DAO.Resto_insert(sql);
		String confirm="";
		if(n==0)
		{
			confirm="Unable to remove the selected Menu";
		}
		else
		{
			confirm="Records removed successfully";
		}
		response.sendRedirect("UpdateMenu.jsp?confirm="+ confirm);
	    }
		else if(request.getParameter("MenuOrder").equals("7"))
		{
			
			
		String sql = "UPDATE RESTO_MENU SET ITEM_TYPE = '" +context.decodeValue(request.getParameter("ItemType"))+"',ITEM_PRICE='"+request.getParameter("Price")+"',DESCRIPTION='"+context.decodeValue(request.getParameter("Desc"))+"' where ITEM_NAME = '" + context.decodeValue(request.getParameter("Itemname"))+"'";
		System.out.println(sql);
		n=DAO.Resto_insert(sql);
		String confirm="";
		if(n==0)
		{
			confirm="Unable to Update the selected Record";
		}
		else
		{
			confirm="Records Updated successfully";
		}
		response.sendRedirect("UpdateMenu.jsp?confirm="+ confirm);
	    }
		else if(request.getParameter("MenuOrder").equals("8"))
		{
			
			
		String sql = "INSERT INTO RESTO_MENU SELECT NVL(MAX(ITEM_NO),0)+1,'"+context.decodeValue(request.getParameter("Itemname"))+"','" +context.decodeValue(request.getParameter("ItemType"))+"','"+request.getParameter("Price")+"','"+context.decodeValue(request.getParameter("Desc"))+"' FROM RESTO_MENU";
		System.out.println(sql);
		n=DAO.Resto_insert(sql);
		String confirm="";
		if(n==0)
		{
			confirm="Unable to Update the selected Record";
		}
		else
		{
			confirm="Records Updated successfully";
		}
		response.sendRedirect("AddMenu.jsp?confirm="+ confirm);
	    }
		else if(request.getParameter("MenuOrder").equals("9"))
		{
			String sql11 = "DELETE FROM RESTO_TABLE";
			DAO.Resto_insert(sql11);
			if(request.getParameterValues("sql")!=null)
			{
				String[] sql = request.getParameterValues("sql");
				for(String str1:sql)
				{
					DAO.Resto_insert("INSERT INTO RESTO_TABLE VALUES"+ str1.replaceAll("amp;", ""));
				}
			}
				response.sendRedirect("AddTables.jsp");

			}
		else if(request.getParameter("MenuOrder").equals("10"))
		{			System.out.println("Update table" + request.getParameter("sno"));
			
			String sql = "UPDATE RESTO_ORDER_TEMP SET ORDER_STATUS = 'In Progress' where sno=" + request.getParameter("sno");
			System.out.println(sql);
			n=DAO.Resto_insert(sql);
			response.sendRedirect("Chef.jsp");

		}
		else if(request.getParameter("MenuOrder").equals("11"))
		{			System.out.println("Update table" + request.getParameter("sno"));
			
			String sql = "UPDATE RESTO_ORDER_TEMP SET ORDER_STATUS = 'Declined'  where sno=" + request.getParameter("sno");
			System.out.println(sql);
			n=DAO.Resto_insert(sql);
			response.sendRedirect("Chef.jsp");

		}
		else if(request.getParameter("MenuOrder").equals("12"))
		{			System.out.println("Update table" + request.getParameter("sno"));
			
			String sql = "UPDATE RESTO_ORDER_TEMP SET ORDER_STATUS = 'Ready to Serve' where sno=" + request.getParameter("sno");
			System.out.println(sql);
			n=DAO.Resto_insert(sql);
			response.sendRedirect("Chef.jsp");

		}
		else if(request.getParameter("MenuOrder").equals("13"))
		{			System.out.println("Update table" + request.getParameter("sno"));
			
			String sql = "UPDATE RESTO_ORDER_TEMP SET ORDER_STATUS = 'Served' where sno=" + request.getParameter("sno");
			System.out.println(sql);
			n=DAO.Resto_insert(sql);
			response.sendRedirect("Order_Captain.jsp?sno="+request.getParameter("sno")+"&tbno="+request.getParameter("tbno"));

		}
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
