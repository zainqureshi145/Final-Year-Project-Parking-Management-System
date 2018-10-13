
<html>
<head>
	<title>Parking Management System</title>
	<link rel="stylesheet" href="style/style.css">
	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">

	<!-- Optional theme -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css">
</head>
	<div class="container-fluid">
		<div class="row heading">
			<div class="col-lg-12">
				<h1 id="mainTitle">Parking Management System</h1>
			</div>
		</div>
	</div>
	<form action="InterfaceServlet" method="post">
	<%
   
	
	int f1P1Occupied=0;
	f1P1Occupied=(Integer)request.getAttribute("f1p1Occ"); 
	int f1P1Unoccupied=0;
	f1P1Unoccupied=(Integer)request.getAttribute("f1p1Uocc");
	int f1P2Occupied=0;
    f1P2Occupied=(Integer)request.getAttribute("f1p2Occ");
    int f1P2Unoccupied=0;
	f1P2Unoccupied=(Integer)request.getAttribute("f1p2UOcc");
	int f1P3Occupied=0;
	f1P3Occupied=(Integer)request.getAttribute("f1p3Occ");
	int f1P3Unoccupied=0;
	f1P3Unoccupied=(Integer)request.getAttribute("f1p3Uocc");
	int f1P4Occupied=0;
	f1P4Occupied=(Integer)request.getAttribute("f1p4Occ");
	int f1P4Unoccupied=0;
	f1P4Unoccupied=(Integer)request.getAttribute("f1p4Uocc");
	int f1P5Occupied=0;
	f1P5Occupied=(Integer)request.getAttribute("f1p5Occ");
	int f1P5Unoccupied=0;
	f1P5Unoccupied=(Integer)request.getAttribute("f1p5Uocc");
	
	
	int f2P1Occupied=0;
    f2P1Occupied=(Integer)request.getAttribute("f2p1Occ");
    int f2P1Unoccupied=0;
    f2P1Unoccupied=(Integer)request.getAttribute("f2p1Uocc");
    int f2P2Occupied=0;
	f2P2Occupied=(Integer)request.getAttribute("f2p2Occ");
	int f2P2Unoccupied=0;
	f2P2Unoccupied=(Integer)request.getAttribute("f2p2UOcc");
	int f2P3Occupied=0;
	f2P3Occupied=(Integer)request.getAttribute("f2p3Occ");
	int f2P3Unoccupied=0;
	f2P3Unoccupied=(Integer)request.getAttribute("f2p3Uocc");
	int f2P4Occupied=0;
	f2P4Occupied=(Integer)request.getAttribute("f2p4Occ");
	int f2P4Unoccupied=0;
    f2P4Unoccupied=(Integer)request.getAttribute("f2p4Uocc");
    int f2P5Occupied=0;
	f2P5Occupied=(Integer)request.getAttribute("f2p5Occ");
	int f2P5Unoccupied=0;
	f2P5Unoccupied=(Integer)request.getAttribute("f2p5Uocc");
	
	
	
	
	
	
	%>
	<div class="container">
		<!-- Floor 1 -->
		<div class="row">
			<h1 id="floor1">Floor 1</h1>
			<hr>
		</div>

		<div class="row">
			<%for(int i=0;i<f1P1Occupied;i++){ %>
			<div class="col-sm-2">
			<div class="space">
				<p class="status-allocated">Allocated Space</p>
				<p class="status-allocated">Parking Space 1</p>
			</div>
			<div class="col-sm-1">
			<input type="hidden" name="hdnbt" />
			<button class="btn btn-info" name="button11" value="1" onclick="{hdnbt.value=this.value;}"  >Show Info</button>
			
			<div>
			
			<button class="btn btn-primary" name="button01" value="1" onclick="{hdnbt.value=this.value;}"  >Show History</button>
			</div>
			</div>
			</div>
			<%}%>
			<%for(int i=0;i<f1P1Unoccupied;i++){%>
			<div class="col-sm-2">
			<div class="unallocated-space">
				<p class="status">Unallocated Space</p>
				<p class="status-allocated">Parking Space 1</p>
				
			</div>
			<div class="col-sm-1">
			
			<button class="btn btn-primary" name="button001" value="1" onclick="{hdnbt2.value=this.value;}"  >Show History</button>
			</div>
			</div>
			<%} %>
			<%for(int i=0;i<f1P2Occupied;i++){ %>
			<div class="col-sm-2">
			<div class="space">
				<p class="status-allocated">Allocated Space</p>
				<p class="status-allocated">Parking Space 2</p>
			</div>
			<div class="col-sm-1">
			
			<button class="btn btn-info" name="button2" value="2" onclick="{hdnbt.value=this.value;}"  >Show Info</button>
			<div>
			
			<button class="btn btn-primary" name="button02" value="2" onclick="{hdnbt.value=this.value;}"  >Show History</button>
			</div>
			</div>
			</div>
			<%}%>
			<%for(int i=0;i<f1P2Unoccupied;i++){%>
			<div class="col-sm-2">
			<div class="unallocated-space">
				<p class="status">Unallocated Space</p>
				<p class="status-allocated">Parking Space 2</p>
				
			</div>
			<div class="col-sm-1">
			
			<button class="btn btn-primary" name="button002" value="2" onclick="{hdnbt.value=this.value;}"  >Show History</button>
			</div>
			</div>
			<%} %>
			<%for(int i=0;i<f1P3Occupied;i++){ %>
			<div class="col-sm-2">
			<div class="space">
				<p class="status-allocated">Allocated Space</p>
				<p class="status-allocated">Parking Space 3</p>
			</div>
			<div class="col-sm-1">
			
			<button class="btn btn-info" name="button3" value="3" onclick="{hdnbt.value=this.value;}"  >Show Info</button>
			<div>
			
			<button class="btn btn-primary" name="button03" value="3" onclick="{hdnbt.value=this.value;}"  >Show History</button>
			</div>
			</div>
			</div>
			<%}%>
			<%for(int i=0;i<f1P3Unoccupied;i++){%>
			<div class="col-sm-2">
			<div class="unallocated-space">
				<p class="status">Unallocated Space</p>
				<p class="status-allocated">Parking Space 3</p>
			</div>
			<div class="col-sm-1">
			
			<button class="btn btn-primary" name="button003" value="3" onclick="{hdnbt.value=this.value;}"  >Show History</button>
			</div>
			</div>
			<%} %>
			<%for(int i=0;i<f1P4Occupied;i++){ %>
			<div class="col-sm-2">
			<div class="space">
				<p class="status-allocated">Allocated Space</p>
				<p class="status-allocated">Parking Space 4</p>
			</div>
			<div class="col-sm-1">
			
			<button class="btn btn-info" name="button4" value="4" onclick="{hdnbt.value=this.value;}"  >Show Info</button>
			<div>
			
			<button class="btn btn-primary" name="button04" value="4" onclick="{hdnbt.value=this.value;}"  >Show History</button>
			</div>
			</div>
			</div>
			<%}%>
			<%for(int i=0;i<f1P4Unoccupied;i++){%>
			<div class="col-sm-2">
			<div class="unallocated-space">
				<p class="status">Unallocated Space</p>
				<p class="status-allocated">Parking Space 4</p>
			</div>
			<div class="col-sm-1">
			
			<button class="btn btn-primary" name="button004" value="4" onclick="{hdnbt.value=this.value;}"  >Show History</button>
			</div>
			</div>
			<%} %>
			<%for(int i=0;i<f1P5Occupied;i++){ %>
			<div class="col-sm-2">
			<div class="space">
				<p class="status-allocated">Allocated Space</p>
				<p class="status-allocated">Parking Space 5</p>
			</div>
			<div class="col-sm-1">
			
			<button class="btn btn-info" name="button5" value="5" onclick="{hdnbt.value=this.value;}"  >Show Info</button>
			<div>
		   
			<button class="btn btn-primary" name="button05" value="5" onclick="{hdnbt.value=this.value;}"  >Show History</button>
			</div>
			</div>
			</div>
			<%}%>
			<%for(int i=0;i<f1P5Unoccupied;i++){%>
			<div class="col-sm-2">
			<div class="unallocated-space">
				<p class="status">Unallocated Space</p>
				<p class="status-allocated">Parking Space 5</p>
			</div>
			<div class="col-sm-1">
			
			<button class="btn btn-primary" name="button005" value="5" onclick="{hdnbt.value=this.value;}"  >Show History</button>
			</div>
			</div>
			<%} %>
		


		</div> <!-- Ending Row -->
		<hr>

		<!-- Floor 2 -->

		<div class="row">
			<h1 id="floor1">Floor 2</h1>
			<hr>
		</div>

		<div class="row">
			<%for(int i=0;i<f2P1Occupied;i++){ %>
			<div class="col-sm-2">
			<div class="space">
				<p class="status-allocated">Allocated Space</p>
				<p class="status-allocated">Parking Space 1</p>
			</div>
			<div class="col-sm-1">
			
			<button class="btn btn-info" name="button21" value="1" onclick="{hdnbt.value=this.value;}"  >Show Info</button>
			<div>
			
			<button class="btn btn-primary" name="button021" value="1" onclick="{hdnbt.value=this.value;}"  >Show History</button>
			</div>
			</div>
			</div>
			<% }%>
			<%for(int i=0;i<f2P1Unoccupied;i++){%>
			<div class="col-sm-2">
			<div class="unallocated-space">
				<p class="status">Unallocated Space</p>
				<p class="status-allocated">Parking Space 1</p>
			</div>
			<div class="col-sm-1">
			
			<button class="btn btn-primary" name="button0021" value="1" onclick="{hdnbt.value=this.value;}"  >Show History</button>
			</div>
			</div>
			<% } %>
			<% for(int i=0;i<f2P2Occupied;i++){ %>
			<div class="col-sm-2">
			<div class="space">
				<p class="status-allocated">Allocated Space</p>
				<p class="status-allocated">Parking Space 2</p>
			</div>
			<div class="col-sm-1">
			
			<button class="btn btn-info" name="button22" value="2" onclick="{hdnbt.value=this.value;}"  >Show Info</button>
			<div>
			
			<button class="btn btn-primary" name="button022" value="2" onclick="{hdnbt.value=this.value;}"  >Show History</button>
			</div>
			</div>
			</div>
			<%}%>
			<%for(int i=0;i<f2P2Unoccupied;i++){%>
			<div class="col-sm-2">
			<div class="unallocated-space">
				<p class="status">Unallocated Space</p>
				<p class="status-allocated">Parking Space 2</p>
			</div>
			<div class="col-sm-1">
			
			<button class="btn btn-primary" name="button0022" value="2" onclick="{hdnbt.value=this.value;}"  >Show History</button>
			</div>
			</div>
			<%} %>
			<%for(int i=0;i<f2P3Occupied;i++){ %>
			<div class="col-sm-2">
			<div class="space">
				<p class="status-allocated">Allocated Space</p>
				<p class="status-allocated">Parking Space 3</p>
			</div>
			<div class="col-sm-1">
			
			<button class="btn btn-info" name="button23" value="3" onclick="{hdnbt.value=this.value;}"  >Show Info</button>
			<div>
			
			<button class="btn btn-primary" name="button023" value="3" onclick="{hdnbt.value=this.value;}"  >Show History</button>
			</div>
			</div>
			</div>
			<%}%>
			<%for(int i=0;i<f2P3Unoccupied;i++){%>
			<div class="col-sm-2">
			<div class="unallocated-space">
				<p class="status">Unallocated Space</p>
				<p class="status-allocated">Parking Space 3</p>
			</div>
			<div class="col-sm-1">
			
			<button class="btn btn-primary" name="button0023" value="3" onclick="{hdnbt.value=this.value;}"  >Show History</button>
			</div>
			</div>
			<%} %>
			<%for(int i=0;i<f2P4Occupied;i++){ %>
			<div class="col-sm-2">
			<div class="space">
				<p class="status-allocated">Allocated Space</p>
				<p class="status-allocated">Parking Space 4</p>
			</div>
			<div class="col-sm-1">
			
			<button class="btn btn-info" name="button24" value="4" onclick="{hdnbt.value=this.value;}"  >Show Info</button>
			<div>
		
			<button class="btn btn-primary" name="button024" value="4" onclick="{hdnbt.value=this.value;}"  >Show History</button>
			</div>
			</div>
			</div>
			<%}%>
			<%for(int i=0;i<f2P4Unoccupied;i++){%>
			<div class="col-sm-2">
			<div class="unallocated-space">
				<p class="status">Unallocated Space</p>
				<p class="status-allocated">Parking Space 4</p>
			</div>
			<div class="col-sm-1">
			
			<button class="btn btn-primary" name="button0024" value="4" onclick="{hdnbt.value=this.value;}"  >Show History</button>
			</div>
			</div>
			<%} %>
			<%for(int i=0;i<f2P5Occupied;i++){ %>
			<div class="col-sm-2">
			<div class="space">
				<p class="status-allocated">Allocated Space</p>
				<p class="status-allocated">Parking Space 5</p>
			</div>
			<div class="col-sm-1">
			
			<button class="btn btn-info" name="button25" value="5" onclick="{hdnbt.value=this.value;}"  >Show Info</button>
			<div>
			
			<button class="btn btn-primary" name="button025" value="5" onclick="{hdnbt.value=this.value;}"  >Show History</button>
			</div>
			</div>
			</div>
			<%}%>
			<%for(int i=0;i<f2P5Unoccupied;i++){%>
			<div class="col-sm-2">
			<div class="unallocated-space">
				<p class="status">Unallocated Space</p>
				<p class="status-allocated">Parking Space 5</p>
			</div>
			<div >
		
			<button class="btn btn-primary" name="button0025" value="5" onclick="{hdnbt.value=this.value;}"  >Show History</button>
			</div>
			</div>
			<%} %>


		</div> <!-- Ending Row -->
		<hr>
	</div> <!-- Ending Container -->
	</form>
<body>
	<!-- ending main container -->
	<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>	
</body>
</html>