<%@include file="taglib_includes.jsp" %>
<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
					<h2 class="text-warning">Liste Clients</h2>
					<p>
						<span class="label label-success">Gestion des clients</span>
					</p>




					<div class="panel panel-success">
						<!-- Default panel contents -->
						<div class="panel-heading">Liste clients</div>
						<div class="panel-body">
							<p>
								<c:if test="${empty clients}">
									<p>
										<span class="text-warning">Pas de clients</span>
									</p>

								</c:if>
							</p>
						</div>

						<div>

							<c:if test="${! empty clients}">

								<table border="0" cellpadding="0" cellspacing="0" class="table">
									<thead>
										<tr>
											<th width="10%">Nom</th>
											<th width="15%">Prénom</th>
											<th width="15%">Email</th>
											<th width="15%">Référence Réservation</th>
											<th width="10%">Actions</th>
										</tr>
									</thead>
									<tbody>

										<c:forEach items="${clients}" var="client">

											<tr>
												<td>${client.nom}</td>
												<td>${client.prenom}</td>
												<td>${client.email}</td>
												<td>#${client.IDReservation}</td>

												<td>
													<a href="${pageContext.request.contextPath}/client/reservation/check/${client.IDReservation}">Voir réservation</a><br>
													<a href="${pageContext.request.contextPath}/client/delete/${client.id}"onclick="return confirm('Voulez vous vraiment soupprimr ce client?')">Delete</a><br></td>
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