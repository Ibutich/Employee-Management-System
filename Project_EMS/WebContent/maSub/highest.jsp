<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="model.*, java.util.*, dao.*"%>
<div id="infoSection">
Manager who has highest number of reportees: <br/>
<div id="infoList">
		<%  
			Employee highestMng = new Employee();
			highestMng = ManagerDao.mngWithMostRpt();
			out.println(highestMng.geteName());
		%>
		<br/><br/>
</div>
</div>