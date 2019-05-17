<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.resto.*"%> 
<%@page import="java.util.List"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	
	<link rel="icon" type="image/png" href="http://nucigent.in/clients/hibbsr/captain/assets/img/favicon.ico">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

	<title>Hi ${username}</title>

	<meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport">
    <meta name="viewport" content="width=device-width">


    <!-- Bootstrap core CSS     -->
    <link href="./order-status_files/bootstrap.min.css" rel="stylesheet">

    <!-- Animation library for notifications   -->
    <link href="./order-status_files/animate.min.css" rel="stylesheet">

    <!--  Light Bootstrap Table core CSS    -->
    <link href="./order-status_files/light-bootstrap-dashboard.css" rel="stylesheet">


    <!--  CSS for Demo Purpose, don't include it in your project     -->
    <link href="./order-status_files/demo.css" rel="stylesheet">


    <!--     Fonts and icons     -->
    <link href="./order-status_files/font-awesome.min.css" rel="stylesheet">
    <link href="./order-status_files/css" rel="stylesheet" type="text/css">
    <link href="./order-status_files/pe-icon-7-stroke.css" rel="stylesheet">
<%

	response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");	
	response.setHeader("Pragma","no-cache");
	response.setHeader("Expires","0");	
	if(session.getAttribute("username") == null)
	{
		response.sendRedirect("index.jsp");
	}
	


%>
<script type="text/javascript" charset="UTF-8" src="./order-status_files/common.js.download"></script><script type="text/javascript" charset="UTF-8" src="./order-status_files/util.js.download"></script><script type="text/javascript" charset="UTF-8" src="./order-status_files/AuthenticationService.Authenticate"></script></head>
<body>

<div class="wrapper">
    <div class="sidebar" data-color="green" data-image="assets/img/sidebar-5.jpg">

    <!--

        Tip 1: you can change the color of the sidebar using: data-color="blue | azure | green | orange | red | purple"
        Tip 2: you can also add an image using data-image tag

    -->

    	    	<div class="sidebar-wrapper">
            <div class="logo text-center">
                <a href="http://nucigent.in/clients/hibbsr/captain/order-status.jsp">
                    <img src="./order-status_files/logo.png" alt="hi bhubaneswar" width="150" height="160">
                </a>
            </div>

            <ul class="nav nav-mobile-menu">
                    <ul class="nav navbar-nav navbar-right">                       
                        <li>
                            <a href="logout">
                                <p>Log out</p>
                            </a>
                        </li>
						<li class="separator hidden-lg"></li>
                    </ul>
                </ul><ul class="nav">
                   <li class="active">
                    <a href="Chef.jsp">
                        <i class="pe-7s-graph"></i>
                        <p>Order List</p>
                    </a>
                </li>
                <li >
                    <a href="Order_Chef.jsp">
                        <i class="pe-7s-graph"></i>
                        <p>Table Wise Order</p>
                    </a>
                </li>
                                         
                
				<li class="active-pro">
                    <a href="logout">
                        <i class="pe-7s-rocket"></i>
                        <p>Logout</p>
                    </a>
                </li>
            </ul>
    	</div>
    <div class="sidebar-background" style="background-image: url(assets/img/sidebar-5.jpg) "></div></div>
<form id="form1">
    <div class="main-panel">
        <nav class="navbar navbar-default navbar-fixed">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navigation-example-2">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="http://nucigent.in/clients/hibbsr/captain/order-status.jsp#">Hi  ${username}, Order List</a>
                </div>
                <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav navbar-right">                       
                        <li>
                            <a href="logout">
                                <p>Log out</p>
                            </a>
                        </li>
						<li class="separator hidden-lg"></li>
                    </ul>
                </div>
            </div>
        </nav>
        <div class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="header">
                                <h4 class="title">Orders List</h4>
                                <p class="category">&nbsp List of all the Order along with currect Status</p>
                            </div>
                            <div class="content table-responsive table-full-width">
                                                 
												
											 <input type="hidden" name="MenuOrder" value="9">

                            </div>
							                             <div class="content table-responsive table-full-width">
                                <table class="table table-hover table-striped" id="Table1">
                                    <tr>
                                    	<th class="text-center">SNO</th>
                                        <th class="text-center">TABLE NO</th>
                                    	<th class="text-left">ITEM</th>
                                    	<th class="text-center">QUANTITY</th>
                                    	<th class="text-center">PLACED BY</th>
                                    	<th class=">text-center" style="width:200px">STATUS</th>
                                    	<th> </th>
                                    	<th> </th>
                                    	
                                    	
                                    </tr>
                                   <% List<String> l = DAO.Resto_getData("SELECT SNO,TABLE_NO,ITEM_NAME,QUANTITY,UPDATED_BY,ORDER_STATUS FROM RESTO_ORDER_TEMP ORDER BY SNO", 6);  
   												 int sno=0;
												for(String s: l)
   												 {
													if(!DAO.splitData(s)[5].equals("Served"))
													{
														++sno;%>
   												 	
   												 <tr>
   												 <td class="text-center"><%=sno%></td>
   												 <td class="text-center" name="tableno"><%=DAO.splitData(s)[1]%></td>
   												 <td class="text-left"><%=DAO.splitData(s)[2]%></td>
   												 <td class="text-center"><%=DAO.splitData(s)[3]%></td>
   												 <td class="text-center"><%=DAO.splitData(s)[4]%></td>
   												 <% if(DAO.splitData(s)[5].equals("Placed"))
   												 { 
   												 %>	
   												 <td style="color:green;">
   												 <input type="submit" value="Accept" style="font-size: 14px !important;background-color:#3498db;color: #fff;font-family: 'Open Sans', sans-serif !important;cursor: pointer;width:90px"class="button" onclick="Accept(this)" >						
   												 <input type="submit" value="Decline" style="font-size: 14px !important;background-color:Red;color: #fff;font-family: 'Open Sans', sans-serif !important;cursor: pointer;width:90px"class="button" onclick="Decline(this)" >
   												 </td>
   												 <td><input type="submit" value="Ready" style="font-size: 14px !important;background-color:Green;color: #fff;font-family: 'Open Sans', sans-serif !important;cursor: pointer;width:90px"class="button" onclick="Ready(this)" ></td>
   												 <%
   												 } else if(DAO.splitData(s)[5].equals("In Progress"))
   												 { %>
   												 <td style="color:green;"><%=DAO.splitData(s)[5]%></td>
   												 <td><input type="submit" value="Ready" style="font-size: 14px !important;background-color:Green;color: #fff;font-family: 'Open Sans', sans-serif !important;cursor: pointer;width:90px"class="button" onclick="Ready(this)" ></td>
   												 
   												 <%}
   												 else
   												{ %>
   												 <td style="color:green;"><%=DAO.splitData(s)[5]%></td>
   												 <td></td>
   												   											<% } %>
   												<td style="text-align:right;color:#fff"><%=DAO.splitData(s)[0]%></td>
   												<%
   												 } 
   												 }
   												 %>
   												 
   												 </tr>
                                </table>
								
                            </div>
	
                        
                    </div>				
                </div>
            </div>
            
        </div>
       </form>
        <footer class="footer">
            <div class="container-fluid">
                <p class="copyright pull-right">
                    © <script>document.write(new Date().getFullYear())</script>2019 <a href="http://nucigent.in/clients/hibbsr/captain/order-status.jsp"> Hi, Bhubaneswar
                </a></p><a href="http://nucigent.in/clients/hibbsr/captain/order-status.jsp">
            </a></div><a href="http://nucigent.in/clients/hibbsr/captain/order-status.jsp">
        </a></footer><a href="http://nucigent.in/clients/hibbsr/captain/order-status.jsp">
    </a></div><a href="http://nucigent.in/clients/hibbsr/captain/order-status.jsp">
</a></div><a href="http://nucigent.in/clients/hibbsr/captain/order-status.jsp">



<script>


function AddTables()
{
	var empTab = document.getElementById('Table1');
	if(document.getElementsByName("sql").length == 0)
	{
		var table_no = 0;
	}
	else
	{
	var table_no = Number(document.getElementsByName('tableno')[document.getElementsByName("sql").length-1].innerHTML);
	}
	    var rowCnt = empTab.rows.length;        // GET TABLE ROW COUNT.
    var tr = empTab.insertRow(rowCnt);      // TABLE ROW.
    tr = empTab.insertRow(rowCnt);

    for (var c = 0; c < 5; c++) {
        var td = document.createElement('td');          // TABLE DEFINITION.
        td = tr.insertCell(c);
        td.setAttribute('class','text-center');
       
        if (c == 1) {           // FIRST COLUMN.
            // ADD A BUTTON.
            var button = document.createElement('input');

            // SET INPUT ATTRIBUTE.
            button.setAttribute('type', 'checkbox');
            button.setAttribute('name','Rev');
            td.innerHTML="Reserved&nbsp&nbsp";
           
            // ADD THE BUTTON's 'onclick' EVENT.
            

            td.appendChild(button);
        }
        else  if (c == 2) {           // FIRST COLUMN.
        	 // ADD A BUTTON.
            var button = document.createElement('input');

            // SET INPUT ATTRIBUTE.
            button.setAttribute('type', 'checkbox');
            button.setAttribute('checked',true);
            button.setAttribute('name', 'act');
            td.innerHTML="Active&nbsp&nbsp";
            // ADD THE BUTTON's 'onclick' EVENT.
            td.appendChild(button);
        }else  if (c == 3) {           // FIRST COLUMN.
            // ADD A BUTTON.
            var button = document.createElement('input');

            // SET INPUT ATTRIBUTE.
            button.setAttribute('type', 'button');
            button.setAttribute('value', 'Remove Table');
            button.setAttribute('onclick', 'removeRow(this)');
			button.setAttribute('style',"padding:5px;font-size: 13px !important;background-color:#3498db;color: #fff;font-family: 'Open Sans', sans-serif !important;cursor: pointer;");
			button.setAttribute('class','button');
			// ADD THE BUTTON's 'onclick' EVENT.
           
            td.appendChild(button);
        }
        else if(c == 0)
            {
        		table_no = table_no + 1;
            	td.innerHTML = table_no;  
            	td.setAttribute('name','tableno');
            	

            }
        else
          {
        	 var button = document.createElement('input');
        	 button.setAttribute('type', 'hidden');
             button.setAttribute('name', 'sql');
             td.appendChild(button);
           }
    }

}

function removeRow(oButton) {
    var empTab = document.getElementById('Table1');
  
    empTab.deleteRow(oButton.parentNode.parentNode.rowIndex); 
   
}


function Accept(oButton)
{
	var empTab = document.getElementById('Table1');
	var sno = empTab.rows[oButton.parentNode.parentNode.rowIndex].cells[7].innerHTML;
	empTab.rows[oButton.parentNode.parentNode.rowIndex].cells[5].innerHTML = "In Progress";
	window.location = "AUser?MenuOrder=10&sno=" + sno;
	
	
	
	
	
}

function Ready(oButton)
{
	var empTab = document.getElementById('Table1');
	var sno = empTab.rows[oButton.parentNode.parentNode.rowIndex].cells[7].innerHTML;
	
	empTab.rows[oButton.parentNode.parentNode.rowIndex].cells[5].innerHTML = "Ready to Serve";
	empTab.rows[oButton.parentNode.parentNode.rowIndex].cells[6].innerHTML = ' ';
	window.location = "AUser?MenuOrder=12&sno=" + sno;
	
}


function Decline(oButton)
{
	var empTab = document.getElementById('Table1');
	var sno = empTab.rows[oButton.parentNode.parentNode.rowIndex].cells[7].innerHTML;
	empTab.rows[oButton.parentNode.parentNode.rowIndex].cells[5].innerHTML = "Rejected";
	window.location = "AUser?MenuOrder=11&sno=" + sno;
	
	
	
}





</script>
    <!--   Core JS Files   -->
    <script src="./order-status_files/jquery.3.2.1.min.js.download" type="text/javascript"></script>
	<script src="./order-status_files/bootstrap.min.js.download" type="text/javascript"></script>

	<!--  Charts Plugin -->
	<script src="./order-status_files/chartist.min.js.download"></script>

    <!--  Notifications Plugin    -->
    <script src="./order-status_files/bootstrap-notify.js.download"></script>

    <!--  Google Maps Plugin    -->
    <script type="text/javascript" src="./order-status_files/js"></script>

    <!-- Light Bootstrap Table Core javascript and methods for Demo purpose -->
	<script src="./order-status_files/light-bootstrap-dashboard.js.download"></script>

	<!-- Light Bootstrap Table DEMO methods, don't include it in your project! -->
	<script src="./order-status_files/demo.js.download"></script>	
</a></body></html>