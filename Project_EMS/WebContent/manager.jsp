<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="dao.*, java.util.*, model.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Manager</title>
</head>
<body>
	Hello Manager: <br/>
	<%! //Employee emp = new Employee(); %>
	<% 
		//emp = (Employee)session.getAttribute("currentEmployee");
		//out.print(emp.geteName());
	%>
	<br/><br/>
	<div>
		Newly joined employees: <br/>
		<%  
			ArrayList<Employee> newJoinList = new ArrayList<Employee>();
			newJoinList = ManagerDao.newJoinedEmployees();
			for(Employee emp : newJoinList) {
				out.println(emp.geteName());
		%>
		<br/>
		<%
			}
		%>
		<br/>
	</div>
	<div>
		Details of all the employees of a department: <br/>
		<form action="DptMemberDetail" method="post">
			<%  
				ArrayList<Department> dmList = new ArrayList<Department>();
				dmList = AdminDao.getAllDepartments();
				for(Department dpt : dmList) {
					out.println(dpt.getdName());
			%>
			<input type="radio" name="dptlist" value="<%= dpt.getDid() %>">
			<br/>
			<%
				}
			%>
			<input type="submit" name="view" value="View"/>
		</form>
		<br/>
	</div>
	<div>
		Department which has least number of employees: <br/>
		<%  
			Department leastDept = new Department();
			leastDept = ManagerDao.dptWithLeastEmp();
			out.println(leastDept.getdName());
		%>
		<br/><br/>
	</div>
	<div>
		Manager who has highest number of reportees: <br/>
		<%  
			Employee highestMng = new Employee();
			highestMng = ManagerDao.mngWithMostRpt();
			out.println(highestMng.geteName());
		%>
		<br/><br/>
	</div>
	<div>
		Employees who belong to multiple departments <br/>
		<%  
			ArrayList<Employee> multipleList = new ArrayList<Employee>();
			multipleList = ManagerDao.multiBelongEmp();
			for(Employee emp : multipleList) {
				out.println(emp.geteName());
		%>
		<br/>
		<%
			}
		%>
		<br/>
	</div>
	<div>
		<form action="DrawSameSalary" method="post">
			<%  
				ArrayList<Employee> list = new ArrayList<Employee>();
				list = AdminDao.getAllEmployees();
				for(Employee emp : list) {
					out.println(emp.geteName());
			%>
			<input type="radio" name="emplist" value="<%= emp.getEid() %>">
			<br/>
			<%
				}
			%>
			<input type="submit" name="check" value="Check"/>
		</form>
		<br/>
	</div>
</body>
</html>