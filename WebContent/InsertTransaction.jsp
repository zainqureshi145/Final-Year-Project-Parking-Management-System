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

        <script type="text/javascript">
            function validate()
            {
                var a = document.getElementById("a");
               // var b = document.getElementById("b");
                var c = document.getElementById("c");
                var d = document.getElementById("d");
               // var e = document.getElementById("e");
               // var f = document.getElementById("f");
                var g = document.getElementById("g");
                var h= document.getElementById("h");
                
                var valid = true;
                if(a.value.length<=0 || c.value.length<=0 || d.value.length<=0 ||  g.value.length<=0 || h.value.length<=0)
                    {
                        alert("Don't leave the field empty!");
                        valid = false;
                    }
                  //  else{
                  //      if(isNaN(f) || isNaN(g) || isNaN(h) || isNaN(i) || isNaN(j)){
                  //          alert("Enter a number");
                 //   valid = false;}
             //   }
                return valid;
            };

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
							
							Transaction ID
						</td>
					</tr>
					<tr>
						<td>
						<input type="text" name="tid" id="a" class="form-control field">
						</td>
					</tr>
					<tr>
						<td>
							<br>
						</td>
					</tr>
						<td>
							
							DateTime
						</td>
					</tr>
					<tr>
						<td>
						<input type="text" name="date" id="b" class="form-control field">
						</td>
					</tr>
					<tr>
						<td>
							<br>
						</td>
					</tr>
						<td>
							
							User ID
						</td>
					</tr>
					<tr>
						<td>
						<input type="text" name="uid" id="c" class="form-control field">
						</td>
					</tr>
					<tr>
						<td>
							<br>
						</td>
					</tr>
						<td>
							
							Parking Space ID
						</td>
					
					<tr>
						<td>
						<input type="text" name="pid" id="d" class="form-control field">
						</td>
					</tr>
					<tr>
						<td>
							<br>
						</td>
					</tr>
						<td>
							
							Arrival Time
						</td>
					
					<tr>
						<td>
						<input type="text" name="atime" id="e" class="form-control field">
						</td>
					</tr>
					<tr>
						<td>
							<br>
						</td>
					</tr>
					<td>
							
							Departure Time
						</td>
					
					<tr>
						<td>
						<input type="text" name="dtime" id="f" class="form-control field">
						</td>
					</tr>
					<tr>
						<td>
							<br>
						</td>
					</tr>
					<td>
							
							Payment
						</td>
					
					<tr>
						<td>
						<input type="text" name="pay" id="g" class="form-control field">
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
						<input type="text" name="cid" id="h" class="form-control field">
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
						<button name="button000" class="btn btn-primary">Insert</button>
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