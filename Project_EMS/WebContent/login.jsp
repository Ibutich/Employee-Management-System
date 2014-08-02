
<html>
<head>
	<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="dao.*, java.util.*, model.*"%>
	<meta charset="utf-8">
	<title>Employee Master 1.0</title>
	<meta name="title" content="Employee Master 1.0" />
	<meta name="description" content="Umbrella Inc." />
	<link rel="image_src" href="/images/notify_better_image.png" />

	<meta content="http://www.thepetedesign.com/demos/onepage_scroll_demo.html" property="og:url" />
	<meta content="http://www.thepetedesign.com/images/onepage_scroll_image.png" property="og:image" />
	<link rel="shortcut icon" id="favicon" href="favicon.png"> 
	<meta name="author" content="Pete R.">
	<link rel="canonical" href="http://www.thepetedesign.com/demos/onepage_scroll_demo.html" />
	<link href='http://fonts.googleapis.com/css?family=Open+Sans:300,400,700' rel='stylesheet' type='text/css'>
	<link href='http://fonts.googleapis.com/css?family=Pacifico:400' rel='stylesheet' type='text/css'>
	<script type="text/javascript" src="Web-Contents//jquery-1.11.1.min.js"></script>
  <script type="text/javascript" src="Web-Contents//jquery.onepage-scroll.js"></script>
  <link href='onepage-scroll.css' rel='stylesheet' type='text/css'>
  <meta name="viewport" content="initial-scale=1, width=device-width, maximum-scale=1, minimum-scale=1, user-scalable=no">
  <style>
    html {
      height: 100%;
    }
    body {
      background: #3e3e3e;    <!-- this is light gray -->
      padding: 0;
      text-align: center;
      font-family: 'open sans';
      position: relative;
      margin: 0;
      height: 100%;
      -webkit-font-smoothing: antialiased;
    }
    
    .wrapper {
    	height: 100% !important;
    	height: 100%;
    	margin: 0 auto; 
    	overflow: hidden;
    }
    h1, h2 , #i{
      width: 100%;
      float: left;
    }
	
    h1 {
      margin-top: 25px;
      margin-bottom: 5px;
	  color: #000;
      font-size: 70px;
      letter-spacing: -4px;
      font-weight: 100;
    }
    h1 span{
      font-size: 26px;
      margin: 0 5px;
      text-transform: capitalize;
      background: rgba(0,0,0,0.85);
      display: inline-block;
      color: #282828;
      border-radius: 5px 5px;
      -webkit-border-radius: 5px 5px;
      -moz-border-radius: 5px 5px;
      text-shadow: 0 2px 8px rgba(0, 0, 0, 0.75);
      padding: 3px 10px;
    }
	span.inputMini{
	  font-size: 15px;
	  color: rgba(0,0,0,0.5)
	}
    h2, .inputInfo{
      color: #282828;
      font-weight: 100;
      margin-top: 0;
      margin-bottom: 10px;
    }
	.main section.page3 h1 {
      text-align: center;
      padding: 0;
      margin-bottom: 15px;
      font-size: 50px;
      letter-spacing: -1px;
      color: white;
    }
    .main section.page3 h2 {
      color: rgba(255,255,255,0.85);
      text-align: center;
      line-height: 160%;
      font-weight: 100;
    }
	.inputInfo{
	  font-size: 20px;
	}
    #f{
		float: right;
		padding: 50px;
	}
	.in{
		size: 35;
	}
	.help{
		font-size: 10px;
		color: red;
	}
	.box{
		position: left;
		required;
	}
    .pointer {
      color: #9b59b6;
      font-family: 'Pacifico', cursive;
      font-size: 30px;
      margin-top: 15px;
    }
    .main {
      float: left;
      width: 100%;
      margin: 0 auto;
    }
    .main h1 {
      padding:100px 50px;
      float: left;
      width: 100%;
      font-size: 45px;
      box-sizing: border-box;
      -webkit-box-sizing: border-box;
      -moz-box-sizing: border-box;
      font-weight: 100;
      color: white;
      margin: 0;
    }
    .main h1.demo1 {
      background: #1ABC9C;  <!-- light blue-->
    }
    .reload.bell {
      font-size: 12px;
      padding: 20px;
      width: 45px;
      text-align: center;
      height: 47px;
      border-radius: 50px;
      -webkit-border-radius: 50px;
      -moz-border-radius: 50px;
    } 
    .reload.bell #notification {
      font-size: 25px;
      line-height: 140%;
    }
    .reload, .btn{
      display: inline-block;
      border: 4px solid #A2261E;
      border-radius: 5px;
      -moz-border-radius: 5px;
      -webkit-border-radius: 5px;
      background: #CC3126;
      display: inline-block;
      line-height: 100%;
      padding: 0.7em;
      text-decoration: none;
      color: #fff;
      width: 100px;
      line-height: 140%;
      font-size: 17px;
      font-family: open sans;
      font-weight: bold;
    }
	.main section.page3 .reload, .main section.page3 .btn{
		border: 4px solid #fcf8d0;
	}
    .reload:hover{
      background: #444;
    }
    .btn {
      width: 200px;
      color: rgb(255, 255, 255);
      border: 4px solid rgb(0, 0, 0);
      background: rgba(3, 3, 3, 0.75);
    }
    .clear {
      width: auto;
    }
    .btn:hover, .btn:hover {
      background: #444;
    }
    .btns {
      width: 200px;
      margin: 20px auto;
    }
    .credit {
      text-align: center;
      color: rgba(0,0,0,0.5);
      padding: 10px;
      width: 410px;
      clear: both;
    }
    .credit a {
      color: rgba(0,0,0,0.85);
      text-decoration: none;
      font-weight: bold;
      text-align: center;
    }

    header {
      position: relative;
      z-index: 10;
    }
    .main section .page_container {
      position: relative;
      top: 10%;
      margin: 0 auto 0;
      max-width: 950px;
      z-index: 3;
    }
    .main section  {
      overflow: hidden;
    }
    
    .main section > img {
      position: absolute;
      max-width: 100%;
      z-index: 1;
    }
    
    .main section.page1 {
      background:rgb(234, 234, 234);
    }
    .main section.page1 h1 {
      text-align: left;
      padding: 0;
      margin-bottom: 15px;
      font-size: 70px;
      color: black;
    }
    .main section.page1 h2 {
      color: rgba(0,0,0,0.85);
      text-align: center;
      width: 200px;
      line-height: 160%;
    }
    .main section .page_container .btns {
      clear: both;
      float: left;
      text-align: center;
      width: 435px;
    }
    .main section .page_container .btns a{
      text-align: center;
    }
    .main section.page3 {
      background:url(Web-Contents//b03.png) no-repeat 156px -150px ;
    }
    .main section.page3 .page_container {
      overflow: hidden;
      width: 500px;
      right: -285px;
    }
    .main section.page3 h1 {
      text-align: left;
      padding: 0;
      margin-bottom: 0;
      font-size: 70px;
      letter-spacing: -1px;
      color: white;
    }
    .main section.page3 h2{
      color: rgba(0,0,0,0.85);
      text-align: left;
      line-height: 160%;
      font-weight: 100;
      font-size: 21px;
	  color: white;
    }
	.main section.page3 .inputInfo{
	  color: white;
	}
    body.disabled-onepage-scroll .onepage-wrapper  section {
      min-height: 100%;
      height: auto;
    }
    
    body.disabled-onepage-scroll .main section .page_container, body.disabled-onepage-scroll .main section.page3 .page_container  {
      padding: 20px;
      margin-top: 150px;
      -webkit-box-sizing: border-box;
      -moz-box-sizing: border-box;
      box-sizing: border-box;
    }
    body.disabled-onepage-scroll  section .page_container h1{
      text-align: center;
      font-size: 50px;
    }
    body.disabled-onepage-scroll section .page_container h2, body.disabled-onepage-scroll section .page_container .credit, body.disabled-onepage-scroll section .page_container .btns{
      text-align: center;
      width: 100%;
    }
    
    body.disabled-onepage-scroll .main section.page1 > img {
      position: absolute;
      width: 80%;
      left: 10%;
    }
    
    body.disabled-onepage-scroll .main section > img {
      position: relative;
      max-width: 80%;
      bottom: 0;
    }
    body.disabled-onepage-scroll code {
      width: 95%;
      margin: 0 auto 25px;
      float: none;
      overflow: hidden;
    }
    body.disabled-onepage-scroll .main section.page3 .page_container {
      width: 90%;
      margin-left: auto;
      margin-right: auto;
      right: 0;
    }
	</style>
	<script>
	  $(document).ready(function(){
      $(".main").onepage_scroll({
        sectionContainer: "section",
        responsiveFallback: 600,
        loop: true
      });
		});
		
	</script>
	<!-- using js for form validation -->
	<script type=text/javascript>
	  function validNonEmpty(inputField, helpText) {
        // See if the input value contains any text
        if (inputField.value.length == 0) {
          // The data is invalid, so set the help message
          if (helpText != null)
            helpText.innerHTML = "Please enter a value.";
          return false;
        }
        else {
          // The data is OK, so clear the help message
          if (helpText != null)
            helpText.innerHTML = "";
          return true;
        }
      }
	  function validForm(inputField1, inputField2){
		if (inputField1.value.length == 0 || inputField.value.length2 == 0) {
			return false;
		} else {
			return true;
		}
	  }
	  
	  function testAlert(){
		alert("testing alert is working");
	  }
	  
	  function submitForm1(form){
		if((document.getElementById("b1").checked || document.getElementById("b2").checked)&&
			validForm(document.getElementById("u"),document.getElementById("p"))){
			form.submit();
		} else {
			alert("Oops, you must choose your title");
		}
	  }
	  
	
	</script>
</head>
<body>
  <div class="wrapper">
	  <div class="main">
	    
      <section class="page1">
		
        <div class="page_container">
		  
		  <h2>I am a </h2>	
          <h1>Employee</h1>
		  
          <p class="credit">Both<a>Employee</a> and <a>Manager</a>, please login here</p>
		  
		  <form action="LoginPortal" name=form1 method=POST class="em" id="f">
		  <a class="inputInfo">Email: <a>
		  <input type="text" name="email" class="in" id="u" placeholder="Please enter your email"
			onblur="validNonEmpty(this,document.getElementById('name_help'))" size=26 required>
		  <span id="name_help" class="help"></span>
		  <br>
		  <a class="inputInfo">Password: <a>
		  <input type="password" name="password" class="in" id="p" placeholder="Please enter your password"
			onblur="validNonEmpty(this,document.getElementById('pwd_help'))" size=27 required>
		  <span id="pwd_help" class="help"></span>
		  <br>
		  <input type="radio" class="box" name="managerLogin" id="b1" value="manager"><span class="inputMini">Hey, I am a Manager</span>
		  <br>
		  <input type="radio" class="box" name="managerLogin" id="b2" value="employee"><span class="inputMini">I just like to be an Employee</span>
		  <br>
		  <div class="btns">
  	        <!--<input type="submit" name="submitBtn" value="Login" class="reload btn"> -->
			<button class="reload btn" onclick="submitForm1(this.form);">Login</button>
  	      </div>
		  </form>	
		  
  	    </div>
  	    <img src="Web-Contents/b02.png" alt="phones" id="i">
      </section>
	  
	  
	    <section class="page3">
	      <div class="page_container">
		  
		  <h2>I am a</h2>
          <h1>Administrator</h1>
          
		  <form action="admin.jsp" 
		  name=form2 method=POST class="ad" id="f">
		  <a class="inputInfo">Username: <a>
		  <input type="text" name="adminname" class="in" placeholder="Please enter your name"
			onblur="validNonEmpty(this,document.getElementById('name_help2'))" size=26 required>
		  <span id="name_help2" class="help"></span>
		  <br>
		  <a class="inputInfo">Password: <a>
		  <input type="password" name="adminpassword" class="in" placeholder="Please enter your password"
			onblur="validNonEmpty(this,document.getElementById('pwd_help2'))" size=27 required>
		  <span id="pwd_help2" class="help"></span>
		  <br>
		  <br>
		  <br>
		  <div class="btns">
  	        <input type="submit" name="submitBtn" class="reload btn" value="Login">
  	      </div>
		  </form>
          
  	      </div>
		</section>
    </div>
  </div>
</body>
</html>