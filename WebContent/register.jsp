<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ include file="common-css-js.jsp"%>
<jsp:include page="common-header.jsp"></jsp:include>

<br />
<div class="row" style="height: 200px">
	<img src="images/p5.jpg" style="height: 300px; object-fit: cover"
		class="card-img-top" />
</div>
<br />

<div class="row" style="background-color: #cccccc;">
<div class="container" style="height: 720px">
		<div class="col-6 text-light d-flex  justify-content-center ">
			<div class="login-form">	
			<form action="register-action" method="post" class="" style="width:154%">
				
				<c:if test="${param.q == 1 }">
					<div class="alert alert-success">
						Registered Successfully !!
					</div>
				</c:if>
				
				<c:if test="${param.q == 0 }">
					<div class="alert alert-danger">
						Registration Fails !!!
					</div>
				</c:if>
				
				<div class="bg-light text-dark py-3 rounded d-flex justify-content-center" style="font-family:cursive; font-size:1.5rem; font-weight:bold">
					Application Registration
				</div>
			
				<div  class="form-group mt-1">
					<input name="username" class="form-control form-control-lg" type="text" placeholder="Username..." >
				</div>
				
				<div class="form-group mt-1">
					<input name="password" class="form-control form-control-lg" type="password" placeholder="Password...">
				</div>
				
				<div class="form-group mt-1">
					<input name="email" class="form-control form-control-lg" type="text" placeholder="Email....">
				</div>
				
				<div class="form-group mt-1">
					<input name="mobile" class="form-control form-control-lg" type="text" placeholder="Mobile...">
				</div>
				<div class="form-group mt-1">
					<input class="btn btn-secondary btn-block" type="submit" value="Register">
				</div>
				<div class=" form-group mt-1">
					<input class="btn btn-secondary btn-block" type="button" value="Cancel">
				</div>
				
				<div class="form-group mt-1 d-flex justify-content-center text-primary" >
					<a href="login.jsp" class="btn btn-link">Login Here...</a> 
				</div>
			</form>	
		</div>
		</div>
	</div>
</div>

<div class="container-fluid"
	style="background-image: url(images/ab8.jpg); background-repeat: no-repeat; width: 100%; height: 100%;">
	<div class="row">

		<div class="col-3 ">
			<br /> <br />
			<h4 class="widget-title line-bottom-theme-colored"
				style="color: #fff; font-size: 24px; font-family: 'Lora', serif">Main
				Links</h4>
			<hr />
			<ul style="color: #fff">
				<li><div
						style="color: #66ffff; font-size: 18px; font-family: 'Lora', serif">Home</div></li>
				<li><div
						style="color: #66ffff; font-size: 18px; font-family: 'Lora', serif">Breeds</div></li>

				<li><div
						style="color: #66ffff; font-size: 18px; font-family: 'Lora', serif">About
						Us</div></li>

				<li><div
						style="color: #66ffff; font-size: 18px; font-family: 'Lora', serif">Jobs</div></li>

			</ul>
		</div>


		<div class="col-3">
			<br /> <br />
			<h4 class="widget-title line-bottom-theme-colored"
				style="color: #fff; font-size: 24px; font-family: 'Lora', serif">Useful
				Links</h4>
			<hr />
			<ul style="color: #fff">
				<li><div
						style="color: #66ffff; font-size: 18px; font-family: 'Lora', serif">Free
						Treatment</div></li>

				<li><div
						style="color: #66ffff; font-size: 18px; font-family: 'Lora', serif">ABC
						for Dogs</div></li>

				<li><div
						style="color: #66ffff; font-size: 18px; font-family: 'Lora', serif">Animal
						Cemetery</div></li>

			</ul>
		</div>

		<div class="col-3">
			<br /> <br />
			<h4 class="widget-title line-bottom-theme-colored"
				style="color: #fff; font-size: 24px; font-family: 'Lora', serif">Contact
				Us</h4>
			<hr />
			<p style="color: #ffffff">
				Raja Garden New Delhi-110027<br /> Near: Shivaji College & Delhi
				Home Guards Head Office
			</p>
			<ul class="list-inline mt-3">
				<li class="m-0 pl-10 pr-10" style="color: #ffffff"><i
					class="fa fa-phone   mr-5"></i> <a class=" " href="#"
					style="color: #ffffff"> 011-25447751/25448062</a></li>
				<li class="m-0 pl-10 pr-10" style="color: #ffffff"><i
					class="fa fa-envelope-o   mr-5"></i> <a class=" " href="#"
					style="color: #ffffff">nikitachoudhari@gmail.com</a></li>
			</ul>

		</div>

		<div class="col-3">
			<br /> <br />
			<h5 class="widget-title mt-10 mb-10"
				style="color: #fff; font-size: 24px; font-family: 'Lora', serif">Newsletter</h5>
			<hr />
			<p style="color: #fff; font-family: 'Lora', serif">You can trust
				Us. we only send promo offers not a single sparm.</p>
			<div class="col-auto">

				<input type="text" class="form-control bg-dark"
					placeholder="your email address">
			</div>
			<br />
			<div class="col-auto">
				<button type="submit" class="btn btn-primary mb-3">Get
					Started</button>
			</div>
			<br /> <br />
			<div class="row">
				<div class="social_footer_ul">
					<a href="http://webenlance.com"><i class="fab fa-facebook-f ml-2"></i></a>
					<a href="http://webenlance.com"><i class="fab fa-twitter ml-2"></i></a>
					<a href="http://webenlance.com"><i class="fab fa-linkedin ml-2"></i></a>
					<a href="http://webenlance.com"><i class="fab fa-instagram ml-2"></i></a>
				</div>
			</div>
			<br />
		</div>

	</div>
</div>




</body>
</html>