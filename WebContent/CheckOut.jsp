<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
	<title>Parking Management System</title>
	<link rel="stylesheet" href="style/style.css" type="text/css">
	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">

	<!-- Optional theme -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css">
   
  
   <link rel="stylesheet" href="css/jquery.datetimepicker.css" type="text/css">
   <script src="js/jquery.js"></script>
   <script src="js/jquery.datetimepicker.js"></script>
    
    <script>
    $(document).ready(function() {
      $("#datetimepicker").datetimepicker();
    });
    
    </script>
</head>

<body>
	<div class="container-fluid">
		<div class="row heading">
			<div class="col-lg-12">
				<h1 id="mainTitle">Welcome to Parking Management system</h1>
			</div>
		</div>

		<hr>

		<div class="row">
			<div class="col-lg-12">
				<br>
				<br>
			</div>
		</div>

		<div class="row">
			<div class="col-lg-3">
				
			</div>

			<div class="col-lg-1">
				<img src="img/pms.png" alt="PMS Image">
			</div>

			<div class="col-lg-1">
				
			</div>

			<div class="col-lg-6">
				<form action="InsertTransactionServlet" method="post" onsubmit="return validate()">
				<table>
					
							<tr>
							<td>		
							Transaction ID
						</td>
					
					<tr>
						<td>
						<input type="text" name="tid" id="g" class="form-control field">
						</td>
					</tr>
					<tr>
						<td>
							<br>
								
							Departure Time
						</td>
					
					<tr>
						<td>
						<input id="datetimepicker" name="datetime" type="text" class="form-control field" >
						</td>
					</tr>
					<tr>
						<td>
							<br>
						</td>
					</tr>
						<tr>
						<td>
						<button class="btn btn-primary" name="button0">Check Payment</button>
						</td>
					</tr>
				</table>
				</form>
				
			</div>
			<div class="col-lg-1">
				
			</div>
		</div>
		
		<div class="empty">
			
		</div>

		<div class="row footer">
			<div class="col-lg-12">
				<h3>
					<span class="glyphicon glyphicon-phone-alt"></span>
					Contact Us
				</h3>
				<p>
					abc@ypopmail.com
					<br>
					xxx-xxx-xxx
				</p>
			</div>
		</div>
	
	<!-- ending main container -->
	<!-- Latest compiled and minified JavaScript -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>	
</body>
</html>