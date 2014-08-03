<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="dao.*, java.util.*, model.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update Employee</title>
<link rel="stylesheet" type="text/css" href="UpdEm.css" media="screen" />
<link rel="stylesheet" href="bootstrap.css"/>
<link rel="stylesheet" href="bootstrapValidator.css"/>
<script type="text/javascript" src="UpdEm.js"></script>
</head>
<body>
<div class="col-lg-8 col-lg-offset-2">
<div class="page-header">
                        <h2>Update Employee</h2>
                    </div>
	<form id="defaultForm" method="post" class="form-horizontal" action="UpdateEmpConfirm">
	<!-- <form action="UpdateEmpConfirm" method="post" class="form"> -->
		<%  
			ArrayList<UpdateReq> list = new ArrayList<UpdateReq>();
			list = AdminDao.getUpdateReqs();
			for(UpdateReq upr : list) {
		%>
		<div class="form-group">
                            <div class="col-lg-5">
                                <div class="checkbox">
                                    <label>
                                        <input class="inputField" type="checkbox" name="uplist" value="<%= upr.getUpid() %>"/><%= upr.geteName() %>
                                    </label>
                                </div>
							</div>
				</div>
		<br/>
		<%
			}
		%>
		
		<input type="image" name="update" class="updateBtn" src="updateBtn.png" width="25px" height="25px" />
	</form>

</body>
</html>