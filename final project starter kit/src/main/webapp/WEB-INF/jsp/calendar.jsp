<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  	
  	
<!DOCTYPE html>
<html lang="en" >

<head>
  <meta charset="UTF-8">
  <title>FullCalendar drag & drop events between multiple calendars</title>
  
  
  <link rel='stylesheet prefetch' href='https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/2.2.7/fullcalendar.min.css'>
<link rel='stylesheet prefetch' href='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css'>

      <link rel="stylesheet" href="css/calendar.css">

  
</head>

<body>

  <div id='wrap'>

		        <div id='external-events'>
		          <div id='external-events-listing'>
		            <h4>Draggable Events</h4>
		            <c:forEach items="${qualifiedEvents }" var="events">
		            <div class='fc-event'><c:out value="${events}"/></div>
		            </c:forEach>
		            <div class='fc-event'>Event</div>
		          </div>
		          <p>
		            <input type='checkbox' id='drop-remove' checked='checked' />
		            <label for='drop-remove'>remove after drop</label>
		          </p>
		        </div>
		        
		        <div class="container">
		            <div class="col-md-12">
		              
		              <div class="col-md-6 mb-20">
		                <div id='calendar1'></div>
		              </div>
		              
		              
		              
		            </div>
		        </div>

		        <div style='clear:both'></div>

		</div>
		
  <script src='https://code.jquery.com/jquery-1.11.2.min.js'></script>
<script src='https://code.jquery.com/ui/1.11.2/jquery-ui.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.9.0/moment.min.js'></script>
<script src='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/2.2.7/fullcalendar.min.js'></script>

  

    <script  src="js/calendar.js"></script>




</body>

</html>
 