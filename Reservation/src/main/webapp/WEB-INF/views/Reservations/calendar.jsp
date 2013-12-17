<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<link type="text/css" href="<%=request.getContextPath() %>/resources/bootstrap/css/bootstrap.css" rel="stylesheet" />
<link type="text/css" href="<%=request.getContextPath() %>/resources/dist/css/bootstrap.min.css" rel="stylesheet" />



<title>Insert title here</title>

<link href='/fullcalendar-1.6.4/fullcalendar/fullcalendar.css' rel='stylesheet' />
<link href='/fullcalendar-1.6.4/fullcalendar/fullcalendar.print.css' rel='stylesheet' media='print' />
<script src='/fullcalendar-1.6.4/lib/jquery.min.js'></script>
<script src='/fullcalendar-1.6.4/lib/jquery-ui.custom.min.js'></script>
<script src='/fullcalendar-1.6.4/fullcalendar/fullcalendar.min.js'></script>
<script>
	$(document).ready(function() {
	
		var date = new Date();
		var d = date.getDate();
		var m = date.getMonth();
		var y = date.getFullYear();
		
		$('#calendar').fullCalendar({
			header: {
				left: 'prev,next today',
				center: 'title',
				right: 'month,basicWeek,basicDay'
			},
			editable: true,
			
		});
		
	});

</script>
<style>
	body {
		margin-top: 40px;
		font-size: 14px;
		font-family: "Lucida Grande",Helvetica,Arial,Verdana,sans-serif;
		}

	#calendar {
		width: 900px;
		margin: 0 auto;
		border-color: red;
		}

</style>
</head>
<body>

	<jsp:include page="../Admin/header.jsp"></jsp:include>


	<div class="container">

		<div class="row">
			<div class="span3">
				<div class="well">
					<h2 class="text-warning">Réservations et agenda</h2>
					<p>
						<span class="label label-success"></span>
					</p>

					<div class="panel panel-success">
						<!-- Default panel contents -->
						<div class="panel-heading">Réservez maintenant</div>
						<div class="panel-body">
							<p></p>
						</div>

						<div>
						
							<div id='calendar'></div>
						
						</div>
					</div>


				</div>
			</div>
			<jsp:include page="../Admin/footer.jsp"></jsp:include>
		</div>
	</div>



</body>
</html>