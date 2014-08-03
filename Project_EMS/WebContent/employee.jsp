<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="model.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">



<html>
<head>
<script type="text/javascript" src="jquery-1.11.1.min.js"></script>
<link rel="stylesheet" type="text/css" href="em.css"/>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Employee</title>
<script>
$(document).ready(function(){
	$("#content").load("index.html");

		//<button value="ajax content" id="Home_Btn">Home Page</button>
	//$("#Home_Btn").click(function(){
		//$("#menu").slideToggle();
		//$("#content").load("Web-Content/test.html");  //this works
	//});
	
	$("#TagU").click(function(){	
		
		$("#content").load("container.html");  //this works
	});
	$("#TagM").click(function(){
		$("#content").load("index.html");  //this works
	});
	$("#TagP").click(function(){
		$("#content").load("index.html");  //this works
	});
});
</script>
</head>

<body>


<div id="container">
	<div id="header" style="">
	<h2 id="title" align="center">
	Welcome, 
	<%! Employee emp = new Employee(); %>
	<% 
		emp = (Employee)session.getAttribute("currentEmployee");
		out.print(emp.geteName());
	%>
	</h2>
	
	<div id="content">
	<!--
		<form id="f1" action="UpdateEmpReq" method="post" accept-charset="utf-8">
			name: <input type="text" name="ename" required><br/>
			password: <input type="text" name="pwd" required><br/>
			address: <input type="text" name="add" required><br/>
			phone number: <input type="text" name="phon" required><br/>
			img path: <input type="text" name="imgp" required><br/>
			<input type="submit" name="update" value="Update">
		</form> -->
	
	</div>
	<div id="menu">
		<div id="tag">
			<button id="TagP" class="tag">Personal</button>
			<button id="TagU" class="tag">Update</button>
			<button id="TagM" class="tag">Management</button>
		</div>
	</div>
	<div id="footer">
		<br>
		<form action="login.jsp" method="get">
			<input type="image" name="logout" class="logoutBtn" src="logout.png" width="50px" height="50px" />
		</form>
	</div>
</div>


</body>
</html>