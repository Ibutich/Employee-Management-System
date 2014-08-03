<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="model.*, java.util.*, dao.*"%>
<div id="infoSection">

		Newly joined employees: <br/>
		<div id="infoList">
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