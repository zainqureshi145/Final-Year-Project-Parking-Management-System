<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<html>
<head>
<link rel="stylesheet" href="css/foundation.css" />
<link rel="stylesheet" href="css/normalize.css"/>
<script src="js/vendor/modernizr.js"></script>
	<title>Parking Management System</title>
	<link rel="stylesheet" href="style/style.css" type="text/css">
</head>
<body>
<h3 id="mainTitle">Welcome to Parking Management System</h3>
<br>
<br>
<center><h4>Check Real Time Status</h4></center>
<div class="panel clearfix callout radius">
<form action="CheckServlet" method="post">
<button class="button success expand round right" name="button1" value="screen">Screen</button>
</form>
<form action="PayServlet" method="post">
<button class="button alert expand round left" name="button1" value="payment">Payments</button>
</form>
</div>

<center><h4>Detailed Information</h4></center>

<div class="panel clearfix">
<div class="large-12 text-center">
<form action="HomeServlet" method="POST">
<button class="button small round" name="button1" value="car">Cars</button>
<button class="button small round" name="button2" value="ps">Occupied</button>
<button class="button small round" name="button3" value="us">UnOccupied</button>
<button class="button small round" name="button4" value="sys">System</button>
<button class="button small round" name="button5" value="user">Users</button>
<button class="button small round" name="button000" value="user">Reservations</button>
</form>
</div>
</div>

<center><h4>Insert Data</h4></center>
<div class="panel clearfix">
<div class="large-12 text-center">
<form action="HomeServlet" method="POST">
<button class="button small round" name="button11" value="main">Main Screen</button>
<button class="button small round" name="button7" value="insert">Insert Info</button>
<button class="button small round" name="button101" value="main">Check Out</button>
<button class="button small round" name="button8" value="insertps">Insert Parking Space</button>
<button class="button small round" name="button9" value="insertuser">Insert Users</button>
<button class="button small round" name="button6" value="user">Insert in Car</button>
<button class="button small round" name="button10" value="insertps">Insert Transaction</button>	
<button class="button small round" name="button00" value="search">Search</button>
</form>	
</div>
</div>

<div class="panel callout">
<center>
<h3>
<span class="glyphicon glyphicon-phone-alt"></span>
<font>Contact Us</font>
</h3>
<p>
<font>abc@ypopmail.com</font>
<br>
<font>xxx-xxx-xxx</font>
</p>
</center>
</div>	
</body>
</html>