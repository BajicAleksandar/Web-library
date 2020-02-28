<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="https://kit.fontawesome.com/092a61b315.js" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
<link href="https://fonts.googleapis.com/css?family=Varela+Round" rel="stylesheet">
 <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
    
    .carousel-item {
  height: 65vh;
  min-height: 350px;
  background: no-repeat center center scroll;
  -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover;
}
.contact-section {
  padding: 5rem 0 0;
}

.contact-section .card {
  border: 0;
  border-bottom: 0.25rem solid #64a19d;
}

.contact-section .card h4 {
  font-size: 0.8rem;
  font-family: 'Varela Round';
  text-transform: uppercase;
  letter-spacing: 0.15rem;
}

.contact-section .card hr {
  border-color: #64a19d;
  border-width: 0.25rem;
  width: 3rem;
}

.contact-section .social {
  margin-top: 5rem;
}

.contact-section .social a {
  text-align: center;
  height: 3rem;
  width: 3rem;
  border-radius: 100%;
  line-height: 3rem;
  line-height: 3rem;
  color: rgba(255, 255, 255, 0.3);
}


.contact-section .social a:hover {
  color: rgba(255, 255, 255, 0.5);
}

.contact-section .social a:active {
  color: #fff;
}

body {
  font-family: 'Nunito';
  letter-spacing: 0.0625em;
}

a {
  color: #64a19d;
}

a:focus, a:hover {
  text-decoration: none;
  color: #3c6360;
}

.bg-black {
  background-color: #161616 !important;
}

.bg-primary {
  background-color: #64a19d !important;
}

.text-primary {
  color: #64a19d !important;
}

footer {
  padding: 5rem 0;
}


    </style>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
  <div class="container">
    <a class="navbar-brand">Kontak stranica</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
    <div class="collapse navbar-collapse" id="navbarResponsive">
      <ul class="navbar-nav ml-auto">
        <li class="nav-item active">
          <a class="nav-link" href="${pageContext.request.contextPath}/">Home
                <span class="sr-only">(current)</span>
              </a>
        </li>
        <li class="nav-item active">
          <a class="nav-link" href="${pageContext.request.contextPath}/gallery">Galerija</a>
        </li>
        <li class="nav-item active">
        <a class="nav-link" href="${pageContext.request.contextPath}/login">Login <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="${pageContext.request.contextPath}/registration">Registracija <span class="sr-only">(current)</span></a>
      </li>
      </ul>
    </div>
  </div>
</nav>

<header>
  <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
    <ol class="carousel-indicators">
      <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
      <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
      <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
    </ol>
    <div class="carousel-inner" role="listbox">
      <!-- Slide One - Set the background image for this slide in the line below -->
      <div class="carousel-item active" style="background-image: url('https://i.ytimg.com/vi/308Z6NGOq8k/maxresdefault.jpg')"  >
        <div class="carousel-caption d-none d-md-block">
          <h3 class="display-4" style="font-weight: 600;">Biblioteka univerziteta</h3>
          <p class="lead" style="font-weight: 450;">Nase prostorije mozete posetiti svakog dana od 07-18h</p>
        </div>
      </div>
      <!-- Slide Two - Set the background image for this slide in the line below -->
      <div class="carousel-item" style="background-image: url('https://q-cf.bstatic.com/xdata/images/city/1680x560/703805.jpg?k=6ce825e87fb12590645294e9b34882869a5baceb915bd5bf79b124e132422516&o=')">
        <div class="carousel-caption d-none d-md-block">
          <h3 class="display-4">Second Slide</h3>
          <p class="lead">This is a description for the second slide.</p> 
        </div>
      </div>
      <!-- Slide Three - Set the background image for this slide in the line below -->
      <div class="carousel-item" style="background-image: url('https://srbijomkrozvekove.rs/img/new-ages/petrovaradin/04.jpg')">
        <div class="carousel-caption d-none d-md-block">
          <h3 class="display-4">Third Slide</h3>
          <p class="lead">This is a description for the third slide.</p>
        </div>
      </div>
    </div>
    <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="sr-only">Previous</span>
        </a>
    <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="sr-only">Next</span>
        </a>
  </div>
</header>

<!-- Contact Section -->
  <section class="contact-section bg-black">
    <div class="container">

      <div class="row">

        <div class="col-md-4 mb-3 mb-md-0">
          <div class="card py-4 h-100">
            <div class="card-body text-center">
              <i class="fas fa-map-marked-alt text-primary mb-2"></i>
              <h4 class="text-uppercase m-0">Adresa</h4>
              <hr class="my-4">
              <div class="small text-black-50">Laze Kostica 12 Backa Palanka, Srbija</div>
            </div>
          </div>
        </div>

        <div class="col-md-4 mb-3 mb-md-0">
          <div class="card py-4 h-100">
            <div class="card-body text-center">
              <i class="fas fa-envelope text-primary mb-2"></i>
              <h4 class="text-uppercase m-0">Email</h4>
              <hr class="my-4">
              <div class="small text-black-50">
                <a>bajic89aleksandar.bps@gmail.com</a>
              </div>
            </div>
          </div>
        </div>

        <div class="col-md-4 mb-3 mb-md-0">
          <div class="card py-4 h-100">
            <div class="card-body text-center">
              <i class="fas fa-mobile-alt text-primary mb-2"></i>
              <h4 class="text-uppercase m-0">Telefon</h4>
              <hr class="my-4">
              <div class="small text-black-50">+381 060 399-4095</div>
            </div>
          </div>
        </div>
      </div>

      <div class="social d-flex justify-content-center">
        <a href="https://www.linkedin.com/in/aleksandar-bajic-994727197/" class="mx-2">
          <span style="font-size: 50px;"><i class="fab fa-linkedin"></i></span>
        </a>
        <a href="https://www.facebook.com/aleksandar.sladjana.5" class="mx-2">
         <span style="font-size: 50px;"> <i class="fab fa-facebook-f"></i></span>
        </a>
        <a href="https://github.com/BajicAleksandar" class="mx-2">
          <span style="font-size: 50px;"><i class="fab fa-github"></i></span>
        </a>
      </div>

    </div>
  </section>

  <!-- Footer -->
  <footer class="bg-black small text-center text-white-50">
    <div class="container">
       &copy; Biblioteka 2019-2020
    </div>
  </footer>


<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>