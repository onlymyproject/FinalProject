<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<link type="text/css" href="<%=request.getContextPath() %>/resources/bootstrap/css/bootstrap.css" rel="stylesheet" />
<link type="text/css" href="<%=request.getContextPath() %>/resources/dist/css/bootstrap.min.css" rel="stylesheet" />

<script type="text/javascript" src="<%=request.getContextPath() %>/resources/fullcalendar-1.6.4/fullcalendar/fullcalendar.js"></script>


<link rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" />
<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
<script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
<link rel="stylesheet" href="/resources/demos/style.css" />

  
    <script type="text/javascript">
    $(document).ready(function() {            
        $('#calendar').fullCalendar({
        	theme: true,
            editable: false,
            events: "/CalendarProject/CalendarJsonServlet"
        });
    }); 
    </script>
    
     <script>
$(function() {
$( "#datepicker" ).datepicker({
changeMonth: true,
changeYear: true
});
});
</script>

<title>Insert title here</title>
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
						
							<div id="calendar"></div>
							<p>Date: <input type="text" id="datepicker" /></p>
						
						</div>
					</div>


				</div>
			</div>
			<jsp:include page="../Admin/footer.jsp"></jsp:include>
		</div>
	</div>



</body>
</html>