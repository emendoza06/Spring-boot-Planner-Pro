<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 
 	
 	
 	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<title>Profile</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Roboto'>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
html,body,h1,h2,h3,h4,h5,h6 {font-family: "Roboto", sans-serif}
</style>
<body class="w3-light-grey">

<!-- Page Container -->
<div class="w3-content w3-margin-top" style="max-width:1400px;">

  <!-- The Grid -->
  <div class="w3-row-padding">
  
    <!-- Left Column -->
    <div class="w3-third">
    
      <div class="w3-white w3-text-grey w3-card-4">
        <div class="w3-display-container">
          <img src="/css/profileavatar2.jpg" style="width:100%" alt="Avatar">
          <div class="w3-display-bottomleft w3-container w3-text-black">
            <h2 id="profile-name" style="color:white;">Epharra</h2>
            <!-- Profile Name style -->
            <style>
            #profile-name{ 
           	color:black;
            }
            </style>
            
          </div>
        </div>
        
        <!-- All of these links will be modals -->

<!-- Modal style -->

<style>
*{margin:0px; padding:0px; font-family:Helvetica, Arial, sans-serif;}

/* Full-width input fields */
input[type=text], input[type=password] {
    width: 90%;
    padding: 12px 20px;
    margin: 8px 26px;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
	font-size:16px;
}

/* Set a style for all buttons */
button {
border-radius: 10px;
box-shadow: 0 0 20px #eee;
background-size: 200% auto;
transition: 0.5s;
flex: 1 1 auto;
       background-image: linear-gradient(to right, #84fab0 0%, #8fd3f4 51%, #84fab0 100%);
    color: white;
    padding: 14px 20px;
    margin: 8px 26px;
    border: none;
    cursor: pointer;
    width: 90%;
	font-size:20px;
}
button:hover {
    background-position: right center;
}

/* Center the image and position the close button */
.imgcontainer {
    text-align: center;
    margin: 24px 0 12px 0;
    position: relative;
}
.avatar {
    width: 200px;
	height:200px;
    border-radius: 50%;
}

/* The Modal (background) */
.modal {
	display:none;
    position: fixed;
    z-index: 1;
    left: 0;
    top: 0;
    width: 100%;
    height: 100%;
    overflow: auto;
    background-color: rgba(0,0,0,0.4);
}

/* Modal Content Box */
.modal-content {
    background-color: #fefefe;
    margin: 4% auto 15% auto;
    border: 1px solid #888;
    width: 40%; 
	padding-bottom: 30px;
}

/* The Close Button (x) */
.close {
    position: absolute;
    right: 25px;
    top: 0;
    color: #000;
    font-size: 35px;
    font-weight: bold;
}
.close:hover,.close:focus {
    color: red;
    cursor: pointer;
}

/* Add Zoom Animation */
.animate {
    animation: zoom 0.6s
}
@keyframes zoom {
    from {transform: scale(0)} 
    to {transform: scale(1)}
}
</style>

<!-- Travel Deals Modal -->

<!-- Widget to look for flights, hotel, cars -->

<div id="browse-plans" class="modal">
  
  <form:form class="modal-content animate">
        
    <div class="imgcontainer">
      <span onclick="document.getElementById('browse-plans').style.display='none'" class="close" title="Close PopUp">&times;</span>
      <img src="/css/travelDealsAvatar.jpg" alt="Avatar" class="avatar">
      <h1 style="text-align:center">Travel Deals</h1>
    </div>

    <div class="container">
   
   <!-- Travel Deals styling -->
   
   <style> 
   .skyscanner-widget {
  padding: 10px;
  border-radius: 10px;
  }
  ._6HsSRM0ci17RDnELz3uRb{
  	width: 80%;
  }
	.skyscanner-widget.skyscanner-search-widget._1vXnnNW5q3tGjvyh8vn2K3{ 
	background-image: linear-gradient(to right, #ffffff 0%, #e8f5ee 51%, #bff3ce 100%);
	}

   </style>
   
     <div data-skyscanner-widget="SearchWidget" data-locale="en-GB" data-params="colour:solar;fontColour:#000;buttonColour:dawn;buttonFontColour:#fff;"></div>
<script src="https://widgets.skyscanner.net/widget-server/js/loader.js" async></script> 
    </div>
    
  </form:form>
  
</div>

<script>


var modal = document.getElementById('browse-plans');
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
</script>

<!-- End Travel Deals Modal -->




<!-- Create Plan Modal -->

<div id="create-plan" class="modal">
  
  <form:form action="createPlan" method="Post" class="modal-content animate" modelAttribute="plan">
        
    <div class="imgcontainer">
      <span onclick="document.getElementById('create-plan').style.display='none'" class="close" title="Close PopUp">&times;</span>
      
      <h1 style="text-align:center">Create a plan</h1>
    </div>

    <div class="container">
    <div class="dates">
    <label>Check In:</label>
      <form:input type="date" path="checkIn"/>
      <label>Check Out:</label>
      <form:input path="checkOut" type="date"/> 
      </div>  
      
      <!-- Class dates style -->
      <style>
      .dates{
      text-align:center;}
      </style>
      
      <form:input path="destination" type="text" placeholder="Destination"/>
      <form:input path="budget" type="text" placeholder="Budget"/>      
      <button type="submit">Create Plan</button>
    </div>
    
  </form:form>
  
</div>

<!-- End of Create Plan Modal Form -->

<script>


var modalCreatePlan = document.getElementById('create-plan');
window.onclick = function(event) {
    if (event.target == modalCreatePlan) {
        modalCreatePlan.style.display = "none";
    }
}
</script>

<!-- End create plan modal -->



<!--  About Me Modal -->

<div id="about-me" class="modal">
  
  <form:form class="modal-content animate">
        
    <div class="imgcontainer">
      <span onclick="document.getElementById('about-me').style.display='none'" class="close" title="Close PopUp">&times;</span>
      <img src="1.png" alt="Avatar" class="avatar">
      <h1 style="text-align:center">Create a plan</h1>
    </div>

    <div class="container">      
      <p>Number of plans</p>
      <p>Plans I'm in </p>
      <p>Date joined</p>
    </div>
    
  </form:form>
  
</div>

<!-- End of About Me Modal -->

<script>


var modalCreatePlan = document.getElementById('about-me');
window.onclick = function(event) {
    if (event.target == modalCreatePlan) {
        modalCreatePlan.style.display = "none";
    }
}
</script>

<!-- End About Me modal -->




<!-- Messages Plan Modal -->

<div id="messages" class="modal">
  
  <form:form class="modal-content animate">
        
    <div class="imgcontainer">
      <span onclick="document.getElementById('messages').style.display='none'" class="close" title="Close PopUp">&times;</span>
      <img src="1.png" alt="Avatar" class="avatar">
      <h1 style="text-align:center">Messages</h1>
    </div>

    <div class="container">
      <table>
        <c:forEach items="${plans}" var="plan">
		<tr>
        <td><h5 class="w3-opacity"><b>Safe travels to <c:out value="${plan.getDestination() }"/>!</b></h5>
        <td><h6 class="w3-text-teal"><i class="fa fa-calendar fa-fw w3-margin-right"></i><span class="w3-tag w3-teal w3-round"><a href="/messageToBlog">Check out our blog for traveling tips</span></a></h6>
		</tr>
        </c:forEach>
          </table>
    </div>
    
  </form:form>
  
</div>

<!-- End of Messages Modal Form -->

<script>


var modalCreatePlan = document.getElementById('messages');
window.onclick = function(event) {
    if (event.target == modalCreatePlan) {
        modalCreatePlan.style.display = "none";
    }
}
</script>

<!-- End Messages modal -->




        
        <div class="w3-container">
          <button onclick="document.getElementById('browse-plans').style.display='block'"><p><i class="fa fa-briefcase fa-fw w3-margin-right w3-large w3-text-teal"></i>Travel Deals</p></button>
          <button onclick="document.getElementById('create-plan').style.display='block'"><p><i class="fa fa-briefcase fa-fw w3-margin-right w3-large w3-text-teal"></i>Create Plan</p></button>
          <button onclick="document.getElementById('about-me').style.display='block'"><p><i class="fa fa-home fa-fw w3-margin-right w3-large w3-text-teal"></i>About Me</p></button>
          <button onclick="document.getElementById('messages').style.display='block'"><p><i class="fa fa-envelope fa-fw w3-margin-right w3-large w3-text-teal"></i>Messages</p></button>
         
          <hr>

          <p class="w3-large"><b><i class="fa fa-asterisk fa-fw w3-margin-right w3-text-teal"></i>Reach 100% for your next Travel Reward!</b></p>
          <p>Frequent Flyer Miles Points</p>
          <div class="w3-light-grey w3-round-xlarge w3-small">
            <div class="w3-container w3-center w3-round-xlarge w3-teal" style="width:90%">90%</div>
          </div>
          <p>Hotel Loyalty Points</p>
          <div class="w3-light-grey w3-round-xlarge w3-small">
            <div class="w3-container w3-center w3-round-xlarge w3-teal" style="width:80%">
              <div class="w3-center w3-text-white">80%</div>
            </div>
          </div>
          <p>Car Rental Points</p>
          <div class="w3-light-grey w3-round-xlarge w3-small">
            <div class="w3-container w3-center w3-round-xlarge w3-teal" style="width:75%">75%</div>
          </div>
          <p>Vacation Packages Purchase Points</p>
          <div class="w3-light-grey w3-round-xlarge w3-small">
            <div class="w3-container w3-center w3-round-xlarge w3-teal" style="width:50%">50%</div>
          </div>
          <br>

        </div>
      </div><br>

    <!-- End Left Column -->
    </div>

    <!-- Right Column -->
    <div class="w3-twothird">
    
      <div class="w3-container w3-card w3-white w3-margin-bottom">
        <h2 class="w3-text-grey w3-padding-16"><i class="fa fa-suitcase fa-fw w3-margin-right w3-xxlarge w3-text-teal"></i>My Plans</h2>
        <div class="w3-container">
        <table>
        <c:forEach items="${plans}" var="plan">
		<tr>
        <td><h5 class="w3-opacity"><b><a href="/calendar?dest=${plan.destination}&budget=${plan.budget}"><c:out value="${plan.getDestination() }"/></a></b></h5>
        <td><h6 class="w3-text-teal"><i class="fa fa-calendar fa-fw w3-margin-right"></i>Check In : <c:out value="${plan.getCheckIn() }"/><span class="w3-tag w3-teal w3-round">Budget :<c:out value="${plan.getBudget() }"/></span></h6>
		</tr>
        </c:forEach>
          </table>
          <hr>
        </div>
      </div>

  

    <!-- End Right Column -->
    </div>
    
  <!-- End Grid -->
  </div>
  
  <!-- End Page Container -->
</div>

<footer class="w3-container w3-teal w3-center w3-margin-top">
  <p>Planner Pro</p>
  <i class="fa fa-facebook-official w3-hover-opacity"></i>
  <i class="fa fa-instagram w3-hover-opacity"></i>
  <i class="fa fa-snapchat w3-hover-opacity"></i>
  <i class="fa fa-pinterest-p w3-hover-opacity"></i>
  <i class="fa fa-twitter w3-hover-opacity"></i>
  <i class="fa fa-linkedin w3-hover-opacity"></i>
  
</footer>

</body>
