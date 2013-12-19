<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>



<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link type="text/css" href="<%=request.getContextPath() %>/resources/bootstrap/css/bootstrap.css" rel="stylesheet" />
<link type="text/css" href="<%=request.getContextPath() %>/resources/dist/css/bootstrap.min.css" rel="stylesheet" />

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>


</head>
<body>

	<jsp:include page="../Admin/header.jsp"></jsp:include>
	  	<div>
 	
 </div> 
	<div class="container">

		<div class="row">
			<!-- Afficher des vehicules dispo -->
			<c:if test="${!empty vehicules}">
				<jsp:include page="ShowCars.jsp"></jsp:include>
			</c:if>

			<div class="span3">
				<div class="well">
					<h2 class="text-warning">Ajouter un véhicule</h2>
					<p>
						<span class="label label-danger">${messageEchec}</span>
					</p>
					<form class="form-horizontal" method="post"
						action="${pageContext.request.contextPath}/vehicule/add/process"
						name="addVehicule" id="addVehicule">
						<div class="control-group">
							<label class="control-label">Marque</label>
							<div class="controls">
								<input type="text" name="marque" id="marque" title="marque"
									value="">
							</div>
						</div>

						<div class="control-group">
							<label class="control-label">Type</label>
							<div class="controls">
								<input type="text" name="type" id="type" title="type" value="">
							</div>
						</div>

						<div class="control-group">
							<label class="control-label">Carburant</label>
							<div class="controls">
								<input type="text" name="carbulant" id="carbulant"
									title="carbulant" value="">
							</div>
						</div>

						<div class="control-group">
							<label class="control-label">Année</label>
							<div class="controls">
								<input type="text" name="annee" id="annee" title="annee"
									value="">
							</div>
						</div>

						<div class="form-actions">
							<button type="submit" class="btn btn-success">Submit</button>
							<button type="button" class="btn btn-danger">Cancel</button>
						</div>
					</form>


				</div>
			</div>
			<p>
				<a href="${pageContext.request.contextPath}/vehicule/add">Afficher
					tous les vehicules</a>
			</p>
		</div>
	</div>


	<jsp:include page="../Admin/footer.jsp"></jsp:include>

</body>
</html>