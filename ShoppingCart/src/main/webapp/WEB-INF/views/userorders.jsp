<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
	<meta content="width=device-width, initial-scale=1.0" name="viewport">
	<meta charset="utf-8">
	<meta content="Free HTML Templates" name="keywords">
	<meta content="Free HTML Templates" name="description">
	<link href="/ShoppingCart/sc.com/ddd/img/favicon.ico" rel="icon">
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600&family=Oswald:wght@500;600;700&family=Pacifico&display=swap" rel="stylesheet"> 
	<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">
	<link href="/ShoppingCart/sc.com/ddd/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
	<link href="/ShoppingCart/sc.com/ddd/css/bootstrap.min.css" rel="stylesheet">
	<link href="/ShoppingCart/sc.com/ddd/css/style.css" rel="stylesheet">
	<title>Order Details</title>
	<link rel="stylesheet" type="text/css" href="/ShoppingCart/sc.com/ddd/css/styleSheet.css">
</head>
<body>

<jsp:include page="header.jsp"></jsp:include>

	<h1 align="center">Order Status and Details</h1>
<!-- 	
	<div align="center">
	<a class="btext"

			href="http://localhost:8080/student-management/sm.com/addStudent">
			<button class="mybutton">
				<b>Add Student</b>
			</button>
		</a>

	</div>
		 -->
	<br>

	<table>
		<thead style="color: white">
			<tr>
				<th>Sl No</th>
				<th>Cake Id</th>
				<th>Flavor</th>
				<th>Qunantity</th>
				<th>Amount</th>
				<th>Status</th>
				<th>Cancel</th>

			</tr>
		</thead>
		<tbody>
			<c:forEach var="order" items="${orders}" varStatus="i">
				<tr>
					<td style="border:1px solid black">${ i.index+1 }</td>
					<td  style="border:1px solid black">${ order.cakeid }</td>
					<td  style="border:1px solid black">${ order.cakename }</td>
					<td  style="border:1px solid black">${ order.count }</td>
					<td  style="border:1px solid black">${ order.cost * order.count }</td>
					<td  style="border:1px solid black">${ order.status }</td>
<%-- 					<td><a class="btext"
						href="/student-management/sm.com/update?studentId=${ student.id }">
							<button class="mybutton">Update</button>
					</a></td> --%>
					<td  style="border:1px solid black"><a class="btext"
						href="/ShoppingCart/sc.com/cancelorder?cakeid=${ order.cakeid }"
						onclick="if(!confirm('Are You Sure That You Want To Cancel This order..!!'))return false">
							<button class="mybutton">Cancel</button>
					</a></td>
				</tr>
			</c:forEach>

		</tbody>
	</table>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>