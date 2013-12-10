<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link type="text/css"
	href="<%=request.getContextPath() %>/resources/bootstrap/css/bootstrap.css"
	rel="stylesheet" />
<title>Home</title>
</head>
<body>
	<jsp:include page="header_reservation.jsp"></jsp:include>
	<jsp:include page="gestion.jsp"></jsp:include>


	<jsp:include page="footer_reservation.jsp"></jsp:include>
</body>
</html>
