<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>    
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
  padding-top: 4.5rem;
        
}
	.container{
	padding-top: 1rem;
	}
	.jumbotron{
	text-align: center;
        
	}
	.tabela{
	padding-top: 50px;
	padding-bottom: 40px;
	}
</style>
<title>Aktivni korisnici</title>
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
    
    <form:form method="GET" class="form-inline my-2 my-lg-0">
      <input href="#" class="form-control mr-sm-2" type="search" placeholder="Pretraga" aria-label="Search">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
    </form:form>
  </div>
</nav>

<sql:setDataSource
        var="myDS"
        driver="com.mysql.cj.jdbc.Driver"
        url="jdbc:mysql://localhost:3306/library"
        user="hbstudent" password="hbstudent"
    />
 
	<div class="jumbotron"> 
	<caption><h2 class="display-4">Lista aktivnih korisnika</h2></caption>
	<p class="lead">Ova stranica iskljucivo prikazuje samo Aktivne korisnike aplikacije</p>
	<hr class="my-4">
	<p>Ukoliko zelite da se vratite na Home Page, pritisnite dugme.</p>
	<a class="btn btn-primary btn-lg" href="${pageContext.request.contextPath}/home" role="button">Pocetna stranica</a>
	</div>
	
	<sql:query var="listUsers" dataSource="${myDS}">
        SELECT * FROM user where status=1;
        
    </sql:query>
    <div class="container">

    <div class="tabela">
    <table class="table table-hover">
    	<tr class="table-secondary">
    		<td class="text-center"> ROLE 1 - Administrator</td>
    	</tr>
    	<tr class="table-secondary">
    		<td class="text-center"> ROLE 2 - Profesor</td>
    	</tr>
    	<tr class="table-secondary">
    		<td class="text-center"> ROLE 3 - Student</td>
    	</tr>
    </table>
    
    </div>

        <table class="table table-bordered table table-striped" >
           
            <tr>
                <th class="text-center" scope="col">ID</th>
                <th class="text-center" scope="col">Name</th>
                <th class="text-center" scope="col">Last Name</th>
                <th class="text-center" scope="col">Phone Number</th>
                <th class="text-center" scope="col">Status</th>
                <th class="text-center" scope="col">Email</th>
                <th class="text-center" scope="col">Role</th>
            </tr>
            <c:forEach var="user" items="${listUsers.rows}" >
                <tr>
                
                    <td class="text-center"><c:out value="${user.user_id}" /></td>
                    <td class="text-center"><c:out value="${user.name}" /></td>
                    <td class="text-center"><c:out value="${user.lastname}" /></td>
                    <td class="text-center"><c:out value="${user.phone_number}" /></td>
                    <td class="text-center"><c:out value="${user.status}" /></td>
                    <td class="text-center"><c:out value="${user.email}" /></td>
                    <td class="text-center"><c:out value="${user.authorities_id}" /></td>
                </tr>
            </c:forEach>
        </table>
        <br>
        <br>
   
	
</div>

<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

<div class="container">
<footer class="my-5 pt-5 text-muted text-center text-small">
<hr>
    <p class="mb-1">&copy; 2019-2020 Web biblioteka</p>
    </footer>
    </div>
</body>
</html>