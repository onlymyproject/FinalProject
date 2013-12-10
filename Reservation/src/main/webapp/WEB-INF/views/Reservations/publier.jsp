<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<link type="text/css"
	href="<%=request.getContextPath() %>/resources/bootstrap/css/bootstrap.css"
	rel="stylesheet" />


<meta charset="utf-8">
	<link rel="stylesheet"
		href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css">
		<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
		<script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
		<script>
$(function() {
$( "#datepicker" ).datepicker();
});
</script>



		<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="span3">
				<div class="well">
					<h2 class="text-warning">${message }</h2>
					<p>
						<span class="label label-success">Options sur les
							validations</span>
					</p>

					<form class="form-horizontal" method="post"
						action="${pageContext.request.contextPath}/reservation/valider/process"
						name="validerVehicules" id="validerVehicules">
						Publier tous les véhicules<input type="checkbox" name="vehicles"
							value="vehicules" checked="checked"><br>


								<p>
									Date: <input type="text" id="datepicker">
								</p> Nombre de véhicules : <select class="input-small">
									<option>5</option>
									<option>10</option>
									<option>15</option>
							</select>

								<div class="form-actions">
									<button type="submit" class="btn btn-success">Submit</button>
									<button type="button" class="btn btn-danger">Cancel</button>
								</div>
					</form>

					<hr>
				</div>
			</div>
		</div>
	</div>


</body>
</html>