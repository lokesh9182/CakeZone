<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <meta charset="utf-8">
    <title>CakeZone - Cake Shop Website Template</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="Free HTML Templates" name="keywords">
    <meta content="Free HTML Templates" name="description">

    <!-- Favicon -->
    <link href="/ShoppingCart/sc.com/ddd/img/favicon.ico" rel="icon">
  <link rel="stylesheet" type="text/css" href="/ShoppingCart/sc.com/ddd/css/login.css">
    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600&family=Oswald:wght@500;600;700&family=Pacifico&display=swap" rel="stylesheet"> 

    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="/ShoppingCart/sc.com/ddd/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="/ShoppingCart/sc.com/ddd/css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="/ShoppingCart/sc.com/ddd/css/style.css" rel="stylesheet">
</head>

<body style="background-image:url('/ShoppingCart/sc.com/ddd/img/water.jpg'); ">

<jsp:include page="headerForAdmin.jsp"></jsp:include>	
<br>
 <div align="center"><h1 style="color: Yellow">Add New Cake Here</h1></div>            
<div class="login-container" style="width: 50%; margin-top: 20px">
<h3>Cake Details</h3>
<form:form action="insertcake" modelAttribute="cakedata" method="POST">
		<div class="form-group">
			<label>Cake Name :  </label>
			<form:input path="name" required="required" />
			</div>
		<div class="form-group">
			<label>Caption :  </label>
			<form:input path="caption"/>
			</div>
		<div class="form-group">
			<label>Price :  </label>
			<form:input path="price" required="required" />
			</div>
		<div class="form-group">
			<label>Cake Details :  </label><br>
			<form:textarea cssStyle="width:100% ;color:red; height:200px" path="details"/>
		</div>
		<div class="form-group">
			<label>Category : </label>
			<form:select path="category">
				<form:option value="Birthday">Birthday cake</form:option>
				<form:option value="Wedding">Wedding Cake</form:option>
				<form:option value="Custom">Custom Cake</form:option>
			
			</form:select>
		</div>
		<button type="submit" class="btn btn-primary">Insert Cake</button>
			
</form:form>
</div>

<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>