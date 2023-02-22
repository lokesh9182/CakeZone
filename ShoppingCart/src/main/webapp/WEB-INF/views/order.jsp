<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>KLR Crazy Cakes</title>
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
</head>

<body>

<jsp:include page="header.jsp"></jsp:include>

    <!-- About Start -->
    <div class="container-fluid pt-5">
        <div class="container">
            <div class="section-title position-relative text-center mx-auto mb-5 pb-3" style="max-width: 600px;">
                <h2 class="text-primary font-secondary">Order Now</h2>
                <h1 class="display-4 text-uppercase">Here is your Cake</h1>
            </div>
            <div class="row gx-5">
                <div class="col-lg-5 mb-5 mb-lg-0" style="min-height: 400px;">
                    <div class="position-relative h-100">
                        <img class="position-absolute w-100 h-100" src="/ShoppingCart/sc.com/ddd/img/about.jpg" style="object-fit: cover;">
                    </div>
                </div>
                <div class="col-lg-6 pb-5">
                    <h4 class="mb-4">Cake : ${cake.name}</h4>
                    <p class="mb-5">${cake.caption}</p>
                    <div class="row g-5">
                        <div class="col-sm-6">
                            <div class="d-flex align-items-center justify-content-center bg-primary border-inner mb-4" style="width: 250px; height: 90px;">
                              <i class="fa  fa-2x text-white" >$ ${cake.price}.00 /-</i>
                            </div>
                            <!-- <h4 class="text-uppercase">100% Healthy</h4>
                            <p class="mb-0">Labore justo vero ipsum sit clita erat lorem magna clita nonumy dolor magna dolor vero</p>
           -->              </div>
                        <div class="col-sm-6">
                          <a href="/ShoppingCart/sc.com/addTOCart?cakeid=${cake.cakeid}">
                            <div class="d-flex align-items-center justify-content-center bg-primary border-inner mb-4" style="width: 250px; height: 90px;">
                               <i class="fa  fa-2x text-white"> Add To Cart </i>
                            </div>
                            </a>
                            <!-- <h4 class="text-uppercase">Award Winning</h4>
                            <p class="mb-0">Labore justo vero ipsum sit clita erat lorem magna clita nonumy dolor magna dolor vero</p>
                          -->
                        </div>
                    </div class="row g-5">
                    <h6>Details :</h6>
                    <p>${ cake.details}</p>
                    <div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- About End -->

    <!-- Testimonial Start -->
    <div class="container-fluid py-5">
        <div class="container">
            <div class="section-title position-relative text-center mx-auto mb-5 pb-3" style="max-width: 600px;">
                <h2 class="text-primary font-secondary">Testimonial</h2>
                <h1 class="display-4 text-uppercase">Our Clients Say!!!</h1>
            </div>
            <div class="owl-carousel testimonial-carousel">
                <div class="testimonial-item bg-dark text-white border-inner p-4">
                    <div class="d-flex align-items-center mb-3">
                        <img class="img-fluid flex-shrink-0" src="/ShoppingCart/sc.com/ddd/img/testimonial-1.jpg" style="width: 60px; height: 60px;">
                        <div class="ps-3">
                            <h4 class="text-primary text-uppercase mb-1">Client Name</h4>
                            <span>Profession</span>
                        </div>
                    </div>
                    <p class="mb-0">Dolor et eos labore, stet justo sed est sed. Diam sed sed dolor stet amet eirmod eos labore diam
                    </p>
                </div>
                <div class="testimonial-item bg-dark text-white border-inner p-4">
                    <div class="d-flex align-items-center mb-3">
                        <img class="img-fluid flex-shrink-0" src="/ShoppingCart/sc.com/ddd/img/testimonial-2.jpg" style="width: 60px; height: 60px;">
                        <div class="ps-3">
                            <h4 class="text-primary text-uppercase mb-1">Client Name</h4>
                            <span>Profession</span>
                        </div>
                    </div>
                    <p class="mb-0">Dolor et eos labore, stet justo sed est sed. Diam sed sed dolor stet amet eirmod eos labore diam
                    </p>
                </div>
                <div class="testimonial-item bg-dark text-white border-inner p-4">
                    <div class="d-flex align-items-center mb-3">
                        <img class="img-fluid flex-shrink-0" src="/ShoppingCart/sc.com/ddd/img/testimonial-3.jpg" style="width: 60px; height: 60px;">
                        <div class="ps-3">
                            <h4 class="text-primary text-uppercase mb-1">Client Name</h4>
                            <span>Profession</span>
                        </div>
                    </div>
                    <p class="mb-0">Dolor et eos labore, stet justo sed est sed. Diam sed sed dolor stet amet eirmod eos labore diam
                    </p>
                </div>
                <div class="testimonial-item bg-dark text-white border-inner p-4">
                    <div class="d-flex align-items-center mb-3">
                        <img class="img-fluid flex-shrink-0" src="/ShoppingCart/sc.com/ddd/img/testimonial-4.jpg" style="width: 60px; height: 60px;">
                        <div class="ps-3">
                            <h4 class="text-primary text-uppercase mb-1">Client Name</h4>
                            <span>Profession</span>
                        </div>
                    </div>
                    <p class="mb-0">Dolor et eos labore, stet justo sed est sed. Diam sed sed dolor stet amet eirmod eos labore diam
                    </p>
                </div>
            </div>
        </div>
    </div>
    <!-- Testimonial End -->
    

<jsp:include page="footer.jsp"></jsp:include>
</body>

</html>