<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="model.*, java.util.*, dao.*"%>
<div id="infoSection">
Details of all the employees of a department: <br/>
<div id="infoList">
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
</div>