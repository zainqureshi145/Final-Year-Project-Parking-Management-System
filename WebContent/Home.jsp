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
			<caption><center><h1 id=mainTitle>Unoccupied Spaces</h1></center></caption>
<%
String driver;
String url;
String username=null;
String password=null;
Statement stmt;
String status="unoccupied";
Connection conn=null;
ResultSet rs=null;
int count=0;
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
<%String sql = "SELECT parking_space.floor,parking_space.parking_Slot,parking_space.status FROM parking_space where parking_space.status='"+status+"'";
try {
	stmt = conn.createStatement();
	rs =  stmt.executeQuery(sql);
	count=rs.getRow();
	
} catch (SQLException e1) {
	// TODO Auto-generated catch block
	e1.printStackTrace();
}
out.write("<html>");
out.write("<head><title>Car ResultSet</title></head>");
out.write("<body>");
out.write("<table class=table table-striped table-bordered table-condensed table-hover>");

out.write("<thead><tr>");
out.write("<th>Floor</th><th>Parking_Slot</th><th>Status</th>");
out.write("</thead><tbody>");
try {
	while(rs.next()){
		out.write("<tr>");
		out.write("<td>"+rs.getInt("Floor")+"</td>");
		out.write("<td>"+rs.getInt("Parking_Slot")+"</td>");
		out.write("<td>"+rs.getString("Status")+"</td>");
		count++;
		out.write("</tr>");
		out.write("</tbody>");
		
		
	}
} catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}
//System.out.println("count ="+count);

out.write("<table>");
out.write("Total no of unoccupied spaces="+count);
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