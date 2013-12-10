<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Insert title here</title>
</head>
<body>
<div class="container">
		<div class="row">


			<div class="span3">
				<div class="well">
					<h2 class="text-warning">Liste des réservations</h2>
					<p>
						<span class="label label-success">Gestion des réservations</span>
					</p>

					<div class="panel panel-success">
						<!-- Default panel contents -->
						<div class="panel-heading">Liste de réservations</div>
						<div class="panel-body">
							<p>
								<c:if test="${empty reservations}">
									<p>
										<span class="text-warning">Pas de réservations</span>
									</p>

								</c:if>
							</p>
						</div>

						<div>





							<c:if test="${! empty reservations}">

								<table border="0" cellpadding="0" cellspacing="0" class="table">
									<thead>
										<tr>
											<th width="10%">Marque</th>
											<th width="15%">Date début</th>
											<th width="10%">Date retour</th>
											<th width="10%">Nb sièges-bebe</th>
											<th width="15%">Nb rehausseurs</th>
											<th width="10%">Nb siège enfant</th>
										</tr>
									</thead>
									<tbody>

										<c:forEach items="${reservations}" var="reservation">

											<tr>
												<td>${reservation.marqueVehicule}</td>
												<td>${reservation.debut}</td>
												<td>${reservation.retour}</td>
												<td>${reservation.nbsiegebebe}</td>
												<td>${reservation.nbrehausseur}</td>
												<td>${reservation.nbsiegeenfant}</td>

												
											</tr>
										</c:forEach>

									</tbody>
								</table>

							</c:if>

						</div>





					</div>
					<div>
						
						
					</div>
				</div>
			</div>
		</div>
</body>
</html>