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
					<br>
					<tr>
						<td>
							
							User ID
						</td>
					</tr>
					<tr>
						<td>
						<input type="text" name="uid" id="a"  class="form-control field">
						</td>
					</tr>
					<tr>
						<td>
							<br>
						</td>
					</tr>
						<td>
							
							Name
						</td>
					</tr>
					<tr>
						<td>
						<input type="text" name="name" id="b" class="form-control field">
						</td>
					</tr>
					<tr>
						<td>
							<br>
						</td>
					</tr>
						<td>
							
							Email
						</td>
					</tr>
					<tr>
						<td>
						<input type="text" name="email" id="c" class="form-control field">
						</td>
					</tr>
					<tr>
						<td>
							<br>
						</td>
					</tr>
						<td>
							
							Phone
						</td>
					
					<tr>
						<td>
						<input type="text" name="phone" id="d" class="form-control field">
						</td>
					</tr>
					<tr>
						<td>
							<br>
						</td>
					</tr>
						<td>
							
							Premium User
						</td>
					
					<tr>
						<td>
						<input type="text" name="puser" placeholder="'Yes' or 'No'" id="e" class="form-control field">
						</td>
					</tr>
					<tr>
						<td>
							<br>
						</td>
					</tr>
					<td>
							
							Car ID
						</td>
					
					<tr>
						<td>
						<input type="text" name="cid" id="f" class="form-control field">
						</td>
					</tr>
					<tr>
						<td>
							<br>
						</td>
					</tr>
					<td>
							
							Registration No
						</td>
					
					<tr>
						<td>
						<input type="text" name="reg" id="g" class="form-control field">
						</td>
					</tr>
					<tr>
						<td>
							<br>
						</td>
					</tr>
					<td>
							
							Car Type
						</td>
					
					<tr>
						<td>
						<input type="text" name="ctype" id="h" class="form-control field">
						</td>
					</tr>
					<tr>
						<td>
							<br>
						</td>
					</tr>
					
					<tr>
					
						<td>
						<br>
							
							Car Model
						</td>
					
					<tr>
						<td>
						<input type="text" name="model" id="i" class="form-control field">
						</td>
					</tr>
					<tr>
						<td>
							<br>
								
							Parking ID
						</td>
					
					<tr>
						<td>
						<input type="text" name="pid" id="g" class="form-control field">
						</td>
					</tr>
					<tr>
						<td>
							<br>
									
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
								
							Arrival Time
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
						<button class="btn btn-primary" name="button1">Insert Information</button>
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