<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="https://kit.fontawesome.com/092a61b315.js" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style type="text/css">

body {
  min-height: 35rem;
  padding-top: 8rem;
  background: url(https://i.pinimg.com/originals/5f/5b/0e/5f5b0e4493d30eddd77188ca7bd26590.jpg);
  background-size: cover;
  background-repeat: no-repeat;
  background-size: 1400px 750px;
  
	}
	.jumbotron{
	background-color: rgba(255,255,255,0.70);
	border-radius: 20px;
	}
    .mb-1{
        color: antiquewhite;
        font-weight: 500;
    }

</style>
<title>Web-Library Home Page</title>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top ">
  <a class="navbar-brand" href="${pageContext.request.contextPath}/home"><span style="font-size: 25px;"><i class="fas fa-home"></i></span></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      
      <li class="nav-item active">
        <a class="nav-link" href="${pageContext.request.contextPath}/gallery">Galerija</a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="${pageContext.request.contextPath}/books">Knjige</a>
      </li>
      <li class="nav-item active dropdown"> 
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Kontakt
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="https://github.com/BajicAleksandar"><span style="font-size: 20px;"><i class="fab fa-github"></i></span> Github profil</a>
          <a class="dropdown-item" href="https://www.linkedin.com/in/aleksandar-bajic-994727197/"><span style="color: Dodgerblue; font-size: 20px;"><i class="fab fa-linkedin"></i></span> Linkedin profil</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="https://www.facebook.com/aleksandar.sladjana.5"><span style="color: Dodgerblue; font-size: 20px;"><i class="fab fa-facebook"></i></span> Facebook profil</a>
        </div>
      </li>
      <li class="nav-item active dropdown"> 
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          <span style="font-size: 20px;"><i class="fas fa-id-card"></i></span>
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <p class="dropdown-item"><span style="font-size: 20px;"><i class="fas fa-user-tie"></i></span>  <security:authentication property="principal.username"/></p>
          <p class="dropdown-item"><span style="font-size: 20px;"><i class="fas fa-user-graduate"></i></span> <security:authentication property="principal.authorities"/></p>
          
        </div>
      </li>
    </ul>
    
    <form:form action="${pageContext.request.contextPath}/logout"
			   method="POST">
			   
			   <input class="btn btn-primary" type="submit" value="Logout"/>
	
	</form:form>
  </div>
</nav>

	
	<!-- Display user name and role -->
	<!--  
	<p>
	User: <security:authentication property="principal.username"/>
	<br><br>
	Role(s): <security:authentication property="principal.authorities"/>
	</p>
	
	<hr> -->
	<!-- Add a link to point to /leaders ... this is for the menagers-->
	<div class="container">
	<div class="jumbotron">

		<h1 class="display-4"><span style=" font-size:78px"><i class="fa fa-book"></i></span> Dobrodosli u web biblioteku</h1>
		<security:authorize access="hasRole('ADMIN')"><p class="lead">Ulogovali ste se kao Administrator / Bibliotekar</p> </security:authorize>
		<security:authorize access="hasRole('TEACHER')"><p class="lead">Ulogovali ste se kao Profesor univerziteta</p> </security:authorize>
		<security:authorize access="hasRole('STUDENT')"><p class="lead">Kao studentu naseg univerziteta dostupna vam je lista od preko 10.000 knjiga.</p> </security:authorize>
		
		<hr class="my-4">
		<p>Dobrodosli u Web Biblioteku, zelimo vam da uzivate u knigama jer knjizevnost otkriva sve ono sto stvarnost skriva.</p>
		<security:authorize access="hasRole('ADMIN')"><p>Ukoliko zelite da upravljate aplikacijom, pritisnite dugme "Sistem".</p></security:authorize>
		<security:authorize access="hasRole('ADMIN')"><a class="btn btn-primary btn-lg" href="${pageContext.request.contextPath}/systems" role="button">Sistem</a></security:authorize>
		<security:authorize access="hasRole('ADMIN')"><a class="btn btn-warning btn-lg" href="${pageContext.request.contextPath}/teacher" role="button">Profesori</a></security:authorize>
		<security:authorize access="hasRole('TEACHER')"><a class="btn btn-primary btn-lg" href="${pageContext.request.contextPath}/teacher" role="button">Profesori</a></security:authorize>
		<a href="${pageContext.request.contextPath}/books" class="btn btn-success btn-lg">Lista knjiga</a>
	</div>
	
	</div>
	<!-- <security:authorize access="hasRole('TEACHER')">
	<p>
		<a href="${pageContext.request.contextPath}/teachers">LeaderShip Meeting</a>
		(Only for managers)
	</p>
	</security:authorize>  --> 
	
	<!-- Add a link to point to /systems ... this is for the admins--> 
	
	<!-- <security:authorize access="hasRole('ADMIN')">
	<p>
		<a href="${pageContext.request.contextPath}/systems">IT Systems Meeting</a>
		(Only for Admins)
	</p>
		
	</security:authorize>
	
	<p>
		<a href="${pageContext.request.contextPath}/books">Lista knjiga</a>
		
	</p> -->

	<!-- Add logout button 
	<form:form action="${pageContext.request.contextPath}/logout"
			   method="POST">
			   
			   <input type="submit" value="Logout"/>
	
	</form:form> -->
	
	<footer class="my-5 pt-5 text-muted text-center text-small">
    <p class="mb-1">&copy; 2019-2020 Web biblioteka</p>
    </footer>
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>