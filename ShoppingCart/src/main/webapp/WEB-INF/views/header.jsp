<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
   <!-- Topbar Start -->
    <div class="container-fluid px-0 d-none d-lg-block">
        <div class="row gx-0">
            <div class="col-lg-4 text-center bg-secondary py-3">
                <div class="d-inline-flex align-items-center justify-content-center">
                    <i class="bi bi-envelope fs-1 text-primary me-3"></i>
                    <div class="text-start">
                        <h6 class="text-uppercase mb-1">Email Us</h6>
                        <span>info@klrcrazycake.com</span>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 text-center bg-primary border-inner py-3">
                <div class="d-inline-flex align-items-center justify-content-center">
                    <a href="welcome" class="navbar-brand">
                        <h1 class="m-0 text-uppercase text-white"><i class="fa fa-birthday-cake fs-1 text-dark me-3"></i>CakeZone</h1>
                    </a>
                </div>
            </div>
            <div class="col-lg-4 text-center bg-secondary py-3">
                <div class="d-inline-flex align-items-center justify-content-center">
                    <!-- <i class="bi bi-phone-vibrate fs-1 text-primary me-3"></i> -->
                    <div class="text-start" style="align-items: center;">
                    <a href="/ShoppingCart/sc.com/cart">
                        <h4 style="display: inline-block; margin-top: 10px" class="text-uppercase mb-1">view Cart</h4> 
                        <img style="height: 50px; width: 50px" alt="cart" src="/ShoppingCart/sc.com/ddd/img/cart.png">    
                    </a>    
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Topbar End -->
    
    
    
    
    <!-- Navbar Start -->
    <nav class="navbar navbar-expand-lg bg-dark navbar-dark shadow-sm py-3 py-lg-0 px-3 px-lg-0">
        <a href="welcome" class="navbar-brand d-block d-lg-none">
            <h1 class="m-0 text-uppercase text-white"><i class="fa fa-birthday-cake fs-1 text-primary me-3"></i>CakeZone</h1>
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
            <div class="navbar-nav ms-auto mx-lg-auto py-0">
                <a href="welcome" class="nav-item nav-link ">Home</a>
                <a href="about" class="nav-item nav-link " >About Us</a>
                <a href="menu" class="nav-item nav-link">Categories of Cakes</a>
                <!-- <a href="addcake" class="nav-item nav-link">Add New Cake</a> -->
               <!--  <div class="nav-item dropdown">
                    <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Pages</a>
                    <div class="dropdown-menu m-0">
                        <a href="#" class="dropdown-item">Our Service</a>
                        <a href="#" class="dropdown-item">Testimonial</a>
                    </div>
                </div> -->
                <a href="contact" class="nav-item nav-link">Contact</a>
                 <% if(session.getAttribute("loginStatus")== null){ %>
	                 <a href="register"  class="nav-item nav-link">Register</a>
                	 <a href="login" class="nav-item nav-link">Login</a>
               	<%}else{ %>
                 <a href="userorders" class="nav-item nav-link">Orders</a>
                 <a href="logout" class="nav-item nav-link">Logout</a>
                 <a href="" class="nav-item nav-link" >Profile</a>
                 
    			<% }%>
                
            </div>
        </div>
    </nav>
    <!-- Navbar End -->