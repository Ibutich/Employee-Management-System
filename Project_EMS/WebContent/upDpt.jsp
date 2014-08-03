<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="dao.*, java.util.*, model.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="bootstrap.css"/>
<link rel="stylesheet" href="bootstrapValidator.css"/>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>upDpt</title>
<link rel="stylesheet" type="text/css" href="UpdDept.css" media="screen" />
<script type="text/javascript" src="UpdDept.js"></script>
</head>
<body>
  <section class="main"><!-- adding class -->
    <div class="displayDiv"><!-- adding class -->
	<form action="UpdateDepartment" method="post" class="formStyle">
		<%  
			ArrayList<Department> list = new ArrayList<Department>();
			list = AdminDao.getAllDepartments();
			for(Department dpt : list) {
				out.println(dpt.getdName());
		%>
		<input type="radio" name="did" value="<%= dpt.getDid() %>">
		<br/>
		<%
			}
		%>
		<input class="inputField" type="text" name="dname" required/>
		<input class="executeBtn" type="submit" name="update" value="Update"/>
	</form>
    </div><!-- adding class -->
    <div class="inputDiv"><!-- adding class -->
    </div><!-- adding class -->
  </section><!-- adding class -->
</body>
</html>