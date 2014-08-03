<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="model.*, java.util.*, dao.*"%>
<div id="infoSection">
Draw Employees of the same Salary:
<div id="infoList">
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
</div>