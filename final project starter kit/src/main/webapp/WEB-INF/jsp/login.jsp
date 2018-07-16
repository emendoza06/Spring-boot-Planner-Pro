<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en" >

<head>
  <meta charset="UTF-8">
  <title>Login / register</title>
  
  
  <link rel='stylesheet prefetch' href='https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.5/css/materialize.min.css'>

      <link rel="stylesheet" href="css/login.css">
      
      <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

  
</head>

<body>
<!-- background style -->
<style> 
body{ 
background: #FFEFBA;  /* fallback for old browsers */
background: -webkit-linear-gradient(to right, #FFFFFF, #FFEFBA);  /* Chrome 10-25, Safari 5.1-6 */
background: linear-gradient(to right, #FFFFFF, #FFEFBA); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
}
</style>
<!-- end background style -->


<!-- Links sit on top -->
<div class="w3-top" style="color:#FFFFFF">
  <div class="w3-row w3-large w3-light-grey" style="color:#FFFFFF" >
    <div class="w3-col s3">
      <a href="/" class="w3-button w3-block">Home</a>
    </div>
    <div class="w3-col s3">
      <a href="/login" class="w3-button w3-block">Login</a>
    </div>
    <div class="w3-col s3">
      <a href="#about" class="w3-button w3-block">About</a>
    </div>
    <div class="w3-col s3">
      <a href="#contact" class="w3-button w3-block">Contact</a>
    </div>
  </div>
</div>


<!-- Start log in form -->

  <div class="container white z-depth-2">
	<ul class="tabs teal">
		<li class="tab col s3"><a class="white-text active" href="#login">login</a></li>
		<li class="tab col s3"><a class="white-text" href="#register">register</a></li>
	</ul>
	<div id="login" class="col s12">
		<form:form class="col s12" action="/login" method="Post" modelAttribute="user" >
			<div class="form-container">
				<h3 class="teal-text">Hello</h3>
				<div class="row">
					<div class="input-field col s12">
						<form:input id="email" path="email" type="email" class="validate"/>
						<label for="email">Email</label>
					</div>
				</div>
				<div class="row">
					<div class="input-field col s12">
						<form:input type="password" id="password" path="password" class="validate"/>
						<label for="password">Password</label>
					</div>
				</div>
				<br>
				<center>
					<button class="btn waves-effect waves-light teal" type="submit" name="action">Connect</button>
					<br>
					<br>
					<a href="">Forgotten password?</a>
				</center>
			</div>
		</form:form>
	</div>
	
	<!-- End log in form  -->
	
	<!-- Start sign up form -->
	<div id="register" class="col s12">
		<form:form class="col s12" action="/signup" method="Post" modelAttribute="user">
			<div class="form-container">
				<h3 class="teal-text">Welcome</h3>
				<div class="row">
					<div class="input-field col s6">
						<form:input path="firstName" id="last_name" class="validate"/>
						<label for="last_name">First Name</label>
					</div>
					<div class="input-field col s6">
						<form:input path="lastName" id="last_name" class="validate"/>
						<label for="last_name">Last Name</label>
					</div>
				</div>
				<div class="row">
					<div class="input-field col s12">
						<form:input id="email" path="email" type="email" class="validate"/>
						<label for="email">Email</label>
					</div>
				</div>
				<div class="row">
					<div class="input-field col s12">
						<form:input type="password" id="password" path="password" class="validate"/>
						<label for="password">Password</label>
					</div>
				</div>
				<div class="row">
					<div class="input-field col s12">
						<form:input type="password" id="password-confirm" path="passwordConfirmation" class="validate"/>
						<label for="password-confirm">Password Confirmation</label>
					</div>
				</div>
				<center>
					<button class="btn waves-effect waves-light teal" type="submit" name="action">Submit</button>
				</center>
			</div>
		</form:form>
	</div>
</div>
<!-- End sign up form  -->

<!-- Script  -->
  <script src='https://code.jquery.com/jquery-2.1.1.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.5/js/materialize.min.js'></script>

  

    <script  src="js/login.js"></script>
    
    <!-- End script -->




</body>

</html>
