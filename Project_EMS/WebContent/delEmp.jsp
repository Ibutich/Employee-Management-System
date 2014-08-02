<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="dao.*, java.util.*, model.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="delEm.css" media="screen" />
<link rel="stylesheet" href="bootstrap.css"/>
<link rel="stylesheet" href="bootstrapValidator.css"/>
<title>delete Employee</title>
</head>
<body>
<div class="col-lg-8 col-lg-offset-2">
<div class="page-header">
                        <h2>Delete Employee</h2>
                    </div>
	<form id="defaultForm" method="post" class="form-horizontal" action="DelEmployee">
	<!-- <form action="DelEmployee" method="post" class="formStyle"> -->
		<%  
			ArrayList<Employee> list = new ArrayList<Employee>();
			list = AdminDao.getAllEmployees();
			for(Employee emp : list) {
		%>
		<div class="form-group">
                            <div class="col-lg-5">
                                <div class="checkbox">
                                    <label>
                                        <input class="inputField" type="checkbox" name="dptlist" value="<%= emp.getEid() %>"/><%= emp.geteName() %>
                                    </label>
                                </div>
				</div>
				</div>
		<%
			}
		%>
		<input type="image" name="delete" class="deleteBtn" src="deleteBtn.png" width="25px" height="25px" />
	</form>
	</div>
</body>
</html>