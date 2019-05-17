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
 * Servlet implementation class Order
 */
@WebServlet("/Order")
public class Order extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Order() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
	String sql1 = "DELETE FROM RESTO_ORDER_TEMP WHERE TABLE_NO = " + request.getParameterValues("quantity")[0];
	
    DAO.Resto_insert(sql1);
	String[] sql = null;
	//System.out.println(sql[0]);
	int order_seq=0;
	if(request.getParameterValues("abc1")!=null)
	{
		
		if(Integer.valueOf(request.getParameterValues("quantity")[1])==0)
		{
			System.out.println(Integer.valueOf(request.getParameterValues("quantity")[1]));
			sql = request.getParameterValues("abc1");
			List<String> l = DAO.Resto_getData(" select order_seq.nextval from dual", 1);
			for(String s:l)
			{
				order_seq = Integer.valueOf(DAO.splitData(s)[0]);
			}
		}
		else
		{
			order_seq = Integer.parseInt(request.getParameterValues("quantity")[1]);
		}
		sql = request.getParameterValues("abc1");
		for(String str1:sql)
		{
			
			DAO.Resto_insert("INSERT INTO RESTO_ORDER_TEMP VALUES(RESTO_ITEM_SNO.NEXTVAL,"+ order_seq + str1.replaceAll("amp;", ""));
		}
	}
		response.sendRedirect("OrderConfirmation.jsp?order_seq="+order_seq);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
