<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="dao.*, java.util.*, model.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>Admin</title>
<link rel="stylesheet" type="text/css" media="screen" href="style.css">
<link rel="stylesheet" type="text/css" media="screen" href="simple_menu.css">
</head>
<style>
body{
	background-color: #ddddff;
}
</style>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script>
$(document).ready(function(){
	$("#addE").click(function(){
    $(".bottomTable").load("addEmp.jsp");
  });
	$("#delE").click(function(){
	    $(".bottomTable").load("delEmp.jsp");
	  });
	$("#upEmp").click(function(){
	    $(".bottomTable").load("upEmp.jsp");
	  });
	$("#addD").click(function(){
	    $(".bottomTable").load("addDpt.jsp");
	  });
	$("#delD").click(function(){
		$(".bottomTable").load("delDpt.jsp");
	});
	$("#upEmp").click(function(){
		$(".bottomTable").load("upDpt.jsp");
	});
	$("#designate").click(function(){
		$(".bottomTable").load("designateDpt.jsp");
	});
});
</script>

<body>
<div class="header">
    
    <div id="site_title"><a href="index.html"><img src="img/Logo Marlabs_0.png" width= "188" height="95" /></a>

    <!-- Main Menu -->
    
    <ol id="menu">
             <li><a href="index.html" style="background-color:#DCE1F5" >Home</a>
        
             </li><!-- END sub menu -->
        
        <li><a href="#" style="background-color:#DCE1F5">EMPLOYEE</a>
        
              <!-- sub menu -->
              <ol>     
                <li><p id="addE">ADD</p></li>
                <li><p id="delE">DELETE</p></li>
                <li><p id="upEmp">UPDATE</p></li>
              </ol>
        </li><!-- END sub menu -->
        
        <li><a href="#" style="background-color:#DCE1F5">Department</a>
        	<ol>     
                <li><p id="addD">ADD</p></li>
                <li><p id="delD">DELETE</p></li>
                <li><p id="showD">UPDATE</p></li>
        	</ol>
        </li>
        <li><a href="#" style="background-color:#DCE1F5">Designate</a>
        	<ol>     
                <li><p id="designate">DEPARTMENT</p></li>
        	</ol>
        </li>
    </ol>
    
    </div>
    </div><!-- END header -->
    <div class="centerLabel">
    </div>
<div class="bottomTable">
</div>
</body>
</html>