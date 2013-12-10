<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@include file="taglib_includes.jsp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<form:form action="${pageContext.request.contextPath}/employe/add/process" modelAttribute="newEmploye"> 	
	<table>
		<tr>
			<td>Nom:</td>
            <td><form:input path="nom" size="100"/></td>
		</tr>
		<tr>
			<td>Prenom</td>
			<td><form:input path="prenom" size="100"/></td>
		</tr>		
		<tr>
			<td colspan="2" align="center">
				<input type="submit" value="Submit" />	
			</td>
		</tr>
	</table>
</form:form>

</body>
</html>