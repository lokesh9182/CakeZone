<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
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

<body style="background-image: url('/ShoppingCart/sc.com/ddd/img/bg.jpg')">

<jsp:include page="header.jsp"></jsp:include>
             
<div class="login-container" style="width: 40%; margin-top: 50px">
<h1>Register here</h1>
<form:form action="registration_success" modelAttribute="userdata" method="POST">
<div class="form-group">
	<label>Name :  </label>
	<form:input path="name" required="required" />
	</div>
<div class="form-group">
	<label>Email :  </label>
	<form:input path="email"/>
	</div>
<div class="form-group">
	<label>Phone :  </label>
	<form:input path="mobile"/>
</div>
<div class="form-group">
	<label>Password : </label>
	<form:password path="password"/>
</div>
<button type="submit" class="btn btn-primary">Submit Details</button>
	
</form:form>
</div>
 
 <jsp:include page="footer.jsp"></jsp:include>
 
</body>

</html>