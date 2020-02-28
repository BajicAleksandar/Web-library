<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> 
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="https://kit.fontawesome.com/092a61b315.js" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Azuriranje knjiga</title>
<style type="text/css">
    
    body{
        padding-top: 6rem;
    }
	.jumbotron{
	    border-radius: 30px;
        background-color: #ccccff;
        
   
	
	}
</style>
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
<div class="container">
<div class="jumbotron">
<form:form method="POST" action="${pageContext.request.contextPath}/addBook">

<div class="col-md-12 order-md-1">
      <h4 class="mb-3">Unos Nove Knjige</h4>
        <div class="row">
          <div class="col-md-6 mb-3">
            <label for="title">Naslov</label>
            <input type="text" class="form-control" id="title" name="title" placeholder="Unesite naslov knjige" value="" required>
            <div class="invalid-feedback">
              Unesite naslov knjige.
            </div>
          </div>
          <div class="col-md-6 mb-3">
            <label for="description">Opis</label>
            <input type="text" class="form-control" id="description" name="description" placeholder="Unesite opis" value="" required>
            <div class="invalid-feedback">
              Unesite opis knjige.
            </div>
          </div>
          <div class="col-md-6 mb-3">
            <label for="author">Autor</label>
            <input type="text" class="form-control" id="author" name="author" placeholder="Unesite Autora" value="" required>
            <div class="invalid-feedback">
              Unesite autora knjige.
            </div>
          </div>
        </div>
       </div>
			<input class="btn btn-success btn-lg" type="submit" value="Dodaj knjigu">
			<input class="btn btn-danger btn-lg" type="reset" value="Resetuj podatke">
</form:form>
</div>
</div>

<div class="container">

<form:form method="POST" action="${pageContext.request.contextPath}/saveBooks" modelAttribute="Books" id="sale"> 
<table class="table table-bordered">
	<h2 class="text-center">Azuriranje Liste Knjiga</h2>
	<br>
	<thead class="thead-light">
<tr>
<th class="text-center">Br</th>
<th class="text-center">Naziv</th>
<th class="text-center">Opis</th>
<th class="text-center">Autor</th>
</tr>
</thead>
<c:forEach items="${Books.books}" var="book" varStatus="status">
    <tr>
    	<td align="center">${status.count}</td>
    	<input class="form-control text-center" type="hidden" name="books[${status.index}].id" value="${book.id}"/>
        <td><form:input class="form-control text-center" path="books[${status.index}].title" value="${book.title}" /></td>
        <td><form:textarea class="form-control" form="sale" path="books[${status.index}].description" value="${book.description}" placeholder="Opis knjige..."/>
        <td><form:input class="form-control text-center" path="books[${status.index}].author" value="${book.author}"/></td>
        
    </tr>
</c:forEach>
</table>
<div align="center">
	<input class="btn btn-outline-success" align="center" type="submit" value="Azuriraj podatke" />
</div>
</form:form>

<footer class="my-5 pt-5 text-muted text-center text-small">
<hr>
    <p class="mb-1">&copy; 2019-2020 Web biblioteka</p>
    </footer>
</div>

<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>