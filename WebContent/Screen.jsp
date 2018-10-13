<%@ page import="java.io.IOException" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import= "java.io.PrintWriter" %>

<%@ page import="javax.servlet.ServletException" %>


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
	<%
String driver;
String url;
String username=null;
String password=null;
Statement stmt;
String status="unoccupied";
String status2="occupied";
Connection conn=null;
ResultSet rs=null;
int count=0;
int count2=0;
int floor=1;
int floor2=2;
int count3=0;
int count4=0;
//load drivers
		ServletContext context = getServletContext();
		 driver = context.getInitParameter("jdbc.driver");
		 url = context.getInitParameter("jdbc.url");
		 username = context.getInitParameter("jdbc.username");
		password = context.getInitParameter("jdbc.password");
		
		try {
			Class.forName(driver);
		} catch (ClassNotFoundException e) {
			System.out.println("ClassNotFoundException");
			e.printStackTrace();
		}
		
		try {
			 conn = DriverManager.getConnection(url,username,password);
		} catch (SQLException e) {
			System.out.println("Error may be :UserID and Password does not match");
			e.printStackTrace();
		}  
%>
<%String sql = "SELECT parking_space.floor,parking_space.parking_Slot,parking_space.status FROM parking_space where parking_space.status='"+status+"' and floor='"+floor+"'";
try {
	stmt = conn.createStatement();
	rs =  stmt.executeQuery(sql);
	count=rs.getRow();
	
} catch (SQLException e1) {
	// TODO Auto-generated catch block
	e1.printStackTrace();
}

try {
	while(rs.next()){
		
		rs.getInt("Floor");
		rs.getInt("Parking_Slot");
		rs.getString("Status");
		count++;
		
		
		
	}
} catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}
  
%>
<%String sql2 = "SELECT parking_space.floor,parking_space.parking_Slot,parking_space.status FROM parking_space where parking_space.status='"+status2+"' and floor='"+floor+"'";
try {
	stmt = conn.createStatement();
	rs =  stmt.executeQuery(sql2);
	count2=rs.getRow();
	
} catch (SQLException e1) {
	// TODO Auto-generated catch block
	e1.printStackTrace();
}

try {
	while(rs.next()){
		
		rs.getInt("Floor");
		rs.getInt("Parking_Slot");
		rs.getString("Status");
		count2++;
		
		
		
	}
} catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}
  
%>
<%String sql3 = "SELECT parking_space.floor,parking_space.parking_Slot,parking_space.status FROM parking_space where parking_space.status='"+status+"' and floor='"+floor2+"'";
try {
	stmt = conn.createStatement();
	rs =  stmt.executeQuery(sql3);
	count3=rs.getRow();
	
} catch (SQLException e1) {
	// TODO Auto-generated catch block
	e1.printStackTrace();
}

try {
	while(rs.next()){
		
		rs.getInt("Floor");
		rs.getInt("Parking_Slot");
		rs.getString("Status");
		count3++;
		
		
		
	}
} catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}
  
%>
<%String sql4 = "SELECT parking_space.floor,parking_space.parking_Slot,parking_space.status FROM parking_space where parking_space.status='"+status2+"' and floor='"+floor2+"'";
try {
	stmt = conn.createStatement();
	rs =  stmt.executeQuery(sql4);
	count4=rs.getRow();
	
} catch (SQLException e1) {
	// TODO Auto-generated catch block
	e1.printStackTrace();
}

try {
	while(rs.next()){
		
		rs.getInt("Floor");
		rs.getInt("Parking_Slot");
		rs.getString("Status");
		count4++;
		
		
		
	}
} catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}
  
%>
	<div class="container">
		<!-- Floor 1 -->
		<div class="row">
			<h1 id="floor1">Floor 1</h1>
			<hr>
		</div>
		<form action="InterfaceServlet" method="post">
<%for(int i=0;i<count;i++) { %>
		<div class="row">
			
			<div class="col-sm-2">
			<div class="unallocated-space">
				<p class="status">Unallocated Space</p>
			</div>
			</div>
			<%} %>
			<%for(int i=0;i<count2;i++){ %>
			<div class="col-sm-2">
			<div class="space">
				<p class="status-allocated">Allocated Space</p>
				
			</div>
			<div class="col-sm-1">
			<input type="hidden" name="hdnbt" />
			<button class="btn btn-primary" name="button1" value="i" onclick="{hdnbt.value=this.value;}"  >Show Info</button>
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
<%for(int i=0;i<count3;i++){ %>
		<div class="row">
			
			<div class="col-sm-2">
			<div class="unallocated-space">
				<p class="status">Unallocated Space</p>
			</div>
			</div>
			
			<%} %>
			
			<%for(int i=0;i<count4;i++){ %>

			<div class="col-sm-2">
			<div class="space">
				<p class="status-allocated">Allocated Space</p>
			</div>
			<div class="col-sm-1">
			<button class="btn btn-primary" name="button2" value=j  >Show Info</button>
			</div>
			</div>
			
            <%} %>
         </form>
		</div> <!-- Ending Row -->
		<hr>
	</div> <!-- Ending Container -->
<body>
	<!-- ending main container -->
	<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>	
</body>
</html>