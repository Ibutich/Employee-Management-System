<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="model.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">



<html>
<head>
<script type="text/javascript" src="jquery-1.11.1.min.js"></script>
<link rel="stylesheet" type="text/css" href="ma.css"/>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Manager</title>
<script>
$(document).ready(function(){
	$("#content").load("index.html");
	
	//<button value="ajax content" id="Home_Btn">Home Page</button>
	//$("#Home_Btn").click(function(){
		//$("#menu").slideToggle();
		//$("#content").load("Web-Content/test.html");  //this works
	//});
	
	$("#TagDepartment").click(function(){	
		$("#content").load("maSub/DeptDetails.jsp");  //this works
	});
	$("#TagMultiDept").click(function(){
		$("#content").load("maSub/multi.jsp");  //this works
	});
	$("#TagNew").click(function(){
		$("#content").load("maSub/newlyJoined.jsp");  //this works
	});
	$("#TagLeastNum").click(function(){	
		$("#content").load("maSub/least.jsp");  //this works
	});
	$("#TagHighestNum").click(function(){
		$("#content").load("maSub/higest.jsp");  //this works
	});
	$("#TagDrawSalary").click(function(){
		$("#content").load("maSub/drawS.jsp");  //this works
	});

});


</script>
</head>

<body>


<div id="container">
	<div id="header" style="">
	<h2 id="title" align="center">
	Hello, 
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
			<button id="TagNew" class="tag">Newly joined</button>
			<button id="TagDepartment" class="tag">Department details</button>
			<button id="TagLeastNum" class="tag">Least employee department</button>
			<button id="TagHighestNum" class="tag">Highest reported department</button>
			<button id="TagMultiDept" class="tag">Multi-department</button>
			<button id="TagDrawSalary" class="tag">Draw same salary</button>

		</div>
	</div>
	<div id="footer">
		<br>
		<form action="login.jsp" method="get" id="f2">
			<input type="image" name="logout" class="logoutBtn" src="logout.png"  />
		</form>
	</div>
</div>


</body>
</html>