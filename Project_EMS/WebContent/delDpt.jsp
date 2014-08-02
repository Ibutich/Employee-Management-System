<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="dao.*, java.util.*, model.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="delEm.css" media="screen" />
<link rel="stylesheet" href="bootstrap.css"/>
<link rel="stylesheet" href="bootstrapValidator.css"/>
<title>delDpt</title>
</head>
<body>
<div class="col-lg-8 col-lg-offset-2">
<div class="page-header">
                        <h2>Delete Department</h2>
                    </div>
	<!-- <form action="DelDepartment" method="post" class="form"> -->
	<form id="defaultForm" method="post" class="form-horizontal" action="DelDepartment">
		<%  
			ArrayList<Department> list = new ArrayList<Department>();
			list = AdminDao.getAllDepartments();
			for(Department dpt : list) {
		%>
		<div class="form-group">
                            <div class="col-lg-5">
                                <div class="checkbox">
                                    <label>
                                        <input class="inputField" type="checkbox" name="dptlist" value="<%= dpt.getDid() %>"/><%= dpt.getdName() %>
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