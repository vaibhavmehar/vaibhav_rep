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
                    <a href="Waiter.jsp">
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
                    <a class="navbar-brand" href="take-orders.html#">Hi  ${username} , Take Orders</a>
                  
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
						<div class="wrapper">
							<div id="takeorderbar">
								<ul class="steps">
									<li class="is-active">Choose Table</li>
									<li class="">Choose Menu</li>
									<li>Place Order</li>
								</ul>
							</div>
							
						  <form  id="Captain" class="form-wrapper">
							<fieldset class="section is-active">
															  
								<div class="foot-title" id="starter">
									<h2>Choose Table</h2>
								</div>	
							  <div class="row cf">
								<table class="table">
									<tbody><tr>
										<td>										
											<select class="table-select" id="tbno" onchange="GetOrderNo()">
												<option disabled="" selected="" hidden>Choose Table</option>
												<% List<String> l = DAO.Resto_getData("SELECT * FROM RESTO_TABLE WHERE RESERVATION_STATUS='false' AND ACTIVE = 'true' ORDER BY TO_NUMBER(RT_TABLE_NO)", 1);  
   												 
												for(String s: l)
   												 {%>
												<option><%=DAO.splitData(s)[0]%></option>
												<%} %>
											</select>
										</td>
									</tr>
									<tr>										
										<td>										
											<div class="foot-title" id="starter">
												<h2>Notes for Chef</h2>
											</div>		
											<textarea class="h180" rows="6" cols="120"></textarea>
										</td>
									</tr>
								</tbody></table>
								</div>
							  <div class="button" onclick="TableCheck()">Next</div>
							</fieldset>
							<fieldset class="section" id="abc">
									
								<div class="food-menu-selection">
									<div class="food-menu-nav">
										<i class="pe-7s-menu"></i> <p>Choose Menu</p>
									</div>
									
									<div class="food-menu-category">
										<ul>
										<% l = DAO.Resto_getData("SELECT DISTINCT INITCAP(ITEM_TYPE) FROM RESTO_MENU", 1);  
								    for(String s: l)
								    {%>	
											<li><a href="Waiter.jsp#<%=DAO.splitData(s)[0].toLowerCase().replace(" ", "")%>" class="btn btn-primary"><%=DAO.splitData(s)[0]%></a></li>
									<%} %>
										</ul>
									</div>
									
								</div>
						

	<% 
	
	//l = DAO.Resto_getData("SELECT * FROM RESTO_MENU ORDER BY ITEM_TYPE DESC,ITEM_NAME", 5);  
 
	l = DAO.Resto_getData("SELECT DISTINCT A.ITEM_NO,A.ITEM_NAME,A.ITEM_TYPE,A.ITEM_PRICE,A.DESCRIPTION,DECODE(B.ORDER_NO,NULL,'False','True') CHECKBOX, DECODE(B.ORDER_NO,NULL,1,B.QUANTITY) QUANTITY FROM ( SELECT * FROM RESTO_MENU)A LEFT OUTER JOIN (SELECT * FROM RESTO_ORDER_TEMP WHERE TABLE_NO='005')B  ON  A.ITEM_NAME = B.ITEM_NAME ORDER BY ITEM_TYPE DESC,A.ITEM_NAME", 7); 
	
	
	String prev_item_type = "";
									for(String s: l)
								    {
			if(!prev_item_type.equals(DAO.splitData(s)[2]))
{			
						
						%>	
<div class="foot-title" id="<%=DAO.splitData(s)[2].toLowerCase().replace(" ", "")%>">
	<h2><%=DAO.splitData(s)[2].substring(0,1).toUpperCase() + DAO.splitData(s)[2].substring(1)%></h2>

</div>	
<%
 prev_item_type=DAO.splitData(s)[2];
 }
 
%> 
								
<div class="food-details">
  <div class="food-details">
	<div class="table-full-width">
		<table class="table">
			<tbody>
									
										<tr>
										<td>
										<div class="">
										<%
											if(DAO.splitData(s)[5].equals("True"))
											{
												%>
												<input name="chk" type="checkbox" checked=<%=DAO.splitData(s)[5]%> >
												
										<%
											}
											else
											{
												%>
												<input name="chk" type="checkbox">
												<%
											}
										%>
										
										<label for="checkbox3"></label>
										</div>
										</td>
										<td>
										<div class="foodimage">
											<img src="./take-order_files/1.jpg" alt="" width="90" height="90">
										</div>
										</td>
										<td>
											<div class="food-name">
									
											
												<h3 name="item"><%=DAO.splitData(s)[1]%></h3>
												<p><%=DAO.splitData(s)[4]%></p>										
												<p class="price" name="pr"><b>Rs. <%=DAO.splitData(s)[3]%></b></p>
											</div>
										</td>
										
										<td class="td-actions text-right">
											<div class="input-group">
											  <input type="button" value="-" class="button-minus" data-field="quantity">
											  <input type="number" step="1" max="" value="<%=DAO.splitData(s)[6] %>" name="quantity" class="quantity-field">
											  <input type="button" value="+" class="button-plus" data-field="quantity">
											</div>
										</td>
										</tr>
										
										
										</tbody>
										</table>
									</div>
								    </div>
								</div>
							<% } %>	
											
	

							  <div class="modify">Back</div>						
							  <div class="button" onclick="addrow()">Next</div>							
							</fieldset>
							<fieldset class="section">	
								<div class="card">	
 <table class="table table-hover mrt-50">
                        <tbody><tr>
                            <th>Item No.</th>
                            <th>Table No.</th>
                            <th>Product</th>
                            <th class="text-center">Quantity</th>
                            <th class="text-center">Price</th>
                            <th class="text-center">Total</th>
                        </tr>
                    </tbody>
					<tbody id="empTable">
                        </tbody>
						<tbody>
                        <tr>
                            <td> &nbsp; </td>
                            <td> &nbsp; </td>
                            <td> &nbsp; </td>
                            <td class="text-right">
                            <p>
                                <strong>Subtotal:&nbsp;</strong>
                            </p>
                            <p>
                                <strong>Tax:&nbsp;</strong>
                            </p></td>
                            <td class="text-center" colspan="2">
                            <p id="tot">
                                <strong>Rs. 0.00</strong>
                            </p>
                            <p id="tax">
                                <strong>Rs. 0.00</strong>
                            </p></td>
                        </tr>
                        <tr>
                            <td> &nbsp; </td>
                            <td> &nbsp; </td>
                            <td> &nbsp; </td>
                            <td class="text-right"><h4><strong>Total:&nbsp;</strong></h4></td>
                            <td colspan="2" class="text-center text-danger"><h4 style="font-size:17px;" id="tota"><strong>Rs. 0.00</strong></h4></td>
                        </tr>
                    </tbody>
                </table>								
								
								</div>
							  <div class="modify" style="right:206px;" onclick="removeRow()">Back</div>
							 <input class="submit button" type="submit" value="Confirm Order" onclick="order()">
							</fieldset>
							<fieldset class="section text-center">
							  <h3 style="color:#49da09;"><strong>Order has Been Placed Successfully!</strong></h3>
							  <p>Waiting time 15 Min...</p>
							  <div class="button">Modify Order</div>
							</fieldset>
						  </form>
						 
						</div>
					</div>				
                </div>
                <div class="row">
                </div>
            </div>
        </div>
        <footer class="footer">
            <div class="container-fluid">
                <p class="copyright pull-right">
                    © <script>document.write(new Date().getFullYear())</script>2019 <a href="take-orders.html"> Hi, ${username}
                </a></p><a href="take-orders.html">
            </a></div><a href="take-orders.html">
        </a></footer><a href="take-orders.html">
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

function order()
{


	
	var empTab = document.getElementById('empTable');
	var final_total = 0.00;
	var y = 0;
	for(var i = 0; i < document.getElementsByName('chk').length; i++)
	{
		
		if(document.getElementsByName('chk')[i].checked==true)
		{
			var total = Number(document.getElementsByName('quantity')[i].value) * Number(document.getElementsByName('pr')[i].innerHTML.toString().replace(/<[^>]*>/g, '').replace('Rs.',''));
	       
	       
	        
			y=y+1;
				var sql = "insert into RESTO_ORDER_TEMP values ("+y+
				",'"+document.getElementById('tbno').value+"',"+
				"'"+document.getElementsByName('item')[i].innerHTML+"',"+
				"'"+document.getElementsByName('quantity')[i].value+"',"+
				"'"+document.getElementsByName('pr')[i].innerHTML.toString().replace(/<[^>]*>/g, '')+"',"+
				"'Rs. " + currency(total) +"',"+
				"'" + document.getElementById('tot').innerHTML.toString().replace(/<[^>]*>/g, '') + "',"+
				"'" + document.getElementById('tax').innerHTML.toString().replace(/<[^>]*>/g, '') + "',"+
				"'" + document.getElementById('tota').innerHTML.toString().replace(/<[^>]*>/g, '') + "')";
				document.getElementsByName('chk')[i].value=sql;
			
		}
		
	}

	
	document.getElementById("Captain").action="Order";
	document.getElementById("Captain").method="get";
	document.getElementById("Captain").submit();
	
}

function TableCheck(){
	if(document.getElementById('tbno').value=='Choose Table')
		{
			alert("Please select the correct table");
			window.location = "Waiter.jsp";
			
			
		}
	else
		{
			window.location = "modify?tbno=" + document.getElementById("tbno").value;
		}


}



function removeRow() {
	
	for(var i=document.getElementById("empTable").rows.length;i>0;i--) {
		document.getElementById("empTable").deleteRow(i-1);
	}
}

function addrow()
{

	removeRow();
	
var empTab = document.getElementById('empTable');
var final_total = 0.00;
var y = 0;
for(var i = 0; i < document.getElementsByName('chk').length; i++)
{
	
	if(document.getElementsByName('chk')[i].checked==true)
	{
			var rowCnt = empTab.rows.length;   
			var tr = empTab.insertRow(rowCnt);      // TABLE ROW.
			tr = empTab.insertRow(rowCnt);
			var td = document.createElement('td');          // TABLE DEFINITION.
			td = tr.insertCell(0);
			td.setAttribute('class', 'col-md-1 text-center');
			y = y + 1;
			td.innerHTML = "#" + y;
			
			var td = document.createElement('td');          // TABLE DEFINITION.
			td = tr.insertCell(1);
			td.setAttribute('class', 'col-md-1 text-center');
			td.innerHTML = document.getElementById('tbno').value;
			
			var td = document.createElement('td');          // TABLE DEFINITION.
			td = tr.insertCell(2);
			td.setAttribute('class', 'col-md-9');
			td.innerHTML = "<em>" + document.getElementsByName('item')[i].innerHTML + "</em>";
			
			
			var td = document.createElement('td');          // TABLE DEFINITION.
			td = tr.insertCell(3);
			td.setAttribute('class', 'col-md-1');
			td.setAttribute('style', 'text-align: center');
			td.innerHTML = document.getElementsByName('quantity')[i].value;
			
			var td = document.createElement('td');          // TABLE DEFINITION.
			td = tr.insertCell(4);
			td.setAttribute('class', 'col-md-1 text-center');
			td.innerHTML = document.getElementsByName('pr')[i].innerHTML;
			//alert(document.getElementsByName('pr')[i].innerHTML.toString().replace(/<[^>]*>/g, '').replace('Rs.',''));
			var total = Number(document.getElementsByName('quantity')[i].value) * Number(document.getElementsByName('pr')[i].innerHTML.toString().replace(/<[^>]*>/g, '').replace('Rs.',''));
			final_total = final_total + total;
			
			var td = document.createElement('td');          // TABLE DEFINITION.
			td = tr.insertCell(5);
			td.setAttribute('class', 'price');
			td.setAttribute('style','color:black; font-weight: bold')
			td.innerHTML = 'Rs. ' + currency(total) ;
	}

	
	document.getElementById('tot').innerHTML = '<strong>Rs. ' + currency(final_total) + '</strong>';
	var tax = <%=context.getParameter("TAX_PER")%>*currency(final_total);
	document.getElementById('tax').innerHTML = '<strong>Rs. ' + currency(tax)+ '</strong>';
	var fin_total = final_total + tax;
	document.getElementById('tota').innerHTML = '<strong>Rs. ' + currency(fin_total) + '</strong>';
}
			

}



</script>
	
</a></body></html>