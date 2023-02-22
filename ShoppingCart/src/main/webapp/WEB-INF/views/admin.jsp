<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>Admin</title>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="Free HTML Templates" name="keywords">
<meta content="Free HTML Templates" name="description">

<!-- Favicon -->
<link href="/ShoppingCart/sc.com/ddd/img/favicon.ico" rel="icon">
<link rel="stylesheet" type="text/css"
	href="/ShoppingCart/sc.com/ddd/css/login.css">
<!-- Google Web Fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600&family=Oswald:wght@500;600;700&family=Pacifico&display=swap"
	rel="stylesheet">

<!-- Icon Font Stylesheet -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css"
	rel="stylesheet">

<!-- Libraries Stylesheet -->
<link
	href="/ShoppingCart/sc.com/ddd/lib/owlcarousel/assets/owl.carousel.min.css"
	rel="stylesheet">

<!-- Customized Bootstrap Stylesheet -->
<link href="/ShoppingCart/sc.com/ddd/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Template Stylesheet -->
<link href="/ShoppingCart/sc.com/ddd/css/style.css" rel="stylesheet">
 <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="/ShoppingCart/sc.com/ddd/lib/easing/easing.min.js"></script>
    <script src="/ShoppingCart/sc.com/ddd/lib/waypoints/waypoints.min.js"></script>
    <script src="/ShoppingCart/sc.com/ddd/lib/counterup/counterup.min.js"></script>
    <script src="/ShoppingCart/sc.com/ddd/lib/owlcarousel/owl.carousel.min.js"></script>

    <!-- Template Javascript -->
    <script src="/ShoppingCart/sc.com/ddd/js/main.js"></script>
</head>
<body>
<jsp:include page="headerForAdmin.jsp"></jsp:include>

    <!-- Products Start -->
<div class="container-fluid about py-5">
        <div class="container">
            <div class="section-title position-relative text-center mx-auto mb-5 pb-3" style="max-width: 600px;">
                <!-- <h2 class="text-primary font-secondary">Menu of Cakes</h2> -->
                <h1 class="display-4 text-uppercase">Available Cakes</h1>
            </div>
            <div class="tab-class text-center">
                <ul class="nav nav-pills d-inline-flex justify-content-center bg-dark text-uppercase border-inner p-4 mb-5">
                    <li class="nav-item">
                        <a class="nav-link text-white active" data-bs-toggle="pill" href="#tab-1">Birthday</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-white" data-bs-toggle="pill" href="#tab-2">Wedding</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-white" data-bs-toggle="pill" href="#tab-3">Custom</a>
                    </li>
                </ul>
 <div class="tab-content">
     <div id="tab-1" class="tab-pane fade show p-0 active">
         <div class="row g-3">
			  <c:forEach var="cake" items="${ birthdaycakes }">
					<div class="col-lg-6" >
					       <div class="d-flex h-100" >
					           <div class="flex-shrink-0" >
					               <a href="/ShoppingCart/sc.com/order?cakeid=${cake.cakeid}"><img class="img-fluid" src="/ShoppingCart/sc.com/ddd/img/cake-1.jpg" alt="" style="width: 150px; height: 85px;">
					               <h4 class="bg-dark text-primary p-2 m-0">$ ${cake.price }</h4>
					           </div>
					           <div class="d-flex flex-column justify-content-center text-start bg-secondary border-inner px-4"style="width: 100%">
					               <h5 class="text-uppercase">${cake.name }</h5></a>
					               <span>${cake.caption }</span>
					                <div class="d-flex flex-column justify-content-center text-start bg-secondary border-inner px-4" style="margin-left: 350px">
						              <a href="/ShoppingCart/sc.com/removeCake?cakeid=${cake.cakeid }" style="color: black;border-radius:10px;border:3px solid black;padding:3px;background-color:lightgray ;text-decoration: none;"
						   				onmouseover="this.style.color='red';" onmouseout="this.style.color='black';"> Remove </a>
						                
						            </div>
					           </div>
					       </div>
					 </div>
  			</c:forEach>
          </div>
     </div>
                    
                    
                    
     <div id="tab-2" class="tab-pane fade show p-0">
         <div class="row g-3">
      		 <c:forEach var="cake" items="${ weddingcakes }">
				<div class="col-lg-6" >
                       <div class="d-flex h-100" >
                           <div class="flex-shrink-0" >
                               <a href="/ShoppingCart/sc.com/order?cakeid=${cake.cakeid}"><img class="img-fluid" src="/ShoppingCart/sc.com/ddd/img/cake-1.jpg" alt="" style="width: 150px; height: 85px;">
                               <h4 class="bg-dark text-primary p-2 m-0">$ ${cake.price }</h4>
                           </div>
                           <div class="d-flex flex-column justify-content-center text-start bg-secondary border-inner px-4"style="width: 100%">
                               <h5 class="text-uppercase">${cake.name }</h5></a>
                               <span>${cake.caption }</span>
                               <div class="d-flex flex-column justify-content-center text-start bg-secondary border-inner px-4" style="margin-left: 350px">
					              <a href="/ShoppingCart/sc.com/removeCake?cakeid=${cake.cakeid }" style="color: black;border-radius:10px;border:3px solid black;padding:3px;background-color:lightgray ;text-decoration: none;"
					   				onmouseover="this.style.color='red';" onmouseout="this.style.color='black';"> Remove </a>
					                
					            </div>
                           </div>
                       </div>
                   </div>
  			</c:forEach>                        
  		</div>
      </div>
      <div id="tab-3" class="tab-pane fade show p-0">
          <div class="row g-3">
              <c:forEach var="cake" items="${ customcakes }">
  							<div class="col-lg-6" >
                                <div class="d-flex h-100" >
                                    <div class="flex-shrink-0" >
                                        <a href="/ShoppingCart/sc.com/order?cakeid=${cake.cakeid}"><img class="img-fluid" src="/ShoppingCart/sc.com/ddd/img/cake-1.jpg" alt="" style="width: 150px; height: 85px;">
                                        <h4 class="bg-dark text-primary p-2 m-0">$ ${cake.price }</h4>
                                    </div>
                                    <div class="d-flex flex-column justify-content-center text-start bg-secondary border-inner px-4"style="width: 100%">
                                        <h5 class="text-uppercase">${cake.name }</h5></a>
                                        <span>${cake.caption }</span>
                                        <div class="d-flex flex-column justify-content-center text-start bg-secondary border-inner px-4" style="margin-left: 350px">
							              <a href="/ShoppingCart/sc.com/removeCake?cakeid=${cake.cakeid }" style="color: black;border-radius:10px;border:3px solid black;padding:3px;background-color:lightgray ;text-decoration: none;"
							   				onmouseover="this.style.color='red';" onmouseout="this.style.color='black';"> Remove </a>
							                
							            </div>
                                    </div>
                                </div>
                            </div>
  
   			</c:forEach>
          </div>
      </div>
            </div>
        </div>
    </div>
</div>
    <!-- Products End -->



	
	
	

</body>
</html>