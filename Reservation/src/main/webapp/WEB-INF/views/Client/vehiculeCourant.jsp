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
					<h2 class="text-warning">Véhicule demandé</h2>
					<p>
						<span class="label label-success">Véhiule demandé</span>
					</p>


					<div class="panel panel-success">
						<!-- Default panel contents -->
						<div class="panel-heading">Véhicule</div>
						<div class="panel-body">
							<p>
								<c:if test="${empty vehiculeCourant}">
									<p>
										<span class="text-warning">Pas de véhicule</span>
									</p>

								</c:if>
							</p>
						</div>
						

						<div>

							

								<table border="0" cellpadding="0" cellspacing="0" class="table">
									<thead>
										<tr>
											<th width="10%">Marque</th>
											<th width="15%">Type</th>
											<th width="10%">Carbulant</th>
											<th width="10%">Année</th>
											<th width="10%">Action</th>
										</tr>
									</thead>
									<tbody>

									

											<tr>
												<td>${vehiculeCourant.marque}</td>
												<td>${vehiculeCourant.type}</td>
												<td>${vehiculeCourant.carbulant}</td>
												<td>${vehiculeCourant.annee}</td>
												<td>
													<a href="${pageContext.request.contextPath}/clients">retour </a>
												</td>

												
											</tr>
										

									</tbody>
								</table>
								</div>

							
						

						</div>

						<jsp:include page="../Admin/footer.jsp"></jsp:include>



					</div>
					<div>
						
					</div>
				</div>
				
			</div>
		</div>
</body>
</html>