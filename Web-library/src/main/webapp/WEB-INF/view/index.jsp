<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="https://kit.fontawesome.com/092a61b315.js" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"> 
<style type="text/css">

	body {
  min-height: 75rem;
  padding-top: 2.5rem;
  
	}
	
	.container{
		padding-top: 40px;
		
	}
	
	#sale{
	background: url(https://www.serbianshop.com/uploads/news/images/article-36.jpg); 
	background-size: cover;
	background-position: center;
	padding: 15px;
	height: 30rem
	}
	
	#sale .jumbotron{
	background-color: rgba(255,255,255,0.70);
	border-radius: 20px;
	}
	
</style>
<title>Web Biblioteka</title> 
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top ">
  <a class="navbar-brand" href="${pageContext.request.contextPath}/"><span style="font-size: 25px;"><i class="fas fa-home"></i></span></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="${pageContext.request.contextPath}/login">Login <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="${pageContext.request.contextPath}/registration">Registracija <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="${pageContext.request.contextPath}/gallery">Galerija</a>
      </li>
      <li class="nav-item active dropdown"> 
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Kontakt
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="https://github.com/BajicAleksandar"><span style="font-size: 20px;"><i class="fab fa-github"></i></span>&nbsp Github profil</a>
          <a class="dropdown-item" href="https://www.linkedin.com/in/aleksandar-bajic-994727197/"><span style="color: Dodgerblue; font-size: 20px;"><i class="fab fa-linkedin"></i></span>&nbsp Linkedin profil</a>
          <a class="dropdown-item" href="https://www.facebook.com/aleksandar.sladjana.5"><span style="color: Dodgerblue; font-size: 20px;"><i class="fab fa-facebook"></i></span>&nbsp Facebook profil</a>
       	  <div class="dropdown-divider"></div>
       	  <a class="dropdown-item" href="${pageContext.request.contextPath}/contact"><span style="font-size: 20px;"><i class="far fa-address-book"></i></span>&nbsp Kontak Stranica</a>
        </div>
      </li>
    </ul>
    <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
    </form>
  </div>
</nav>


<div id="sale">
<div class="container">
	<div class="jumbotron">
	
		<h1 class="display-4"><span style=" font-size:78px"><i class="fa fa-book"></i></span> Dobrodosli u web biblioteku</h1>
		<p class="lead">Dragi korisnici, volite knjige i birajte pisca kao sto biste
						birali prijatelja.</p>
		
		<hr class="my-4">
		<p>Da bi ste uzivali u svetu knjiga potrebno je ulogovati se. Ukoliko jos uvek nemate korisnicki nalog, mozete se registrovati i postati nas clan.</p>
		<a class="btn btn-primary btn-lg" href="${pageContext.request.contextPath}/registration" role="button">Registracija</a>
		<a href="${pageContext.request.contextPath}/login" class="btn btn-success btn-lg">Login</a>
	</div>

</div>
</div>

<div class="container">
<div class="row">
    <div class="col-md-4 order-md-2 mb-4">
      <h4 class="d-flex justify-content-between align-items-center mb-3">
        <span class="text-muted">Godisnja Pretplata Clanarine</span>
      </h4>
      <ul class="list-group mb-3">
        <li class="list-group-item d-flex justify-content-between lh-condensed">
          <div>
            <h6 class="my-0">Profesori</h6>
            <small class="text-muted">Redovni i vanredni profesori univerziteta</small>
          </div>
          <span class="text-muted"><span style="font-size:15px; color:blue"><i class="fas fa-euro-sign"></i></span> 10</span>
        </li>
        <li class="list-group-item d-flex justify-content-between lh-condensed">
          <div>
            <h6 class="my-0">Vanredni studenti</h6>
            <small class="text-muted">vanredni i samofinansirajuci studenti</small>
          </div>
          <span class="text-muted"><span style="font-size:15px; color:blue"><i class="fas fa-euro-sign"></i></span> 8</span>
        </li>
        <li class="list-group-item d-flex justify-content-between lh-condensed">
          <div>
            <h6 class="my-0">Studenti</h6>
            <small class="text-muted">Studenti na budzetu</small>
          </div>
          <span class="text-muted"><span style="font-size:15px; color:blue"><i class="fas fa-euro-sign"></i></span> 5</span>
        </li>
        <li class="list-group-item d-flex justify-content-between bg-light">
          <div class="text-success">
            <h6 class="my-0">Studenti</h6>
            <small>prosek ocena preko 8,5</small>
          </div>
          <span class="text-success">- <span style="font-size: 14px"><i class="fas fa-euro-sign"></i></span> 5</span>
        </li>
      </ul>
      
      <div class="p-4 mb-3 bg-light rounded ">
        <h4 class="font-italic">Nagrade i priznanja</h4>
        <p class="mb-0">Godisnja nagrada zajednica biblioteka Vojvodine (2019).</p>
        <br>
        <p class="mb-0">Nagrada <em>Iskra Kulture</em> (2019).</p>
        <br>
        <p class="mb-0">Oktobarska nagrada grada Novog Sada (2019).</p>
        <br>
        <p class="mb-0">Svetosavska nagrada (2020).</p>
      </div>
    </div>
    <div class="col-md-4">
        <h2>Biblioteka Matice Srpske</h2>
        <p>Kako i koliko citamo takvi smo i toliki ljudi. Uzrastajuci uz ono sto citamo,
         prepoznajemo se po tome kako citamo. Istinsko citanje je novi zivot reci,
          ozivljavanje zaustavljenog daha sintakse,
           poistovecenje s drugim. Ono cini da delo postaje delo,
            dopustajuci, zapravo, da ono bude ono-sto-jeste,
             oslobadjajuci ga, u potpunosti, od pisca.</p>
             <p>Dobrodosli u svet Biblioteke Matice srpske!</p>
        <p><a class="btn btn-info" href="http://www.bms.ns.ac.rs/bmslat101.htm" role="button">Detaljnije &raquo;</a></p>
      </div>
      
      <div class="col-md-4">
        <h2>Decije Odeljenje</h2>
        <p>Ako imate <strong>malo dete</strong>, i pitate se da li je rano za knjige i citanje, verujte nam - NIJE! Mnostvo slikovnica, bajki i prica
        za najmladje ceka ih u gradskoj biblioteci Novi Sad. Postovani vaspitaci, nastavnici, profesori i roditelji, pozivamo vas da zajedno stvaramo 
        citalacke navike nase dece i pomazemo im u odrastanju!</p>
  
        <p>Ovu saradnju dogovorili su pokrajinski sekretar za kulturu Marko Markovic i upravnik univerzitetske
        biblioteke Aleksandar Bajic. </p>
        <p><a class="btn btn-info" href="http://www.gbns.rs/index.php?option=com_content&view=article&id=91&Itemid=191" role="button">Detaljnije &raquo;</a></p>
      </div>
  </div>
  
  <footer class="container text-muted text-center">
	<hr>
  <p>&copy; Biblioteka 2019-2020</p>
</footer>
</div>
   


<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>