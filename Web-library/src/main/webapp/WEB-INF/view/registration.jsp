<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<%@ page import="java.util.*" %>
	<%@ page import="com.demo.*" %>
	<%@ page import="com.demo.entity.*" %>
	<%@ page import="com.demo.entity.User.*" %>
	
	
<head>
<script src="https://kit.fontawesome.com/092a61b315.js" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registracija korisnika</title>

<style type="text/css">

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
h2 {
	margin-left: 1.70%;
	padding-bottom: 4px;
}

.container {
	padding-left:7rem;
	padding-right:7rem;
	
}
.sale{
	padding-top: 2rem;
}

</style> 
</head>
<body class="bg-light">
<div class="container">
<div class="py-5 text-center">
    <span style="font-size: 80px; color:green"><i class="fas fa-user-plus"></i></span>
    <h2 class="sale">Forma za registraciju</h2>
    <p class="lead">Prilikom registracije na aplikaciju, morate popuniti sva dostupna polja, vasa prijava ce 
    	zatim biti prosledjena bibliotekarima na dalju obradu. Hvala na strpljenju.</p>
    	<p class="lead">Ukoliko zelite da se vratite na pocetnu stranicu, kliknite <a href="${pageContext.request.contextPath}/">OVDE!</a></p>
  </div>
<form:form class="needs-validation" action="${pageContext.request.contextPath}/registration"
 			   method="POST">
<div class="col-md-12 order-md-1">
      <h4 class="mb-3">Novi Korisnik</h4>
        <div class="row">
          <div class="col-md-6 mb-3">
            <label for="name"></label>
            <input type="text" class="form-control" id="name" name="name" placeholder="Unesite vase Ime" value="" required>
            <div class="invalid-feedback">
              Molimo Vas unesite vase ime.
            </div>
          </div>
          <div class="col-md-6 mb-3">
            <label for="lastname"></label>
            <input type="text" class="form-control" id="lastname" name="lastname" placeholder="Unesite vase Prezime" value="" required>
            <div class="invalid-feedback">
              Molimo Vas unesite vase prezime.
            </div>
          </div>
        </div>
        <div class="mb-3">
          <label for="username"></label>
          <div class="input-group">
            <input type="text" class="form-control" id="username" name="username" placeholder=" Korisnicko ime" required>
            <div class="invalid-feedback" style="width: 100%;">
              Korisnicko ime je obavezno polje!
            </div>
          </div>
        </div>
        <div class="mb-3">
          <label for="password"></label>
          <div class="input-group">
            <input type="text" class="form-control" id="password" name="password" placeholder="Lozinka" required>
            <div class="invalid-feedback" style="width: 100%;">
              Lozinka je obavezno polje!
            </div>
          </div>
        </div>
        <div class="mb-3">
          <label for="email">Email </label>
          <div class="input-group">
          <div class="input-group-prepend">
              <span class="input-group-text">@</span>
            </div>
          <input type="email" class="form-control" id="email" name="email" placeholder="bajic89@primer.com" required>
          <div class="invalid-feedback">
            Molimo Vas da unesete ispravnu email adresu.
            </div>
          </div>
        </div>
        <div class="mb-4">
          <label for="phoneNumber">Telefon</label>
          <input type="text" class="form-control" id="phoneNumber" name="phoneNumber" placeholder="06012345" required>
          <div class="invalid-feedback">
            Unesite vas broj telefona.
          </div>
        </div>
        <hr class="mb-4">
        
        <div class="custom-control custom-checkbox">
          <input type="checkbox" class="custom-control-input" id="status" name="status" value="0" checked="checked" onclick="return false;">
          <label class="custom-control-label" for="status">Uslovi koriscenja Aplikacije <span class="text-muted">(svi zahtevi su na cekanju dok ih ne odobri nas Admin tim.)</span></label>
        </div>
        
        <hr class="mb-4">

        <h4 class="mb-3">Tip Korisnika</h4>

       <div class="d-block my-3">
          <div class="custom-control custom-radio">
            <input id="admin" name="authorities" type="radio" class="custom-control-input" value="1" checked="checked" required>
            <label class="custom-control-label" for="admin">Administrator</label>
          </div>
          <div class="custom-control custom-radio">
            <input id="profesor" name="authorities" type="radio" class="custom-control-input" value="2" required>
            <label class="custom-control-label" for="profesor">Profesor</label>
          </div>
          <div class="custom-control custom-radio">
            <input id="student" name="authorities" type="radio" class="custom-control-input" value="3" checked="checked" required >
            <label class="custom-control-label" for="student">Student</label>
          </div>
        </div>
        
        <hr class="mb-4">

        <h4 class="mb-3">Pristupnica</h4>
        
        <div class="row">
          <div class="col-md-6 mb-3">
            <label for="dateEnlistment">Datum pristupanja</label>
            <input type="text" class="form-control" id="dateEnlistment" name="dateEnlistment" placeholder="01.01.2020." required>
            <small class="text-muted">Datum kada je poslata prijava.</small>
            <div class="invalid-feedback">
              Ovo polje je obavezno!
            </div>
          </div>
          <div class="col-md-6 mb-3">
            <label for="lastPayment">Datum uplate</label>
            <input type="text" class="form-control" id="lastPayment" name="lastPayment" placeholder="01.01.2020." required>
            <div class="invalid-feedback">
              Ovo polje je obavezno!
            </div>
          </div>
          <div class="d-block my-3">
          <div class="custom-control custom-radio">
            <input id="limited" name="typeOfMembershipFee" type="radio" class="custom-control-input" value="limited" checked="checked" required>
            <label class="custom-control-label" for="limited">Limited</label>
          </div>
          <div class="custom-control custom-radio">
            <input id="unlimited" name="typeOfMembershipFee" type="radio" class="custom-control-input" value="unlimited" required>
            <label class="custom-control-label" for="unlimited">Unlimited</label>
          </div>
          	</div>
        </div>
        </div>
        <input class="btn btn-success btn-lg btn-block" type="submit" value="Registruj me">
        <input class="btn btn-danger btn-lg btn-block" type="reset" value="Resetuj podatke">
        </form:form>
        
        </div>
        
        <footer class="my-5 pt-5 text-muted text-center text-small">
    <p class="mb-1">&copy; 2019-2020 Web biblioteka</p>
    </footer>
        
<!--   <div id="formDiv">
    <h2>Unos novog korisnika:</h2>
    <form:form action="${pageContext.request.contextPath}/registration"
 			   method="POST">
 			   
    <table> 
    	
        <tr>
            <td align="right">Ime: <input type="text" id="name" name="name" value="" required></td>
        </tr>
        <tr>
            <td align="right">Prezime: <input type="text" id="lastname" name="lastname" value="" required></td>
        </tr>
        <tr>
            <td align="right">Korisnicko ime: <input type="text" id="username" name="username" value="" required></td>
        </tr>
        <tr>
            <td align="right">Lozinka: <input type="password" id="password" name="password" value="" required></td>
        </tr>
        <tr>
            <td align="right">E-mail: <input type="email" id="email" name="email" value="" required></td>
        </tr>
        <tr>
            <td align="right">Telefon: <input type="text" id="phoneNumber" name="phoneNumber" value="" required></td>
        </tr>
          <tr>
            <td align="right">Uslovi koriscenja: <input type="checkbox" id="status" name="status" value="0" checked="checked">(svi zahtevi su na cekanju dok ih ne odobri nas Admin tim.)<br>
        </tr> 
        <tr>
            <td align="center">Tip Korisnika: <br>
                <input type="radio" id="authorities" name="authorities" value="1">Administrator<br>
                <input type="radio" id="authorities" name="authorities" value="2">Profesor<br>
				<input type="radio" id="authorities" name="authorities" value="3" checked="checked">Student<br>
             </td>
        </tr>
       
    </table>        
    <h2>Pristupnica:</h2>
    <table>
    	<tr>
    		<td align="right">Datum pristupanja:<input id="dateEnlistment" name="dateEnlistment" value="" required></td>
    	</tr>
    	<tr>
    		<td align="right">Datum uplate:<input id="lastPayment" name="lastPayment" value="" required></td>
    	</tr>
    	<tr>
            <td align="center">Tip clanarine: <br>
                <input type="radio" id="typeOfMembershipFee" name="typeOfMembershipFee" value="limited" checked="checked">Limited<br>
                <input type="radio" id="typeOfMembershipFee" name="typeOfMembershipFee" value="unlimited" >Unlimited<br>
             </td>
        </tr>
        <br>
         <tr>
			<td><input type="submit" value="Prijavi me"></td>
		</tr>
		<tr>
			<td><input type="reset" value="Reset"></td>
		</tr>
		
    </table>
    </form:form>
    
    <hr>
	<a href="${pageContext.request.contextPath}/">Back to Home Page</a>
    
</div> -->

<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
      <script>window.jQuery || document.write('<script src="/docs/4.4/assets/js/vendor/jquery.slim.min.js"><\/script>')</script><script src="/docs/4.4/dist/js/bootstrap.bundle.min.js" integrity="sha384-6khuMg9gaYr5AxOqhkVIODVIvm9ynTT5J4V1cfthmT+emCG6yVmEZsRHdxlotUnm" crossorigin="anonymous"></script>
</body>
</html>