<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Build your meal prep</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="Https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="https://use.fontawesome.com/releases/v5.0.8/js/all.js"></script>
	<link rel="stylesheet" type="text/css" href="/css/style.css">
	<script type="text/javascript" src="/js/script.js"></script>
</head>
<body>
	<!-- Navigation bar -->
		<nav class="navbar navbar-expand-md navbar-light bg-light sticky-top">
			<div class="container-fluid">
				<a class="navbar-brand" href="/">Fur<span class="orange">|</span>esh Prep</a>
				<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collase navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item">
						<a class="nav-link" href="/">Home</a>
					</li>
		            <li class="nav-item">
		            	<a class="nav-link" href="">Recipes</a>
		            </li>
		            <li class="nav-item">
		            	<a class="nav-link" href="/login">Log In</a>
		            </li>
		            <li class="nav-item">
		            	<a class="nav-link active" href="">Try Now</a>
		            </li>
				</ul>
			</div>
        </div>
	</nav>
	
	
	<!-- body -->
	
	<div class="container-fluid padding">
		<div class="row welcome text-center">
			<div class="col-12">
				<h1 class="display-4">Get a quote</h1>
			</div>
			<hr>
            <div class="col-12">
				<p class="lead">See your dog's recommended meal prep plan by entering his weight and details below.</p>
            </div>
        </div>
    </div>
	
	<!-- form -->	
	<div class="container">
		<form>
  			<div class="form-row">
    			<div class="form-group col-md-6">
      				<label for="humanName">Your Name</label>
      				<input type="text" class="form-control" id="humanName" placeholder="Your Name">
    			</div>
    			<div class="form-group col-md-6">
			    	<label for="email">Password</label>
			    	<input type="email" class="form-control" id="email" placeholder="Email">
				</div>
  			</div>
  			<div class="form-group">
			    <label for="petName">Pet's Name</label>
			    <input type="text" class="form-control" id="petName" placeholder="Pet's Name">
  			</div>
  			<div class="form-group">
    			<label for="inputAddress2">Address 2</label>
    			<input type="text" class="form-control" id="inputAddress2" placeholder="Apartment, studio, or floor">
  			</div>
  			<div class="form-row">
    			<div class="form-group col-md-6">
					<label for="inputCity">City</label>
				    <input type="text" class="form-control" id="inputCity">
    			</div>
    			<div class="form-group col-md-4">
			    	<label for="inputState">State</label>
			    	<select id="inputState" class="form-control">
        				<option selected>Choose...</option>
        				<option>...</option>
      				</select>
    			</div>
    			<div class="form-group col-md-2">
			    	<label for="inputZip">Zip</label>
			    	<input type="text" class="form-control" id="inputZip">
    			</div>
  			</div>
  			<div class="form-group">
    			<div class="form-check">
      				<input class="form-check-input" type="checkbox" id="gridCheck">
      				<label class="form-check-label" for="gridCheck">Check me out</label>
    			</div>
  			</div>
  			<button type="submit" class="btn btn-primary">Sign in</button>
		</form>
	</div>
	<button><a href="">Continue with signup</a></button>
</body>
</html>