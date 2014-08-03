<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="model.*, java.util.*, dao.*"%>
<div id="infoSection">

Department which has least number of employees: <br/>
<div id="infoList">
		<%  
			Department leastDept = new Department();
			leastDept = ManagerDao.dptWithLeastEmp();
			out.println(leastDept.getdName());
		%>
		<br/><br/>
</div>
</div>