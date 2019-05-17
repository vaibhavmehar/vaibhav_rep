package com.resto;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class modify
 */
@WebServlet("/modify")
public class modify extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public modify() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	String str1 = (String)request.getParameter("tbno");
	HttpSession session = request.getSession();
	String username = (String)session.getAttribute("username");
	request.setAttribute("tbno1", str1);
	String sql = "SELECT ORDER_NO FROM RESTO_ORDER_TEMP WHERE TABLE_NO = '" + str1 +"' UNION SELECT 0 FROM DUAL  ORDER BY ORDER_NO DESC ";
	System.out.println(sql);
	List<String> l = DAO.Resto_getData(sql, 1);
	String s = l.get(0);
	request.setAttribute("orderno1", s);
  // HttpSession session = request.getSession();
	//response.sendRedirect("Waiter2.jsp?tbno=" + request.getParameter("tbno")).forward(request, response);
	request.getRequestDispatcher("Waiter2.jsp?tbno=" + request.getParameter("tbno")+"&username="+username+"&orderno="+s).forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
