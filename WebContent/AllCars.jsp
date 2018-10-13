<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>All Cars</title>
<link rel="stylesheet" href="style/style.css" type="text/css">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">

<!-- Optional theme -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css">

</head>
<body>
	<div class="container-fluid">
		<div class="row heading">
			<div class="col-lg-12">
				<h1 id="mainTitle">Parking Management system</h1>
			</div>
		</div>

		<hr>

		<div class="row">
			<div class="col-lg-12">
				<br> <br>
			</div>
		</div>

		<div class="row">
			<div class="col-lg-3"></div>
			<div class="text-vertical-left">

				<div class="table-responsive">
					<table border=1>
						<thead>
							<tr>
								<th>idCar</th>
								<th>Registration_No</th>
								<th>Car_Type</th>
								<th>Model</th>
								<th>User_idUser</th>

							</tr>
						</thead>
						<tbody>
							<c:forEach items="${mycars}" var="car1">
								<tr>
									<td><c:out value="${car1.carId}" /></td>
									<td><c:out value="${car1.regNo}" /></td>
									<td><c:out value="${car1.carType}" /></td>
									<td><c:out value="${car1.model}" /></td>
									<td><c:out value="${car1 .User_idUser}" /></td>

								</tr>
							</c:forEach>
						</tbody>
					</table>

					<div class="col-lg-1"></div>
				</div>


				<div class="empty"></div>

				<div class="row footer fixed">
					<div class="col-lg-12">
						<h3>
							<span class="glyphicon glyphicon-phone-alt"></span> Contact Us
						</h3>
						<p>
							abc@ypopmail.com <br> xxx-xxx-xxx
						</p>
					</div>
				</div>
			</div>
			<!-- ending main container -->
			<!-- Latest compiled and minified JavaScript -->
			<script
				src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
</body>
</html>