<%@page import="com.demo.service.UserService"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<%@ page import="com.demo.*" %>
<head>
<style type="text/css">
	.container{
	padding-top: 2rem;
	}
</style>
<script src="https://kit.fontawesome.com/092a61b315.js" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Lista svih korisnika</title>
</head>
<body>
<div class="container">
<div class="alert alert-success" role="alert">
  <h4 class="alert-heading">Podaci su azurirani!</h4>
  <p>Podaci o statusu korisnika su uspesno azurirani, korisnici sa statusom 1 su aktivni korisnici aplikacije.  </p>
  <hr>
  <p class="mb-0">Ukoliko je korisnik propustio neku uplatu mozete samo promenuti status u 0 i time onemoguciti koriscenje aplikacije. 
  Ukoliko obrisete korisnika brisu se i svi njegovi podaci u aplikaciji i potrbna je ponovna registracija.</p>
  <br>
  <a class="btn btn-primary btn-lg" href="${pageContext.request.contextPath}/home"><b>Pocetna stranica</b></a>
</div>
<h2 class="text-center">Lista Korisnika</h2>
<br>
<form:form>
<table class="table">
	
	<thead class="thead-light">
<tr>
<th class="text-center">Br</th>
<th class="text-center">Ime</th>
<th class="text-center">Prezime</th>
<th class="text-center">Email</th>
<th class="text-center">Korisnicko ime</th>
<th class="text-center">Telefon</th>
<th class="text-center">Status</th>
<th class="text-center">Tip korisnika</th>
<th class="text-center">Delete</th>
</tr>
</thead>

<tbody>
<c:forEach items="${Users.users}" var="user" varStatus="tagStatus">
    <tr>
    	
    	<td align="center">${tagStatus.count}</td>
        <td class="text-center">${user.name}</td>
        <td class="text-center">${user.lastname}</td>
        <td class="text-center">${user.email}</td>
        <td class="text-center">${user.username}</td>
        <td class="text-center">${user.phoneNumber}</td>
        <td class="text-center">${user.status}</td>
        <td class="text-center">${user.authorities.role}</td>
        <td class="text-center"><a class="btn btn-outline-danger" href="/delete/${user.id}">Obrisi</a></td>
    </tr>
</c:forEach>
</tbody>
</table>
</form:form>

</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</body>
</html>