<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>

	<title>Parking Management System</title>
	<link rel="stylesheet" href="css/foundation.css" />
	<link href="<c:url value="/css/normalize.css"/>" rel="stylesheet">
    <script src="js/vendor/modernizr.js"></script>
    <link rel="stylesheet" href="css/style.css" media="screen" type="text/css" />
    
    <script type="text/javascript">
            function validate()
            {
                var a = document.getElementById("a");
                var b = document.getElementById("b");
                var check=/^[A-Za-z]\w{7,14}$/;
                var c = document.getElementById("a").value;
                var d = document.getElementById("b").value;
                
                var valid = true;
                if(a.value.length<=0 || b.value.length<=0  )
                    {
                        alert("Don't leave the field empty!");
                        valid = false;
                    }
                    else{
                        if(c.value.match(check)|| d.value.match(check) ){
                           // alert("Enter a number");
                    valid = true;}
                }
                return valid;
            };
        </script>
        
</head>
<body>		
  <span href="#" class="button" id="toggle-login">LOG IN</span>
<div id="login">
  <div id="triangle"></div>
  <form action="LoginServlet" method="post" onsubmit="return validate()">
    <input type="text" name = "uname" class="form-control field" id="a" placeholder="UserName" />
    <input type="password" name="pass" class="form-control field" id="b" placeholder="Password" />
    <button class="button round">Login</button>
  </form>
  <script src='http://codepen.io/assets/libs/fullpage/jquery.js'></script>
  <script src="js/index.js"></script>
  </div>
</body>
</html>