<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link type="text/css" href="<%=request.getContextPath() %>/resources/bootstrap/css/bootstrap.css" rel="stylesheet" />
<title></title>
</head>
<body>
	<ul class="nav nav-tabs">
		<li><a href="${pageContext.request.contextPath}">Home</a></li>
		<li><a href="${pageContext.request.contextPath}/vehicule/ListeVehicule">Véhicules</a></li>
		<li><a href="${pageContext.request.contextPath}/employe/ListeEmployes">Employées</a></li>
		<li><a href="${pageContext.request.contextPath}/reservation/valider">Réservations</a></li>
		<li><a href="${pageContext.request.contextPath}/clients">Clients</a></li>
		<li><a href="${pageContext.request.contextPath}/reservation/calendar">Calendar</a></li>
		
	</ul>



</body>
</html>