<%@include file="taglib_includes.jsp" %>
<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<link type="text/css"
	href="<%=request.getContextPath() %>/resources/bootstrap/css/bootstrap.css"
	rel="stylesheet" />
<link type="text/css" href="<%=request.getContextPath() %>/resources/dist/css/bootstrap.min.css" rel="stylesheet" />
<title>Insert title here</title>
</head>
<body>

	<jsp:include page="header_reservation.jsp"></jsp:include>


	<div class="container">

		<div class="row">
			<div class="span3">
				<div class="well">
					<h2 class="text-warning">Vos informations personnelles</h2>
					<p>
						<span class="label label-danger">${messageEchec}</span>
					</p>




					<div class="panel panel-success">
						<!-- Default panel contents -->
						<div class="panel-heading">Tous les champs sont obligatoires</div>
						<div class="panel-body">
							<p>
						
						 
					<form:form method="POST" action="${pageContext.request.contextPath}/reservation/conformationclient" modelAttribute="client">
						<div class="control-group">
							<label class="control-label">Nom</label>
							<div class="controls">
								<form:input path="nom" placeholder="Nom"/></td>
								<form:errors cssClass="error" path="nom"></form:errors>
							</div>
						</div>
						
						
						<div class="control-group">
  							<label class="control-label" >Prénom</label>
  							<div class="controls">
    						<form:input id="PrenomEmploye" name="PrenomClient" placeholder="Prénom" class="input-xlarge" type="text" path="prenom"/>
    						<form:errors cssClass="error" path="prenom"></form:errors>
  							</div>
						</div>
						
						<div class="control-group">
							<label class="control-label">Adresse mail</label>
							<div class="controls">
							<form:input path="email" placeholder="Email" />
							<form:errors cssClass="error" path="email"></form:errors>
							
							</div>
						</div>
						
						<div class="form-actions">
							<button type="submit" class="btn btn-success">Submit</button>
							<a href="${pageContext.request.contextPath}">
							<button type="button" class="btn btn-danger">Cancel</button>
							</a>
						</div>

				</form:form>
					

							</p>
						</div>

						<div></div>
					</div>


				</div>
			</div>
			<jsp:include page="footer_reservation.jsp"></jsp:include>
		</div>
	</div>



</body>
</html>