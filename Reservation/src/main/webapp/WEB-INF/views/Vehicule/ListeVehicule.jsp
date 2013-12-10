<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Liste vehicules</title>
<link type="text/css"
	href="<%=request.getContextPath() %>/resources/bootstrap/css/bootstrap.css"
	rel="stylesheet" />



</head>
<body>
	<jsp:include page="../Admin/header.jsp"></jsp:include>

	<jsp:include page="ShowCars.jsp"></jsp:include>

	<jsp:include page="../Admin/footer.jsp"></jsp:include>

</body>
</html>