<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.LinkedList"%>
<%@page import="java.util.List"%>
<%@page import="com.resto.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="REFRESH" content="2;url=url to your jsp page">
<title>Insert title here</title>
<script>
function addText()
{
	var x = document.getElementById("s").selectedIndex;
	var y = document.getElementById("s").options;
	document.getElementById("t").value = document.getElementById("t").value + "," + y[x].text;
	 
}

</script>
</head>
<body>
<form action="POrder">
<input type="text" name="tno"/>
<select id='s' name='country' onchange="showState(this.value)">  
       <option value="none">Select</option>  
  <%
 	  
	 List<String> l = new LinkedList<String>();
	 l = DAO.Resto_getData("SELECT * FROM MENU" , 1);
	 for(String s:l)
	{
		 %>
			<option value="<%=DAO.splitData(s)[0]%>"><%=DAO.splitData(s)[0]%></option>  
	<% 
				 
	}
	 
  %>
 
      


      </select> 
      <input type="button" value="+" onclick="addText()"/>
      <input type="text" id="t"/>
      
      <input type="submit" value="Place Order"/>
      
      
      </form>
      
     


</body>
</html>