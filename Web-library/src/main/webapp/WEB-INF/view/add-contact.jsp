<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<script src="https://kit.fontawesome.com/092a61b315.js" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
<style type="text/css">

.container{
	padding-top:80px;
	
}

</style>
<meta charset="ISO-8859-1">
<title>Spring MVC List of objects display</title>
</head>
<body>

<form:form method="POST" action="${pageContext.request.contextPath}/save" modelAttribute="Users"> 
<div class="container">
<table border="1" cellpadding="3">
<h2 class="text-center display-4">Lista Korisnika</h2>
<hr class="mb-4">
<br>

	<script type="text/javascript">
	/*   function selectAll(){
				var items=document.getElementsByName('checkAll');
				for(var i=0; i<items.length; i++){
					if(items[i].type=='checkbox')
						items[i].checked=true;
				}
			}
           
           function UnSelectAll(){
				var items=document.getElementsByName('checkAll');
				for(var i=0; i<items.length; i++){
					if(items[i].type=='checkbox')
						items[i].checked=false;
				}
			} */
           
           /* function saveSelected(user){
        	   var selectedUsers = [];
        	   var items=document.getElementsByName('checkAll');
				for(var i=0; i<items.length; i++){
					if(items[i].type=='checkbox' && items[i].checked) {
						//selectedUsers.push(users[i]);
					}
						
				}
				console.log(user);
           } */
	</script>
	
<tr>
<th>R.br</th>
<th class="text-center">Ime</th>
<th class="text-center">Prezime</th>
<th class="text-center">Email</th>
<th class="text-center">Korisnicko ime</th>
<th class="text-center">Telefon</th>
<th class="text-center table-warning">Status</th>
<th class="text-center">Tip Korisnika</th>
</tr>
<c:forEach items="${Users.users}" var="user" varStatus="status">
    <tr>
    	<td align="center">${status.count}</td>
    	<input type="hidden" name="users[${status.index}].id" value="${user.id}"/>
    	<input type="hidden" name="users[${status.index}].password" value="${user.password}"/>
        <td><form:input class="form-control" path="users[${status.index}].name" value="${user.name}" readonly="true"/></td>
        <td><form:input class="form-control" path="users[${status.index}].lastname" value="${user.lastname}" readonly="true"/></td>
        <td><form:input class="form-control" path="users[${status.index}].email" value="${user.email}" readonly="true"/></td>
        <td><form:input class="form-control" path="users[${status.index}].username" value="${user.username}" readonly="true"/></td>
        <td><form:input class="form-control" path="users[${status.index}].phoneNumber" value="${user.phoneNumber}" readonly="true"/></td>
        <td class="table-warning"><form:input class="form-control text-center" path="users[${status.index}].status" value="${user.status}"  /></td>
        <td><form:input class="form-control text-center" path="users[${status.index}].authorities" value="${user.authorities}" readonly="true"/></td>
        
        
    </tr>
    	
    	
</c:forEach>
</table>
<br>
<br>
<div align="center">
<!--  <input align="center" type="button" name="checkAll" onclick='selectAll()' value="Selektuj" > -->
<input class="btn btn-success btn-lg " align="center" type="submit" value="Azuriraj Podatke" />
 

</div>
</form:form>

<br>
<a href="${pageContext.request.contextPath}/home"><b>Vrati se na pocetnu stranu</b></a>
</div>
<footer class="my-5 pt-5 text-muted text-center text-small">
<hr>
    <p class="mb-1">&copy; 2019-2020 Web biblioteka</p>
    </footer>
    </div>
</body>
</html>