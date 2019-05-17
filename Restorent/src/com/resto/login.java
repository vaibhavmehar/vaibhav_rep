package com.resto;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class login
 */
@WebServlet("/login")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		int cnt = 0;
		String user = null;
		String uname = request.getParameter("uname");
		String pwd = request.getParameter("pwd");
		String type = request.getParameter("type");
		String sql = "SELECT INITCAP(RL_NAME),COUNT(1) FROM RESTO_LOGIN WHERE RL_UNAME = '" + uname + "' AND RL_PASSWORD = '" + pwd + "' ";
		sql = sql + " AND UPPER(RL_LOGIN_TYPE) = UPPER('" + type + "') GROUP BY RL_NAME";
		System.out.println(sql);
		List<String> l = DAO.Resto_getData(sql, 2);
		for(String s:l)
		{
			user = DAO.splitData(s)[0];
			cnt = Integer.valueOf(DAO.splitData(s)[1]);
		}
		if(cnt != 0)
		{
			sql = "UPDATE RESTO_LOG SET L_LOGOUT_TIME = SYSDATE WHERE L_UNAME = '" + user + "' AND L_LOGIN_TYPE = '" + type + "'";
			System.out.println(sql);
			DAO.Resto_insert(sql);
			sql = "INSERT INTO RESTO_LOG ";
			sql = sql + "SELECT NVL(MAX(L_LOG_ID),0) + 1,'" + user + "',SYSDATE,NULL,'" + type +"' FROM RESTO_LOG";
			if(DAO.Resto_insert(sql)==1)
			{
			
				HttpSession session = request.getSession();
				session.setAttribute("username", user);
				session.setAttribute("type", type);
				if(type.equals("WAITER") || type.equals("Waiter"))
				{
					response.sendRedirect("Waiter.jsp");
				}
				else if(type.equals("Admin"))
				{
					response.sendRedirect("Admin.jsp");
				}
				else if(type.equals("Chef"))
				{
					response.sendRedirect("Chef.jsp");
				}
					
			}
		}
		else
		{
			out.println("Invalid Credentials");
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	}

}
