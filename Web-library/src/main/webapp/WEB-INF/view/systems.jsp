<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="https://kit.fontawesome.com/092a61b315.js" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style type="text/css">
	.marketing .col-lg-4 {
  margin-bottom: 1.5rem;
  text-align: center;
}
.marketing h2 {
  font-weight: 400;
}
.marketing .col-lg-4 p {
  margin-right: .75rem;
  margin-left: .75rem;
}

.jumbotron{
	padding-top: 100px;
}
h2{
	padding-top: 1.5rem;
}
	
</style>
<title>SYSTEMS Home Page</title>
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
        <a class="nav-link" href="${pageContext.request.contextPath}//books">Knjige</a>
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

<div class="jumbotron">
	<div class="container">
		<h1 class="display-4"><span style=" font-size:78px"><i class="fas fa-network-wired"></i></span> Administrator SISTEM IT</h1>
		<p class="lead">Dobrodosli na Sistem IT stranicu aplikacije.</p> 
		
		
		<hr class="my-4">
		<p>Upravljajte korisnicima aplikacije i listom knjiga. </p>
		
		<a href="${pageContext.request.contextPath}/books" class="btn btn-success btn-lg">Lista knjiga</a>
		</div>
	</div>
	
	<div class="container marketing">

    <!-- Three columns of text below the carousel -->
    <div class="row">
      <div class="col-lg-4">
        <span style="font-size: 80px; color:blue"><i class="fas fa-users"></i></span>
        <h2>Aktivni Korisnici</h2>
        <p>Donec sed odio dui. Etiam porta sem malesuada magna mollis euismod. Nullam id dolor id nibh ultricies vehicula ut id elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Praesent commodo cursus magna.</p>
        <p><a class="btn btn-info" href="${pageContext.request.contextPath}/systems/activeUsers" role="button">Detaljnije &raquo;</a></p>
      </div><!-- /.col-lg-4 -->
      <div class="col-lg-4">
        <span style="font-size: 80px; color:green"><i class="fas fa-user-plus"></i></span>
        <h2>Korisnici na cekanju</h2>
        <p>Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Cras mattis consectetur purus sit amet fermentum. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh.</p>
        <p><a class="btn btn-info" href="${pageContext.request.contextPath}/systems/users" role="button">Detaljnije &raquo;</a></p>
      </div><!-- /.col-lg-4 -->
      <div class="col-lg-4">
        <span style="font-size: 70px; color:tomato"><i class="far fa-edit"></i></span>
        <h2>Azuriranje Liste Knjiga</h2>
        <p>Donec sed odio dui. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Vestibulum id ligula porta felis euismod semper. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.</p>
        <p><a class="btn btn-info" href="${pageContext.request.contextPath}/systems/books" role="button">Detaljnije &raquo;</a></p>
      </div><!-- /.col-lg-4 -->
    </div>
</div>

<div class="container">
    <footer class="my-5 pt-5 text-muted text-center text-small">
<hr>
    <p class="mb-1">&copy; 2019-2020 Web biblioteka</p>
    </footer>
</div>
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>