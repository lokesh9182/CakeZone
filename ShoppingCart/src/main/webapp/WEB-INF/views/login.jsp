<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
  <title>Login Page</title>
   <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="Free HTML Templates" name="keywords">
    <meta content="Free HTML Templates" name="description">

    <!-- Favicon -->
    <link href="/ShoppingCart/sc.com/ddd/img/favicon.ico" rel="icon">

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
  <link rel="stylesheet" type="text/css" href="/ShoppingCart/sc.com/ddd/css/login.css">
</head>
<body style="background-image: url('/ShoppingCart/sc.com/ddd/img/colorblur.jpg'); background-size: 100%">
<jsp:include page="header.jsp"></jsp:include>

  <div class="login-container">
    <h1>Login</h1>
    
    <form:form method="post" action="/ShoppingCart/sc.com/loginsuccess" modelAttribute="logindata"  >
      <div class="form-group">
        <label>Username:</label>
        <form:input  path="email" class="form-control"  required="required"/>
      </div>

      <div class="form-group">
        <label>Password:</label>
        <form:password path="password"  class="form-control" required="required"/>
      </div>
		<!-- onclick="if(!confirm('Are You Sure That You Want To Delete This record..!!'))return false" -->
      <button type="submit"  class="btn btn-primary">Login</button>
    </form:form>
  </div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
