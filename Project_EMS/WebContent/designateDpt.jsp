<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="dao.*, java.util.*, model.*, dbc.*, java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Designate Associate</title>
<link rel="stylesheet" href="bootstrap.css"/>
<link rel="stylesheet" href="bootstrapValidator.css"/>
</head>
<body>
<div class="col-lg-8 col-lg-offset-2">
<div class="page-header">
                        <h2>Designate Department</h2>
                    </div>
    <form id="defaultForm" method="post" class="form-horizontal" action="DesignateDept">
	<%! Connection conn = DBconn.getConn(); %>
	Current designate:<br/><br/>
	<% 
		try {
			out.println("try");
			Statement st = conn.createStatement();
			ResultSet rs = st.executeQuery("select ename, dname from employee e, department d, empdpt ed where e.eid=ed.eid and d.did=ed.did");
			while(rs.next()) {
				out.print(rs.getString("ename") + " : ");
				out.print(rs.getString("dname"));
	%>
	<br/>
	<%
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			DBconn.close(conn);
		}
	%>
	<br/><br/>Choose employees and relative departments:
	<form action="DesignateDept" method="post">
		<br/>Employees:<br/>
		<%  
			ArrayList<Employee> empList = new ArrayList<Employee>();
			empList = AdminDao.getAllEmployees();
			for(Employee emp : empList) {
				out.println(emp.geteName());
		%>
		<input type="checkbox" name="emplist" value="<%= emp.getEid() %>">
		<br/>
		<%
			}
		%>
		<br/>Departments:<br/>
		<%  
			ArrayList<Department> dptList = new ArrayList<Department>();
			dptList = AdminDao.getAllDepartments();
			for(Department dpt : dptList) {
				out.println(dpt.getdName());
		%>
		<input type="checkbox" name="dptlist" value="<%= dpt.getDid() %>">
		<br/>
		<%
			}
		%>
		<div class="form-group">
                      <div class="col-lg-9 col-lg-offset-3">
                   		<input type="submit" class="btn btn-primary" name="confirm" value="Confirm"></input>
                   		</div>
                   	</div>
		</form>
	</form>
	<form action="admin.jsp" method="get">
	<div class="form-group">
                      <div class="col-lg-9 col-lg-offset-3">
                   		<input type="submit" class="btn btn-primary" name="back" value="Back"></input>
                   		</div>
                   	</div>
	</form>
</body>
</html>