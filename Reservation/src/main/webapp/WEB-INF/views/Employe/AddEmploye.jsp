<%@include file="taglib_includes.jsp" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link type="text/css" href="<%=request.getContextPath() %>/resources/bootstrap/css/bootstrap.css" rel="stylesheet" />
<link type="text/css" href="<%=request.getContextPath() %>/resources/dist/css/bootstrap.min.css" rel="stylesheet" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style>
.error{
color: red
}
</style>

<title>Insert title here</title>
</head>
<body>

	<jsp:include page="../Admin/header.jsp"></jsp:include>
	  	<div>
 	
 </div> 
	<div class="container">

		<div class="row">
			<!-- Afficher des employees -->
		
		<c:if test="${!empty employees}">
				<jsp:include page="ShowEmployees.jsp"></jsp:include>
		</c:if>
		
			<div class="span3">
				<div class="well">
					<h2 class="text-warning">Ajouter un employée</h2>
					<p>
						<span class="label label-success"></span>
					</p>
					
					
					<form:form method="POST" action="${pageContext.request.contextPath}/employe/add/process" modelAttribute="employe">
						<div class="control-group">
							<label class="control-label">Nom</label>
							<div class="controls">
								<form:input path="nom" /></td>
								<form:errors cssClass="error" path="nom"></form:errors>
							</div>
						</div>
						
						
						<div class="control-group">
  							<label class="control-label" >Prénom</label>
  							<div class="controls">
    						<form:input id="PrenomEmploye" name="PrenomEmploye" placeholder="" class="input-xlarge" type="text" path="prenom"/>
    						<form:errors cssClass="error" path="prenom"></form:errors>
  							</div>
						</div>
						
						<div class="form-actions">
							<button type="submit" class="btn btn-success">Submit</button>
							<button type="button" class="btn btn-danger">Cancel</button>
						</div>

				</form:form>
					


				</div>
				<p>
				<a href="${pageContext.request.contextPath}/employe/add">Afficher
					tous les employées</a>
			</p>
			</div>
			
		</div>
		<jsp:include page="../Admin/footer.jsp"></jsp:include>
	</div>
</body>
</html>