<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	
	<link rel="icon" type="image/png" href="http://nucigent.in/clients/hibbsr/captain/assets/img/favicon.ico">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

	<title>Administrator - Login</title>

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
                   <li>
                    <a href="AddTables.jsp">
                        <i class="pe-7s-graph"></i>
                        <p>Manage Tables</p>
                    </a>
                </li>
                <li>
                    <a href="Item_Type.jsp">
                        <i class="pe-7s-graph"></i>
                        <p>Manage Item Type</p>
                    </a>
                </li>
                <li>
                    <a href="AddMenu.jsp">
                        <i class="pe-7s-cart"></i>
                        <p>Manage Menu</p>
                    </a>
                </li>
                <li class="active" >
                    <a href="ManageUser.jsp">
                        <i class="pe-7s-note2"></i>
                        <p>Manage Users</p>
                    </a>
                </li>                
                <li>
                    <a href="http://nucigent.in/clients/hibbsr/captain/notification-review.jsp">
                        <i class="pe-7s-bell"></i>
                        <p>Manage Reports</p>
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
                    <a class="navbar-brand" href="http://nucigent.in/clients/hibbsr/captain/order-status.jsp#">Welcome Admin - Add New User</a>
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
                                <h4 class="title">Add New User</h4>
                                <p class="category">User Login</p>
                            </div>
                            	<form id="aUser">	
                            <div class="content table-responsive table-full-width">
                                                                     
								<div class="foot-title" style="margin-left:30px" id="starter">
												<h2>User Name</h2>
											</div>		
											<input name="Uname" Id="Uname" class="h180" style="margin-left:30px;width:500px;border:1px solid #ccc" type="text">
										    
                                        

                            </div>
														<div class="content table-responsive table-full-width">
                                                                     
										<div class="foot-title" style="margin-left:30px" id="starter">
												<h2>Select Login Type</h2>
											</div>		
											
										   <select Id="ltype" name= "ltype" class="select-member" class="h180" style="padding:10px;margin-left:30px;width:500px;font-size: 14px;font-family: 'Open Sans', sans-serif !important">
											<option disabled="" selected="" hidden>Login Type</option>
											<option value="Waiter">Captain</option>
											<option value="Chef">Kitchen/Chef</option>
											<option value="Billing">Billing</option>
											</select>
                                        

                            </div>
							                            <div class="content table-responsive table-full-width">
                                                                     
										<div class="foot-title" style="margin-left:30px" id="starter">
												<h2>User Id</h2>
											</div>		
											<input id= "UId" name="UId" class="h180" style="margin-left:30px;width:500px;border:1px solid #ccc" type="text">
										   
                                        
										 <div class="content table-responsive table-full-width">
                                                                     
										<div class="foot-title" style="margin-left:30px" id="starter">
												<h2>Password</h2>
											</div>		
											<input id="pwd" name="pwd" class="h180" style="margin-left:30px;width:500px;border:1px solid #ccc" type="text">
										   

                             <div class="content table-responsive table-full-width">
                                                                     
										<div class="foot-title" style="margin-left:30px" id="starter">
												<h2>Confirmed Password</h2>
											</div>		
											<input id="cpwd" class="h180" style="margin-left:30px;width:500px;border:1px solid #ccc" type="text" name="cpwd">
										    <input type="hidden" name="MenuOrder" value="1">
										    <input type="submit" value="Click Here to Add New User" style="margin-left:30px;font-size: 14px !important;background-color:#3498db;color: #fff;font-family: 'Open Sans', sans-serif !important;cursor: pointer;" class="button" onclick="AddUser()">
											<input type="" value="Click Here to Remove User" style="margin-left:30px;font-size: 14px !important;background-color:#3498db;color: #fff;font-family: 'Open Sans', sans-serif !important;cursor: pointer;"class="button" onclick="RemoveUser()" >

							</div>
							
							  <div class="content table-responsive table-full-width">
                                                               
								
                                        </div>
                                            </form>  

                            </div>
                        </div>
                    </div>				
                </div>
            </div>
        </div>
        <footer class="footer">
            <div class="container-fluid">
                <p class="copyright pull-right">
                    © <script>document.write(new Date().getFullYear())</script>2019 <a href="http://nucigent.in/clients/hibbsr/captain/order-status.jsp"> Hi, Bhubaneswar
                </a></p><a href="http://nucigent.in/clients/hibbsr/captain/order-status.jsp">
            </a></div><a href="http://nucigent.in/clients/hibbsr/captain/order-status.jsp">
        </a></footer><a href="http://nucigent.in/clients/hibbsr/captain/order-status.jsp">
    </a></div><a href="http://nucigent.in/clients/hibbsr/captain/order-status.jsp">
</a></div><a href="http://nucigent.in/clients/hibbsr/captain/order-status.jsp">

<%
if(request.getParameter("confirm")!=null)
{
	if(request.getParameter("confirm").length()!=0)
	{
		%>
		 <script>
	  alert("<%=request.getParameter("confirm")%>");
	  window.location = "ManageUser.jsp";
	   </script>
	 <%
	}
}
	%>




<script>







function AddUser()
{
	
	if(document.getElementById("pwd").value.length!=0 && document.getElementById("cpwd").value.length!=0 && document.getElementById("Uname").value.length!=0 && document.getElementById("UId").value.length!=0 )
	{
		
	
	
	if(document.getElementById("pwd").value==document.getElementById("cpwd").value )
	{
		document.getElementById("aUser").method="get";
		document.getElementById("aUser").action="AUser";
		document.getElementById("aUser").submit();

	}
	else
	{

		alert("Password and confirmed Password is not matching");
		window.location = "ManageUser.jsp";
	}

	}
	else
		{
			alert("Please Enter the data correctly");
			window.location = "ManageUser.jsp";
		
		}
	
		
}

function RemoveUser()
{
	
	window.location = "UpdateUser.jsp";
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