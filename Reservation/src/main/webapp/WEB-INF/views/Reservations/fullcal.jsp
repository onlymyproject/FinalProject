<%@include file="taglib_includes.jsp" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link type="text/css" href="<%=request.getContextPath() %>/resources/bootstrap/css/bootstrap.css" rel="stylesheet" />
<link type="text/css" href="<%=request.getContextPath() %>/resources/dist/css/bootstrap.min.css" rel="stylesheet" />


<link rel="stylesheet"
		href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css">
		<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
		<script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
<title>Insert title here</title>
<link href="<%=request.getContextPath() %>/resources/fullcalendar-1.6.4/fullcalendar/fullcalendar.css" rel="stylesheet" />
<link href="<%=request.getContextPath() %>/resources/fullcalendar-1.6.4/fullcalendar/fullcalendar.print.css" rel="stylesheet" media="print" />
<script src="<%=request.getContextPath() %>/resources/fullcalendar-1.6.4/lib/jquery.min.js"></script>
<script src="<%=request.getContextPath() %>/resources/fullcalendar-1.6.4/lib/jquery-ui.custom.min.js"></script>
<script src="<%=request.getContextPath() %>/resources/fullcalendar-1.6.4/fullcalendar/fullcalendar.min.js"></script>
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
			editable: false,
			events: [
							
							
						<c:forEach items="${events}" var="event">
							{
											
											title: '${event.title}',
											/*start: new Date(y, m, d-5),
											end: new Date(y, m, d-2),*/
											start: '${event.start}',
											end: '${event.end}',
											url: '${event.url}',
											textColor: '#FFFFF0',
							},
						</c:forEach>
						{
							title: '',
							start: new Date(2000, m, 1)
						}
						/*{
							id: 999,
							title: 'Repeating Event',
							start: new Date(y, m, d-3, 16, 0),
							allDay: false
						},
						{
							id: 999,
							title: 'Repeating Event',
							start: new Date(y, m, d+4, 16, 0),
							allDay: false
						},
						{
							title: 'Meeting',
							start: new Date(y, m, d, 10, 30),
							allDay: false
						},
						{
							title: 'Lunch',
							start: new Date(y, m, d, 12, 0),
							end: new Date(y, m, d, 14, 0),
							allDay: false
						},
						{
							title: 'Birthday Party',
							start: new Date(y, m, d+1, 19, 0),
							end: new Date(y, m, d+1, 22, 30),
							allDay: false
						},
						{
							title: 'Click for Google',
							start: new Date(y, m, 28),
							end: new Date(y, m, 29),
							url: 'http://google.com/'
						}
						*/
					],
					eventColor: '#378006',
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
						<div class="panel-heading"></div>
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