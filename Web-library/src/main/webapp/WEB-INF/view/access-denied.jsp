<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="https://kit.fontawesome.com/092a61b315.js" crossorigin="anonymous"></script>
	<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
<link href="http://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Pristup odbijen</title>
<style type="text/css">

	body {
    background: url(https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQXYpYq3aWccK2rxWkm0PuyJrh9FD0A1Er3FxhzFaKXh4IoRdlg);
    background-size: cover;
    background-position: center; 
   
}

body,
html {
    width: 100%;
    height: 100%;
    font-family: "Lato";
    color: white;
}

h1 {
	font-weight: 700;
	font-size: 5em;
}
.content{
	padding-top: 15%;
	padding-bottom: 50px;
	text-align: center;
    text-shadow: 0px 4px 3px rgba(0,0,0,0.4),
                 0px 8px 13px rgba(0,0,0,0.1),
                 0px 18px 23px rgba(0,0,0,0.1);
}

hr {
    width: 400px;
    border-top: 1px solid #f8f8f8;
    border-bottom: 1px solid rgba(0,0,0,0.2);
}

</style>
</head>
<body>
<div class="container">
 	<div class="row">
 		<div class="col-lg-12">
 			<div class="content">
 				<h1>Nije vam dozvoljen pristup ovom linku!</h1>
 				<br>
 				
 				<a class="btn btn-default btn-lg" href="${pageContext.request.contextPath}/home"><i class="fas fa-home"> </i>  Home</a>
 			</div>
 		</div>
 	</div>
 </div>
 
 <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.4.js"></script>
 <script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</body>
</html>