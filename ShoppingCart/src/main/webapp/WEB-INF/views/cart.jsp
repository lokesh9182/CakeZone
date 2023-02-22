<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<meta content="width=device-width, initial-scale=1.0" name="viewport">
	<meta charset="utf-8">
	<title>KLR Crazy Cakes</title>
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
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<br>
<h3 align="center" style="color: darkgreen">List Of Cakes In Your Cart</h3>
<hr>
<% int i=1; %>
<c:forEach var="cake" items="${allCakes}" varStatus="i">
	
	<div class="col-lg-12" style="padding: 0px 80px 0px 100px" >
        <div class="d-flex h-100" >
        	<div class="d-flex flex-column justify-content-center text-start bg-secondary border-inner px-4"style="width:15%; margin-right: 20px">
                <h5 class="text-uppercase" align="center"><%=i++ %></h5>
            </div>
            <div class="flex-shrink-0" >
                <a href="/ShoppingCart/sc.com/order?cakeid=${cake.cakeid}"><img class="img-fluid" src="/ShoppingCart/sc.com/ddd/img/cake-1.jpg" alt="" style="width: 150px; height: 85px;"></a>
            </div>
            <div class="d-flex flex-column justify-content-center text-start bg-secondary border-inner px-4"style="width: 100%">
                <h5 class="text-uppercase" align="center">${cake.cakeid}</h5>
            </div>
            <div class="d-flex flex-column justify-content-center text-start bg-secondary border-inner px-4"style="width: 100%">
                <h5 class="text-uppercase" align="center">${cake.name}</h5>
            </div>
            <div class="d-flex flex-column justify-content-center text-start bg-secondary border-inner px-4"style="width: 100%">
                <h5 class="text-uppercase" align="center">${cake.price} /-</h5>
            </div>
            <div class="d-flex  justify-content-center text-start bg-secondary border-inner px-4"style="width: 100%">
	             <a href="/ShoppingCart/sc.com/decreament?cakeid=${cake.cakeid}" style="color: black;border-radius:10px;border:1px solid black;text-align:center; width: 20px ;margin:20px 0px 30px 0px;background-color:lightgray ;text-decoration: none;"
	   				onmouseover="this.style.color='red';" onmouseout="this.style.color='black';">-</a>
	            
	            <span style="color: black;border-radius:5px;font-size:20px;border:1px solid black;text-align:center; width: 40px ;margin:20px 10px 30px 10px;">${cart[i.index].count}</span>
	             
	             <a href="/ShoppingCart/sc.com/increament?cakeid=${cake.cakeid}" style="color: black;border-radius:10px;border:1px solid black;text-align:center;width: 20px ;margin:20px 0px 30px 0px;background-color:lightgray ;text-decoration: none;"
	   				onmouseover="this.style.color='red';" onmouseout="this.style.color='black';">+</a>
            </div>
            <div class="d-flex flex-column justify-content-center text-start bg-secondary border-inner px-4">
              <a href="/ShoppingCart/sc.com/remove?cakeid=${cake.cakeid }" style="color: white;border-radius:10px;border:1px solid black;padding:3px;background-color:darkorange ;text-decoration: none;"
   				onmouseover="this.style.color='black';" onmouseout="this.style.color='white';"> Remove </a>
                
            </div>
        </div>
    </div>
    <br>
</c:forEach>

<br>
<br>
<div align="center">
			<h4 style="display: inline; border:2px solid red ;background-color:darkgreen;color:white; padding: 15px; border-radius: 10px; margin-right: 6%">Grand Total : ${total} /-</h4>
			<a href="/ShoppingCart/sc.com/placeorder">
				<h4  style="display: inline; border:2px solid red ;background-color:darkgreen;color:white; padding: 15px; border-radius: 10px;  margin-left: 6%">Place Order here</h4>
			</a>
</div>

<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>