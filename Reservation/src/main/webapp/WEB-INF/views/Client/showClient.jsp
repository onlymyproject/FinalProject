<%@include file="taglib_includes.jsp" %>
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
					<h2 class="text-warning">Détails sur le client</h2>
					<p>
						<span class="label label-success">${client.nom} ${client.prenom}</span>
					</p>


					<div class="panel panel-success">
						<!-- Default panel contents -->
						<div class="panel-heading">Informations</div>
						<div class="panel-body">
							<p>
								<c:if test="${empty client}">
									<p>
										<span class="text-warning">Pas de client trouvé</span>
									</p>

								</c:if>
							</p>
						</div>
						

						<div>

							

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

									

											<tr>
												<td>${client.nom}</td>
												<td>${client.prenom}</td>
												<td>${client.email}</td>
												<td>#${client.IDReservation}</td>
												<td>
													<a href="${pageContext.request.contextPath}/client/reservation/check/${client.IDReservation}">Détails de la réservation</a><br>
													<a href="${pageContext.request.contextPath}/reservation/calendar">Retour sur l'agenda </a><br />
													<a href="${pageContext.request.contextPath}/clients">Tous les clients </a>
												</td>

												
											</tr>
										

									</tbody>
								</table>
								</div>

							
						

						</div>


						


					</div>
					<jsp:include page="../Admin/footer.jsp"></jsp:include>
					<div>
						
					</div>
				</div>
				
			</div>
		</div>
</body>
</html>