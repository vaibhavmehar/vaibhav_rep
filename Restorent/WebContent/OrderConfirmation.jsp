<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.resto.*"%> 
<%@page import="java.util.List"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<title>Hi ${username}</title>
	<meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport">
    <meta name="viewport" content="width=device-width">
    <!-- Bootstrap core CSS     -->
    <link href="./take-order_files/bootstrap.min.css" rel="stylesheet">

    <!-- Animation library for notifications   -->
    <link href="./take-order_files/animate.min.css" rel="stylesheet">

    <!--  Light Bootstrap Table core CSS    -->
    <link href="./take-order_files/light-bootstrap-dashboard.css" rel="stylesheet">


    <!--  CSS for Demo Purpose, don't include it in your project     -->
    <link href="./take-order_files/demo.css" rel="stylesheet">


    <!--     Fonts and icons     -->
    <link href="./take-order_files/font-awesome.min.css" rel="stylesheet">
    <link href="./take-order_files/css" rel="stylesheet" type="text/css">
    <link href="./take-order_files/pe-icon-7-stroke.css" rel="stylesheet">
<%

	response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");	
	response.setHeader("Pragma","no-cache");
	response.setHeader("Expires","0");	
	if(session.getAttribute("username") == null)
	{
		response.sendRedirect("index.jsp");
	}
	


%>
</head>
<body>
<div class="wrapper">
    <div class="sidebar" data-color="green" data-image="assets/img/sidebar-5.jpg">
    	<div class="sidebar-wrapper">
            <div class="logo text-center">
                <a href="take-orders.html">
                    <img src="./take-order_files/logo.png" alt="hi bhubaneswar" width="150" height="160">
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
                    <a href="dashboard.html">
                        <i class="pe-7s-graph"></i>
                        <p>Dashboard</p>
                    </a>
                </li>
                <li class="active">
                    <a href="take-orders.html">
                        <i class="pe-7s-cart"></i>
                        <p>Take Orders </p>
                    </a>
                </li>
                 <li>
                    <a href="Captain.jsp">
                        <i class="pe-7s-note2"></i>
                        <p>Order Status</p>
                    </a>
                </li>                  
                <li>
                    <a href="Order_Captain.jsp">
                        <i class="pe-7s-bell"></i>
                        <p>Table Wise Order Detail</p>
                    </a>
                </li>
				<li class="active-pro">
                    <a href="upgrade.html">
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
                    <a class="navbar-brand" href="take-orders.html#">Hi  ${username}, Take Orders</a>
                  
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
					<div class="card">
					
							
						 <form class="">
							<fieldset class="section text-center">
							   <h3 style="color:#49da09;"><strong>Order has Been Placed Successfully!</strong></h3>
							  <h3 style="color:#49da09;"><strong>Order No: #<%=request.getParameter("order_seq") %></strong></h3>
							  <p><a href="Waiter.jsp" class="btn btn-primary">Click Here to place New Order</a></p>
							
							</fieldset>
						  </form>
						 
						</div>
					</div>				
                </div>
                 © <script>document.write(new Date().getFullYear())</script>2019 <a href="take-orders.html"> Hi, ${username}
                <div class="row">
                </div>
            </div>
        </div>

    </a></div><a href="take-orders.html">
</a></div><a href="take-orders.html">

    <!--   Core JS Files   -->
    <script src="./take-order_files/jquery.3.2.1.min.js.download" type="text/javascript"></script>
    <script src="./take-order_files/index.js.download"></script>
	<script src="./take-order_files/bootstrap.min.js.download" type="text/javascript"></script>
    <!--  Notifications Plugin    -->
    <script src="./take-order_files/bootstrap-notify.js.download"></script>
    <!-- Light Bootstrap Table Core javascript and methods for Demo purpose -->
	<script src="./take-order_files/light-bootstrap-dashboard.js.download"></script>

	<!-- Light Bootstrap Table DEMO methods, don't include it in your project! -->
	<script src="./take-order_files/demo.js.download"></script>	
	<script type="text/javascript">
$(document).ready(function(){
  $(".food-menu-nav").click(function(){
    $(".food-menu-category").toggle(100);
  });
  
})

(function(e,c){"object"===typeof exports&&"undefined"!==typeof module?module.exports=c():"function"===typeof define&&define.amd?define(c):e.currency=c()})(this,function(){function e(b,a){if(!(this instanceof e))return new e(b,a);a=Object.assign({},m,a);var f=Math.pow(10,a.precision);this.intValue=b=c(b,a);this.value=b/f;a.increment=a.increment||1/f;a.groups=a.useVedic?n:p;this.s=a;this.p=f}function c(b,a){var f=2<arguments.length&&void 0!==arguments[2]?arguments[2]:!0,c=a.decimal,g=a.errorOnInvalid;var d=Math.pow(10,a.precision);var h="number"===typeof b;if(h||b instanceof e)d*=h?b:b.value;else if("string"===typeof b)g=new RegExp("[^-\\d"+c+"]","g"),c=new RegExp("\\"+c,"g"),d=(d*=b.replace(/\((.*)\)/,"-$1").replace(g,"").replace(c,"."))||0;else{if(g)throw Error("Invalid Input");d=0}d=d.toFixed(4);return f?Math.round(d):d}var m={symbol:"$",separator:",",decimal:".",formatWithSymbol:!1,errorOnInvalid:!1,precision:2,pattern:"!#",negativePattern:"-!#"},p=/(\d)(?=(\d{3})+\b)/g,n=/(\d)(?=(\d\d)+\d\b)/g;e.prototype={add:function(b){var a=this.s,f=this.p;return e((this.intValue+c(b,a))/f,a)},subtract:function(b){var a=this.s,f=this.p;return e((this.intValue-c(b,a))/f,a)},multiply:function(b){var a=this.s;return e(this.intValue*b/Math.pow(10,a.precision),a)},divide:function(b){var a=this.s;return e(this.intValue/c(b,a,!1),a)},distribute:function(b){for(var a=this.intValue,f=this.p,c=this.s,g=[],d=Math[0<=a?"floor":"ceil"](a/b),h=Math.abs(a-d*b);0!==b;b--){var k=e(d/f,c);0<h--&&(k=0<=a?k.add(1/f):k.subtract(1/f));g.push(k)}return g},dollars:function(){return~~this.value},cents:function(){return~~(this.intValue%this.p)},format:function(b){var a=this.s,c=a.pattern,e=a.negativePattern,g=a.formatWithSymbol,d=a.symbol,h=a.separator,k=a.decimal;a=a.groups;var l=(this+"").replace(/^-/,"").split("."),m=l[0];l=l[1];"undefined"===typeof b&&(b=g);return(0<=this.value?c:e).replace("!",b?d:"").replace("#","".concat(m.replace(a,"$1"+h)).concat(l?k+l:""))},toString:function(){var b=this.s,a=b.increment;return(Math.round(this.intValue/this.p/a)*a).toFixed(b.precision)},toJSON:function(){return this.value}};return e});

function back()
{
	window.location = "Waiter.jsp";
}

</script>
	
</a></body></html>