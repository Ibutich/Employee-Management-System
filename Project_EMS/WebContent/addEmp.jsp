<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>addEmp</title>
<link rel="stylesheet" href="bootstrap.css"/>
<link rel="stylesheet" href="bootstrapValidator.css"/>
</head>
<body>
	<!-- <form class="formStyle" action="AddEmployee" method="post" accept-charset="utf-8">
		Name: <input type="text" name="ename" required/><br/>
		Password: <input type="text" name="pwd" required/><br/>
		Address: <input type="text" name="add"/><br/>
		Phone: <input type="text" name="phone"/><br/>
		Email: <input type="email" name="email" required/><br/>
		Salary: <input type="text" name="salary"/><br/>
		Is Manager: <input type="radio" name="ismanager" value="1">Yes 
		<input type="radio" name="ismanager" value="0">No<br/>
		Manager: <input type="text" name="manager" /><br/>
		<input type="submit" name="add" value="Add"/>
	</form>
	<form action="admin.jsp" method="get">
		<input type="submit" name="back" value="Back"/>
	</form> -->
	<div class="col-lg-8 col-lg-offset-2">
                    <div class="page-header">
                        <h2>Add Employee</h2>
                    </div>

                    <form id="defaultForm" method="post" class="form-horizontal" action="AddEmployee" accept-charset="utf-8">
                        <div class="form-group">
                            <label class="col-lg-3 control-label">Name</label>
                            <div class="col-lg-5">
                                <input type="text" class="form-control" name="ename" required />
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-lg-3 control-label">Email address</label>
                            <div class="col-lg-5">
                                <input type="text" class="form-control" name="email" required />
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-lg-3 control-label">Password</label>
                            <div class="col-lg-5">
                                <input type="text" class="form-control" name="pwd" required />
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-lg-3 control-label">Address</label>
                            <div class="col-lg-5">
                                <input type="text" class="form-control" name="add" />
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-lg-3 control-label">Phone</label>
                            <div class="col-lg-5">
                                <input type="text" class="form-control" name="phone" />
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-lg-3 control-label">Salary</label>
                            <div class="col-lg-5">
                                <input type="text" class="form-control" name="salary" />
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-lg-3 control-label">Is Manager</label>
                        <div class="col-lg-5">
                                <div class="radio">
                                    <label>
                                        <input type="radio" name="ismanager" value="1" /> Yes
                                    </label>
                                </div>
                                <div class="radio">
                                    <label>
                                        <input type="radio" name="ismanager" value="0" /> No
                                    </label>
                                </div>
                          </div>
                          </div>
                          <div class="form-group">
                            <label class="col-lg-3 control-label">Manager</label>
                            <div class="col-lg-5">
                                <input type="text" class="form-control" name="manager" />
                            </div>
                        </div>
                       
                   <div class="form-group">
                      <div class="col-lg-9 col-lg-offset-3">
                   		<button type="submit" class="btn btn-primary" name="signup" value="Sign up">Add</button>
                   		</div>
                   	</div>
             </form>
       </div>
</body>
</html>