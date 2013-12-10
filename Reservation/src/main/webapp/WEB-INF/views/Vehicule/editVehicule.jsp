<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


	<jsp:include page="../Admin/header.jsp"></jsp:include>

	<div class="container">

		<div class="row">


			<div class="span3">
				<div class="well">
					<h2 class="text-warning">${message }</h2>
					<p>
						<span class="label label-success">${message }</span>
					</p>
					<form class="form-horizontal" method="post"
						action="${pageContext.request.contextPath}/vehicule/edit/${vehicule.id}"
						name="addVehicule" id="addVehicule">
						<div class="control-group">
							<label class="control-label">Marque</label>
							<div class="controls">
								<input type="text" name="marque" id="marque" title="marque"
									value="${vehicule.marque} ">
							</div>
						</div>

						<div class="control-group">
							<label class="control-label">Type</label>
							<div class="controls">
								<input type="text" name="type" id="lastName" title="type"
									value="${vehicule.type}">
							</div>
						</div>

						<div class="control-group">
							<label class="control-label">Carbulant</label>
							<div class="controls">
								<input type="text" name="carbulant" id="carbulant"
									title="carbulant" value="${vehicule.carbulant}">
							</div>
						</div>

						<div class="control-group">
							<label class="control-label">Année</label>
							<div class="controls">
								<input type="text" name="annee" id="annee" title="annee"
									value="${vehicule.annee}">
							</div>
						</div>

						<div class="form-actions">
							<button type="submit" class="btn btn-success">Submit</button>
							<button type="button" class="btn btn-danger">Cancel</button>
						</div>
					</form>


				</div>
				<p>
				<a href="${pageContext.request.contextPath}/vehicule/ListeVehicule">Afficher
					tous les vehicules</a>
			</p>
			</div>
			
		</div>
		<jsp:include page="../Admin/footer.jsp"></jsp:include>
	</div>
	


</body>
</html>