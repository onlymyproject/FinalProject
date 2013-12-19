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


	
	<jsp:include page="header_reservation.jsp"></jsp:include>


	<div class="container">

		<div class="row">
			<div class="span3">
				<div class="well">
					<h2 class="text-warning">Confirmation</h2>
					<p>
						<span class="label label-success">Réservation validée</span>
					</p>




					<div class="panel panel-success">
						<!-- Default panel contents -->
						<div class="panel-heading">Votre réservation a été enregistré</div>
						<div class="panel-body">
							<p>
								<a class="btn btn-success btn-large" href="${pageContext.request.contextPath}"><i
							class="icon-ok"></i> Retour</a>
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