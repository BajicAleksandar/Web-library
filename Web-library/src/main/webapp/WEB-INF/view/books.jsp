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

<style type="text/css">


.container{
	padding-top: 7rem;
	
}

	.jumbotron {
  padding-top: 3rem;
  padding-bottom: 3rem;
  margin-bottom: 0;
  background-color: #fff;
}
@media (min-width: 768px) {
  .jumbotron {
    padding-top: 6rem;
    padding-bottom: 6rem;
  }
}

.jumbotron p:last-child {
  margin-bottom: 0;
}

.jumbotron h1 {
  font-weight: 300;
}

.jumbotron .container {
  max-width: 40rem;
}

footer {
  padding-top: 3rem;
  padding-bottom: 1.7rem;
}

footer p {
  margin-bottom: .25rem;
}
.bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        -ms-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Spisak Knjiga</title>
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
      <li class="nav-item">
        <a class="nav-link disabled">Knjige</a>
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
    
    <form:form method="GET" class="form-inline my-2 my-lg-0">
      <input href="#" class="form-control mr-sm-2" type="search" placeholder="Pretraga" aria-label="Search">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
    </form:form>
  </div>
</nav>


<div class="container">
 <h2 class="text-center display-4">Lista Knjiga</h2>
 <hr>
 <br>
<table class="table">
	 <thead class="thead-dark">
<tr>
<th class="text-center">Br</th>
<th class="text-center">Naziv</th>
<th class="text-center">Opis</th>
<th class="text-center">Autor</th>
<th class="text-center">Preuzmi</th>

<security:authorize access="hasRole('ADMIN')"><th class="text-center">Obrisi</th></security:authorize>
</tr>
</thead>
<c:forEach items="${Books.books}" var="book" varStatus="tagStatus">
    <tr>
    	<td align="center">${tagStatus.count}</td>
        <td class="text-center">${book.title}</td>
        <td><textarea class="form-control" rows="2" cols="60" readonly="true"> ${book.description}</textarea></td>
        <td class="text-center">${book.author}</td> 
        <td class="text-center"><a class="btn btn-outline-primary" href="#">Download</a></td>
        <security:authorize access="hasRole('ADMIN')"><td class="text-center"><a class="btn btn-outline-danger" href="/deleteBook/${book.id}">Obrisi</a></td></security:authorize>     
    </tr>
</c:forEach>
</table>
<a class="btn btn-primary" href="${pageContext.request.contextPath}/home"><b>Vrati se na pocetnu stranu</b></a>

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