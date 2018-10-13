<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>All Cars</title>
<link rel="stylesheet" href="style/style.css" type="text/css">
	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">

	<!-- Optional theme -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css">
</head>
<body>
<div class="container-fluid">
		<div class="row heading">
			<div class="col-lg-12">
				<h1 id="mainTitle">Parking Management System</h1>
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
			<div class="text-vertical-left">
			<caption><center><h1 id=mainTitle>System</h1></center></caption>
			<%
			String a=(String) request.getAttribute("p1");
			
			
			%>
<%
String driver;
String url;
String username=null;
String password=null;
Statement stmt;
int floor=1;

Connection conn=null;
ResultSet rs=null;
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
<%String sql = "SELECT user.Name,user.Phone,car.Registration_No,car.car_type,car.model,parking_space.floor,parking_space.parking_Slot,parking_transactions.Arrival_Time,parking_transactions.departure_time,parking_transactions.Payment_Status FROM parking_transactions Join user on parking_transactions.user_idUser=user.idUser Join car on parking_transactions.Car_IdCar=car.idCar join parking_space on parking_transactions.Parking_space_idParking_space=parking_space.idparking_space where parking_space.floor='"+floor+"'and parking_slot='"+a+"'";
try {
	stmt = conn.createStatement();
	rs =  stmt.executeQuery(sql);
} catch (SQLException e1) {
	// TODO Auto-generated catch block
	e1.printStackTrace();
}
out.write("<html>");
out.write("<head><title>Car ResultSet</title></head>");
out.write("<body>");
out.write("<table class=table table-striped table-bordered table-condensed table-hover>");
//out.write(" <caption><center><h1 id=mainTitle>System</h1></center></caption>");
out.write("<thead><tr>");
out.write("<th>Owner's Name</th><th>Phone No</th><th>Registration_No</th><th>Car_type</th><th>Model</th><th>Floor</th><th>Parking_Slot</th><th>Arrival Time</th><th>Departure Time</th><th>Payment</th>");
//out.write("<table border='1'>");
//out.write("<tr><td>Name</td><td>Phone</td><td>email</td><td>Registration_No</td><td>Car_type</td><td>Model</td><td>Floor</td><td>Parking_Slot</td><td>Status</td><td>Arrival_Time</td><td>departure_time</td></tr>");
out.write("</thead> <tbody>");
try {
	while(rs.next()){
		out.write("<tr>");
		out.write("<td>"+rs.getString("Name")+"</td>");
		out.write("<td>"+rs.getString("Phone")+"</td>");
		out.write("<td>"+rs.getString("Registration_No")+"</td>");
		out.write("<td>"+rs.getString("Car_type")+"</td>");
		out.write("<td>"+rs.getString("Model")+"</td>");
		out.write("<td>"+rs.getInt("Floor")+"</td>");
		out.write("<td>"+rs.getInt("Parking_Slot")+"</td>");
	
		out.write("<td>"+rs.getString("Arrival_Time")+"</td>");
		out.write("<td>"+rs.getString("departure_time")+"</td>");
		out.write("<td>"+rs.getString("Payment_Status")+"</td>");
		out.write("</tr>");
		out.write("</tbody>");
		
	}
} catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}
out.write("<table>");
out.write("</body>");
out.write("</html>");

%>
<div class="empty">
			
		</div>
		
		
		
		<div class="col-lg-1">
				
			</div>
		</div>
		
		<div class="empty">
			
		</div>
		
		
		

		<div class="row footer" >
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
	</div>
	<!-- ending main container -->
	<!-- Latest compiled and minified JavaScript -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
</body>
</html>