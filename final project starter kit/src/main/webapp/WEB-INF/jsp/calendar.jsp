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
		            <c:forEach items="${events }" var="event">
		            <div class='fc-event'><c:out value="${event.getEvent()}"/></div>
		            </c:forEach>
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
    
    
    
<!-- SEND AN INVITE FORM -->

 <div class="wrapper">
    <form:form class="form-email" action="/sendInvite" method="Post" modelAttribute="invite">       
      <h2 class="form-email-heading">Invite</h2>
      <form:input type="text" class="form-control" path="guestName" placeholder="Guest Name" required=""/> 
      <form:input type="text" class="form-control" path="email" placeholder="Email" required="" autofocus="" />
      <form:input type="text" class="form-control" path="phoneNumber" placeholder="Phone Number" required=""/>      
      <button class="btn btn-lg btn-primary btn-block" name="action" type="submit">Invite</button>   
    </form:form>
  </div>
  
  <!-- END SEND AN INVITE FORM -->
  
  <style>
  form.form-email {
    width: 28%;
    margin-left: 20%;
}
  </style>
  
  
  <!-- Contact List -->
   
   <table class="table data">
  <thead>
    <tr>
      <th>Name</th>
      <th>Email</th>
      <th>Number</th>
      <th>Actions <button class="add">Add new</button></th>
    </tr>
  </thead>
  <tbody>
 	<c:forEach items="${invited}" var="invite">
    <tr>
      <td class="data"><c:out value="${invite.getGuestName() }"/></td>
      <td class="data"><c:out value="${invite.getEmail()}"/></td>
      <td class="data"><c:out value="${invite.getPhoneNumber() }"/></td>
      <td>
        <button class="save">Save</button>
        <button class="edit">Edit</button>
        <button class="delete">Delete</button>
      </td>
    </tr>
    </c:forEach>
  </tbody>
</table>


  

    

  <style>
  
  .table {
  width: 100%;
}
.table thead th {
  padding: 10px 10px;
  background: #00adee;
  font-size: 15px;
  text-transform: uppercase;
  vertical-align: top;
  color: #1D4A5A;
  font-weight: normal;
  text-align: left;
}
.table tbody tr td {
  padding: 10px;
  background: #f2f2f2;
  font-size: 14px;
}

.add, .edit, .save, .delete {
  outline: none;
  background: none;
  border: none;
}

.edit, .save, .delete {
  padding: 5px 10px;
  cursor: pointer;
}

.add {
  float: right;
  background: transparent;
  border: 1px solid #ffffff;
  color: #ffffff;
  font-size: 13px;
  padding: 0;
  padding: 3px 5px;
  cursor: pointer;
}
.add:hover {
  background: #ffffff;
  color: #00adee;
}

.save {
  display: none;
  background: #32AD60;
  color: #ffffff;
}
.save:hover {
  background: #27854a;
}

.edit {
  background: #2199e8;
  color: #ffffff;
}
.edit:hover {
  background: #147dc2;
}

.delete {
  background: #EC5840;
  color: #ffffff;
}
.delete:hover {
  background: #e23317;
}
  </style>
  
  <script>
  $(document).on('click', '.edit', function() {
	  $(this).parent().siblings('td.data').each(function() {
	    var content = $(this).html();
	    $(this).html('<input value="' + content + '" />');
	  });
	  
	  $(this).siblings('.save').show();
	  $(this).siblings('.delete').hide();
	  $(this).hide();
	});

	$(document).on('click', '.save', function() {
	  
	  $('input').each(function() {
	    var content = $(this).val();
	    $(this).html(content);
	    $(this).contents().unwrap();
	  });
	  $(this).siblings('.edit').show();
	  $(this).siblings('.delete').show();
	  $(this).hide();
	  
	});


	$(document).on('click', '.delete', function() {
	  $(this).parents('tr').remove();
	});

	$('.add').click(function() {
	  $(this).parents('table').append('<tr><td class="data"></td><td class="data"></td><td class="data"></td><td><button class="save">Save</button><button class="edit">Edit</button> <button class="delete">Delete</button></td></tr>');
	});
  </script>
  
  <!-- End Contact List -->
  
  
  
</body>

</html>
 