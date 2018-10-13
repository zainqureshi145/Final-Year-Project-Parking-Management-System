<%@ page import= "java.io.PrintWriter" %>
<html>
<head>
	<title>Parking Management System</title>
	<link rel="stylesheet" href="style/style.css">
	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">

	<!-- Optional theme -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css">
</head>
<%
 

    int slot1floor1=(Integer)request.getAttribute("slot1floor1");
    int slot2floor1=(Integer)request.getAttribute("slot2floor1");
    int slot3floor1=(Integer)request.getAttribute("slot3floor1");
    int slot4floor1=(Integer)request.getAttribute("slot4floor1");
    int slot5floor1=(Integer)request.getAttribute("slot5floor1");
    
    int slot1floor2=(Integer)request.getAttribute("slot1floor2");
    int slot2floor2=(Integer)request.getAttribute("slot2floor2");
    int slot3floor2=(Integer)request.getAttribute("slot3floor2");
    int slot4floor2=(Integer)request.getAttribute("slot4floor2");
    int slot5floor2=(Integer)request.getAttribute("slot5floor2");


%>
	<div class="container-fluid">
		<div class="row heading">
			<div class="col-lg-12">
				<h1 id="mainTitle">Parking Management System</h1>
			</div>
		</div>
	</div>
	<div class="container">
		<!-- Floor 1 -->
		<div class="row">
			<h1 id="floor1">Floor 1</h1>
			<hr>
		</div>

		<div class="row">
			
			<div class="col-sm-2">
			<div class="unallocated-space">
				<p class="status">Unallocated Space</p>
				<p class="status">ParkingSpace 1</p>
			</div>
		     <p class="status">Total payments =<%out.println(slot1floor1*10);  %></p>
			</div>
			<div class="col-sm-2">
			<div class="unallocated-space">
				<p class="status">Unallocated Space</p>
				<p class="status">ParkingSpace 2</p>
			</div>
			<p class="status">Total payments =<%out.println(slot2floor1*10);  %></p>
			</div>
			<div class="col-sm-2">
			<div class="unallocated-space">
				<p class="status">Unallocated Space</p>
				<p class="status">ParkingSpace 3</p>
			</div>
			<p class="status">Total payments =<%out.println(slot3floor1*10);  %></p>
			</div>
			<div class="col-sm-2">
			<div class="space">
				<p class="status-allocated">Allocated Space</p>
				<p class="status">ParkingSpace 4</p>
			</div>
			<p class="status">Total payments =<%out.println(slot4floor1*10);  %></p>
			</div>
			<div class="col-sm-2">
			<div class="unallocated-space">
				<p class="status">Unallocated Space</p>
				<p class="status">ParkingSpace 5</p>
			</div>
			<p class="status">Total payments =<%out.println(slot5floor1*10);  %></p>
			</div>
			


		</div> <!-- Ending Row -->
		<hr>

		<!-- Floor 2 -->

		<div class="row">
			<h1 id="floor1">Floor 2</h1>
			<hr>
		</div>

		<div class="row">
			
			<div class="col-sm-2">
			<div class="unallocated-space">
				<p class="status">Unallocated Space</p>
				<p class="status">ParkingSpace 1</p>
			</div>
			<p class="status">Total payments =<%out.println(slot1floor2*10);  %></p>
			</div>
			<div class="col-sm-2">
			<div class="unallocated-space">
				<p class="status">Unallocated Space</p>
				<p class="status">ParkingSpace 2</p>
			</div>
			<p class="status">Total payments =<%out.println(slot2floor2*10);  %></p>
			</div>
			<div class="col-sm-2">
			<div class="unallocated-space">
				<p class="status">Unallocated Space</p>
				<p class="status">ParkingSpace 3</p>
			</div>
			<p class="status">Total payments =<%out.println(slot3floor2*10);  %></p>
			</div>
			<div class="col-sm-2">
			<div class="unallocated-space">
				<p class="status">Unallocated Space</p>
				<p class="status">ParkingSpace 4</p>
			</div>
			<p class="status">Total payments =<%out.println(slot4floor2*10);  %></p>
			</div>
			<div class="col-sm-2">
			<div class="unallocated-space">
				<p class="status">Unallocated Space</p>
				<p class="status">ParkingSpace 5</p>
			</div>
			<p class="status">Total payments =<%out.println(slot5floor2*10);  %></p>
			</div>

			


		</div> <!-- Ending Row -->
		<hr>
	</div> <!-- Ending Container -->
<body>
	<!-- ending main container -->
	<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>	
</body>
</html>