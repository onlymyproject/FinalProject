<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<script type="text/javascript">

</script>
<title>Insert title here</title>
</head>
<body>


	<div class="container">
		<div class="row">


			<div class="span3">
				<div class="well">
					<h2 class="text-warning">Liste véhicules</h2>
					<p>
						<span class="label label-success">Gestion de véhicules</span>
					</p>




					<div class="panel panel-success">
						<!-- Default panel contents -->
						<div class="panel-heading">Liste de véhicules</div>
						<div class="panel-body">
							<p>
								<c:if test="${empty vehicules}">
									<p>
										<span class="text-warning">Pas de véhicules disponibles</span>
									</p>

								</c:if>
							</p>
						</div>

						<div>





							<c:if test="${! empty vehicules}">

								<table border="0" cellpadding="0" cellspacing="0" class="table">
									<thead>
										<tr>
											<th width="10%">Marque</th>
											<th width="15%">Type</th>
											<th width="10%">Annee</th>
											<th width="10%">Actions</th>
										</tr>
									</thead>
									<tbody>

										<c:forEach items="${vehicules}" var="vehicule">

											<tr>
												<td>${vehicule.marque}</td>
												<td>${vehicule.type}</td>
												<td>${vehicule.annee}</td>

												<td>
												<a href="${pageContext.request.contextPath}/vehicule/edit/${vehicule.id}">Editer</a><br>
												<a href="${pageContext.request.contextPath}/vehicule/delete/${vehicule.id}"	onclick="return confirm('Voulez vous vraiment soupprimer ce vehicule ${vehicule.marque}?')">Supprimer</a><br></td>
											</tr>
										</c:forEach>

									</tbody>
								</table>

							</c:if>

						</div>





					</div>
					<div>
						<p>
							<a href="${pageContext.request.contextPath}/vehicule/add">Ajouter
								nouveau véhicule</a>
						</p>
					</div>
				</div>
			</div>
		</div>
</body>
</html>