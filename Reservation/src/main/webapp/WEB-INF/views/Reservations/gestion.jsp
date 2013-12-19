<%@include file="taglib_includes.jsp" %>
<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<meta charset="utf-8">
	<link rel="stylesheet"
		href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css">
		<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
		<script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>

		<script>
$(function() {
$( "#from" ).datepicker({
defaultDate: "+1w",
changeMonth: true,
numberOfMonths: 3,
onClose: function( selectedDate ) {
$( "#to" ).datepicker( "option", "minDate", selectedDate );
}
});
$( "#to" ).datepicker({
defaultDate: "+1w",
changeMonth: true,
numberOfMonths: 3,
onClose: function( selectedDate ) {
$( "#from" ).datepicker( "option", "maxDate", selectedDate );
}
});
});
</script>

		<title>Insert title here</title>
</head>
<body>
	<jsp:include page="header_reservation.jsp"></jsp:include>

	<div class="container">
		<div class="row">


			<div class="span3">
				<div class="well">
					<h2 class="text-warning">Réservations</h2>
					<p>
						<span class="label label-success"></span>
					</p>




					<div class="panel panel-success">
						<!-- Default panel contents -->
						<div class="panel-heading">Réservations</div>
						<div class="panel-body">
							<p>
								<c:if test="${empty vehicules}">
									<p>
										<span class="text-warning">Oops réservation fermée!!</span>
									</p>
								</c:if>

								<c:if test="${!empty vehicules}">
								 
									<form class="form-horizontal" method="post"
										action="${pageContext.request.contextPath}/reservation/demand"
										name="addReservation" id="addReservation">

										<label>Selectionnez votre véhicule</label> 
										<select	class="combobox" name="marqueVehicule">
											<option >Selectionnez le véhicule</option>
											<c:forEach items="${vehicules}" var="vehicule">
												<option>${vehicule.marque }</option>
											</c:forEach>
										</select>
										<p>
											<label for="from">De</label> <input type="text" id="from"
												name="debut"> <label for="to">à</label> <input
												type="text" id="to" name="retour">
										</p>

										<p>
											<label> Siège-bébé </label> 
											<select class="combobox" name="nbsiegebebe">
												<option>0</option>
												<option>1</option>
												<option>2</option>
												<option>3</option>
											</select>
										</p>

										<p>
											
											<label>	Réhausseur </label> 
											<select class="combobox" name="nbrehausseur">
												<option>0</option>
												<option>1</option>
												<option>2</option>
												<option>3</option>
											</select>
										</p>

										<p>
											
											<label>	Siège-enfant </label> 
											<select class="combobox" name="nbsiegeenfant">
												<option>0</option>
												<option>1</option>
												<option>2</option>
												<option>3</option>
											</select>
										</p>

										<div class="form-actions">
											<button type="submit" class="btn btn-success"
												onclick="return confirm('Voulez vous vraiment valider cette réservation ?')">Réserver maintenant</button>
											<button type="button" class="btn btn-success"
												onclick="return confirm('Voulez vous vraiment valider cette réservation ?')">Payer
												Maintenant</button>
											<button type="button" class="btn btn-danger">Cancel</button>
										</div>
									</form>
									
								</c:if>

							</p>
						</div>

						<div></div>
					</div>
					<div></div>
				</div>
			</div>
		</div>
		<jsp:include page="footer_reservation.jsp"></jsp:include>
</body>
</html>