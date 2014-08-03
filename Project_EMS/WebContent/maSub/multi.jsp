<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="model.*, java.util.*, dao.*"%>
<div id="infoSection">
Employees who belong to multiple departments <br/>
<div id="infoList">
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
</div>