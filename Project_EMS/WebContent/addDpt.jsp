<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>addDpt</title>
<link rel="stylesheet" href="bootstrap.css"/>
<link rel="stylesheet" href="bootstrapValidator.css"/>
</head>
<body>
	<!-- <form class="formStyle" action="AddDepartment" method="post" accept-charset="utf-8">
		Name: <input type="text" name="dname" required/><br/>
		<input type="submit" name="add" value="Add"/>
	</form>
	<form action="admin.jsp" method="get">
		<input type="submit" name="back" value="Back"/>
	</form> -->
	<div class="col-lg-8 col-lg-offset-2">
                    <div class="page-header">
                        <h2>Add Department</h2>
                    </div>

                    <form id="defaultForm" method="post" class="form-horizontal" action="AddDepartment">
                        <div class="form-group">
                            <label class="col-lg-3 control-label">Name</label>
                            <div class="col-lg-5">
                                <input type="text" class="form-control" name="ename" required />
                            </div>
                        </div>
                        <div class="form-group">
                      <div class="col-lg-9 col-lg-offset-3">
                   		<button type="submit" class="btn btn-primary" name="signup" value="Sign up">Add</button>
                   		</div>
                   	</div>
                    </form>
</body>
</html>