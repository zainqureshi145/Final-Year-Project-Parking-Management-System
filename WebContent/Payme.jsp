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
			<caption><center><h1 id=mainTitle>Payment</h1></center></caption>
			<%int tid=(Integer) request.getAttribute("tid"); %>
<%
String driver;
String url;
String username=null;
String password=null;
Statement stmt;

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
<%String sql = "SELECT  TIMESTAMPDIFF(hour, Arrival_time, departure_time)from pms.parking_transactions where idTransaction_Histroy='"+tid+"'";
try {
	stmt = conn.createStatement();
	rs =  stmt.executeQuery(sql);
} catch (SQLException e1) {
	// TODO Auto-generated catch block
	e1.printStackTrace();
}
out.write("<html>");
out.write("<head><title>User ResultSet</title></head>");
out.write("<body>");
out.write("<table class=table table-striped table-bordered table-condensed table-hover>");
//out.write(" <caption>Car Table Layout</caption>");
out.write("<thead><tr>");

//out.write("<tr><td>idCar</td><td>Registration_No</td><td>Car_Type</td><td>Model</td><td>User_idUser</td></tr>");
out.write("</thead> <tbody>");
try {
	while(rs.next()){
		
		out.write("<tr>");
		String timestamp=rs.getString(1);
		
		out.write("<center>"+"<h1>"+"Car is parked for "+timestamp+" hours"+"</h1>"+"</center>");
				out.write("<center>"+"<h1>"+"Total payment= "+Integer.parseInt(timestamp)*10+" rs"+"</h1>"+"</center>");
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
		<div class="row">
			<div class="col-lg-12">
				<br>
				<br>
			</div>
		</div>
		<div class="col-lg-5">
		<form action="PayServlet" method="post" onsubmit="return validate()">
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
								
							Payment
						</td>
					
					<tr>
						<td>
						<input  name="pay" type="text" class="form-control field" >
						</td>
					</tr>
					<tr>
						<td>
							<br>
						</td>
					</tr>
						<tr>
						<td>
						<button class="btn btn-primary" name="button0">Submit Payment</button>
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