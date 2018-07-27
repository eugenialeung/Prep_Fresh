<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Dog Food Front Page</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="Https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="https://use.fontawesome.com/releases/v5.0.8/js/all.js"></script>
	<link rel="stylesheet" type="text/css" href="/css/style.css">
	<script type="text/javascript" src="/js/script.js"></script>
</head>
<body>
	<!-- Navigation -->
	<nav class="navbar navbar-expand-md navbar-light bg-light sticky-top">
		<div class="container-fluid">
			<a class="navbar-brand" href="/">Fur<span class="orange">|</span>esh Prep</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive">
				<span class="navbar-toggler-icon"></span>
			</button>
				<!-- Successfully logged out message -->
			    <c:if test="${logoutMessage != null}">
        			<p class="logout"><c:out value="${logoutMessage}"></c:out></p>
    			</c:if>
			
			<div class="collase navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item active">
						<a class="nav-link" href="/">Home</a>
					</li>
                    <li class="nav-item">
                    	<a class="nav-link" href="">Recipes</a>
                    </li>
                    <li class="nav-item">
                    	<a class="nav-link" href="/login">Log In</a>
                    </li>
                    <li class="nav-item">
                    	<a class="nav-link" href="">Try Now</a>
                    </li>
                </ul>
            </div>
        </div>
	</nav>


	<!-- Image Slider  -->
	<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
		<ol class="carousel-indicators">
			<li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
		</ol>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img class="d-block w-100" src="img/background1.png" alt="First slide">
				<div class="carousel-caption">
					<h1 class="display-2">Fur<span class="orange">|</span>esh Prep</h1>
					<h3>Real Food Delivered Fresh</h3>
					<br><br><br>
					<button type="button" class="btn btn-primary btn-lg"><a class="white" href="/create">Start Meal Prepping!</a></button>
					<br>
				</div>
			</div>
            <div class="carousel-item">
				<img class="d-block w-100" src="img/background2.png" alt="Second slide">
					<div class="carousel-caption">
						<h1></h1>
						<h3></h3>
						<br><br><br>
						<button type="button" class="btn btn-primary btn-lg"><a class="white" href="/registration">Start Meal Prepping!</a></button>
						<br>
					</div>
			</div>
			<div class="carousel-item">
				<img class="d-block w-100" src="img/background3.png" alt="Third slide">
					<div class="carousel-caption">
						<h1></h1>
						<h3></h3>
						<br><br><br>
						<button type="button" class="btn btn-primary btn-lg"><a class="white" href="/registration">Start Meal Prepping!</a></button>
						<br>
					</div>
			</div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
				<span class="carousel-control-prev-icon" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
				<span class="carousel-control-next-icon" aria-hidden="true"></span>
				<span class="sr-only">Next</span>
			</a>
		</div>




		<!-- Jumbotron -->
        <div class="container-fluid">
			<div class="row jumbotron">
				<div class="col-xs-11 col-sm-10 col-md-9 col-lg-10 col-xl-11">
					<p class="lead">Like you, we love our pets and care about their health. That’s why we created our all natural Fresh Prep — a delivery service, made fresh to each indivdual order with human-quality ingredients.</p>
				</div>
			</div>
		</div>
        <!-- Welcome Section -->
        <div class="container-fluid padding">
			<div class="row welcome text-center">
				<div class="col-12">
					<h1 class="display-4">Personalized meals ready at your doorsteps.</h1>
				</div>
				<hr>
                <div class="col-12">
					<p class="lead">With a few simple steps, you will have fresh food delivered to you wihtin days of cooking in easy ready-to-serve meals in individual packs.</p>
                </div>
            </div>
        </div>
        <!-- Three Column Section -->
        <div class="container-fluid padding">
        	<div class="row text-center padding centered">
        		<div class="col-xs-12 col-sm-6 col-md-4">
        			<div class="col-lg-12 col">
        				<img src="img/create.png" alt="create" class="img-fluid">
        			</div>
        			<h3>CREATE</h3>
        			<p>Each plan is customized to your dog's individual profile. Choose your preferred protein and tailor your plan based on your dog's dietary restrictions.</p>
        		</div>
        		<div class="col-xs-12 col-sm-6 col-md-4">
        			<div class="col-lg-12">
        				<img src="img/delivery.png" alt="delivery" class="img-fluid">
        			</div>
        			<h3>DELIVERY</h3>
        			<p>Our insulated packaging keeps your dog's meal packs fresh. Store in the fridge for a week and freeze the remainder.</p>
        		</div>
        		<div class="col-sm-12 col-md-4">
        			<div class="col-lg-12">
        				<img src="img/serve.png" alt="serve" class="img-fluid">
        			</div>
        			<h3>SERVE</h3>
        			<p>Each meal pack is pre-portioned and ready to eat. Never frozen, just squeeze into your pet's bowl and dinner is served!</p>
        		</div>
        	</div>
        </div>
        
        
        <!-- Three Column Section -->
        <div class="container-fluid padding">
        	<div class="row padding">
        	    <div class="col-lg-6">
        			<img src="img/whyfresh.jpg" class="img-fluid">
        		</div>
        		<div class="col-lg-6">
        			<h2>Benefits of fresh</h2>
        			<p>Shinier coats | Healthy oils are an essential part of any fresh dog food diet, and these fats quickly turn a dull coat glossy. Fresh dog food diets contain a blend of oils that have many health benefits, with a shiny, soft coat simply being a positive side effect!</p>
        			<p>More energy | Over-processed diets can be hard for a dog's digestive system to truly break down and absorb nutrients from. Fresh ingredients are more digestible, which enables your dog's body to absorb more energy from the food they're eating. This gives your dog more energy to use when needed.</p>
        			<p>Peach of mind | Knowing what's in your dog's food is the greatest benefit of all! You'll always know your pet's food is 100% fresh with no artificial ingredients, preservatives, chemicals, and fillers.
        			<br><br>
        			<a href="" class="btn btn-primary">Learn More</a>
        		</div>

        	</div>
        </div>
        <!-- Fixed Background -->
        <!-- Connect -->
        <div class="container-fluid padding">
        	<div class="row text-center padding">
        		<div class="col-12">
        			<h2>Connect</h2>
        		</div>
        		<div class="col-12 social padding">
        			<a href=""><i class="fab fa-facebook"></i></a>
        			<a href=""><i class="fab fa-twiiter"></i></a>
        			<a href=""><i class="fab fa-google-plus-g"></i></a>
        			<a href=""><i class="fab fa-instagram"></i></a>
        			<a href=""><i class="fab fa-youtube"></i></a>
        		</div>
        	</div>
        </div>
        <!-- Footer -->
        <footer>
        <div class="container-fluid padding">
        	<div class="row text-center">
        		<div class="col-md-4">
        			<hr class="light">
        			<h5>Support</h5>
        			<hr class="light">
        			<p>M-F: 9am-7pm</p>
        			<p>Sat: 9am-5pm</p>
        			<p>Sun: 9am-3pm</p>
        		</div>
        		<div class="col-md-4">
        			<hr class="light">
        			<h5>About</h5>
        			<hr class="light">
        			<p>Our Story</p>
        			<p>Our Process</p>
        			<p>Blog</p>
        		</div>
        		<div class="col-md-4">
        			<hr class="light">
        			<h5>Product</h5>
        			<hr class="light">
        			<p>How it Works</p>
        			<p>Recipe</p>
        			<p>Ingredients</p>
        		</div>
        		<div class="col-12">
        			<hr class="light">
        			<h5>&copy; Fureshprep.com</h5>
        		</div>
        	</div>
        </div>
        </footer>
</body>
</html>


<!-- Why us? fresh, customizable, convenient -->
<!-- easy steps: personalize(choose your meat, and let us know how you'd like to cusomize it), Countdown days til shipment arrives(store in fridge for a week and freeze remainder), Feed(packs made for each order) -->
<!-- benefits of fresh -->
<!-- See your dog's recommended plan -->
