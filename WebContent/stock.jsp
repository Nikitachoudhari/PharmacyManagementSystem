<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ include file="common-css-js.jsp"%>
<jsp:include page="common-header.jsp"></jsp:include>


<br />

<div class="row" style="heigh: 200px">
	<img src="images/p6.jpg" style="height: 230px; object-fit: cover"
		class="card-img-top" />
</div>
<br />
<div class="row">
	<div class="container-fluid">
		<div class="row justify-content-center">
			<div class="col-10">
				<caption>
					<h3 class="text-center">Medicine List</h3>
					<hr />
				</caption>
				<div class="container-fluid">
					<form method="post" name="frm" action="Search">
						<div class="row ">

							<div class="col-6">
								<input type="text" name="pid" id="pid"
									placeholder="Enter Search medicine" class="form-control">
							</div>
							<div class="col-3">
								<input type="submit" name="submit" class="btn btn-primary ml-4"
									style="border-radius: 27px;" value="Search"></input>
							</div>

						</div>
					</form>
				</div>
				<br />
				<table class="table table-bordered" style="background-color: #fff;">
					<thead>
						<tr>
							<th>SR. NO.</th>
							<th>NAME</th>
							<th>DRUGS TYPE</th>
							<th>COMPANY</th>
							<th>PRICE</th>
							<th>QUANTITY</th>
							<th>DESCRIPTION</th>
							<th>BOOK</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>1</td>
							<td>Probiotics</td>
							<td>OTC</td>
							<td>Novartis</td>
							<td>32</td>
							<td>1200</td>
							<td>prebiotics is to positively modulate the gut</td>
							<td><a href="login.jsp" class="btn btn-success">Book</a></td>
						</tr>
						<tr>
							<td>2</td>
							<td>Vitamin C(500mg)</td>
							<td>OTC</td>
							<td>serum</td>
							<td>41</td>
							<td>3200</td>
							<td>Vitamin C 500mg Strip Of 10 Chewable Tablets</td>
							<td><a href="login.jsp" class="btn btn-success">Book</a></td>
						</tr>
						<tr>
							<td>3</td>
							<td>Acid Free C(500mg)</td>
							<td>OTC</td>
							<td>serum</td>
							<td>52</td>
							<td>450</td>
							<td>Acid Free C contains natural bioflavonoids</td>
							<td><a href="login.jsp" class="btn btn-success">Book</a></td>
						</tr>
						<tr>
							<td>4</td>
							<td>Women'S Multivate</td>
							<td>OTC</td>
							<td>Sipla</td>
							<td>12</td>
							<td>500</td>
							<td>Multivite Woman combact fatigue, stress, weakness</td>
							<td><a href="login.jsp" class="btn btn-success">Book</a></td>
						</tr>
						<tr>
							<td>5</td>
							<td>Marino Tablet</td>
							<td>OTC</td>
							<td>Sanofi</td>
							<td>45</td>
							<td>320</td>
							<td>Dronabinol is used to treat nausea</td>
							<td><a href="login.jsp" class="btn btn-success">Book</a></td>
						</tr>
						<tr>
							<td>6</td>
							<td>Maxi Cal Tablet</td>
							<td>OTC</td>
							<td>Novartis</td>
							<td>30</td>
							<td>1200</td>
							<td>Maxi Cal Tablet strip of 15 tablet</td>
							<td><a href="login.jsp" class="btn btn-success">Book</a></td>
						</tr>
						<tr>
							<td>7</td>
							<td>Amino Zinc Tablet</td>
							<td>OTC</td>
							<td>serum</td>
							<td>54</td>
							<td>321</td>
							<td>Amino Zinc Tablet strps of 45 tablets</td>
							<td><a href="login.jsp" class="btn btn-success">Book</a></td>
						</tr>
						<tr>
							<td>8</td>
							<td>Burnex</td>
							<td>OTC</td>
							<td>Pfizer</td>
							<td>56</td>
							<td>90</td>
							<td>Burnex 500mg/500mg Injection is a combination of two
								medicines</td>
							<td><a href="login.jsp" class="btn btn-success">Book</a></td>
						</tr>
						<tr>
							<td>9</td>
							<td>Fabuloss 5</td>
							<td>OTC</td>
							<td>Sanofi</td>
							<td>12</td>
							<td>9002</td>
							<td>Fabuloss 5 is a powerful combination of 5</td>
							<td><a href="login.jsp" class="btn btn-success">Book</a></td>
						</tr>
						<tr>
							<td>10</td>
							<td>Royal Propollen</td>
							<td>OTC</td>
							<td>Novartis</td>
							<td>51</td>
							<td>630</td>
							<td>ROYAL PROPOLLEN is a combination of 4 health</td>
							<td><a href="login.jsp" class="btn btn-success">Book</a></td>
						</tr>

					</tbody>

				</table>
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
					<a href="http://webenlance.com"><i
						class="fab fa-facebook-f ml-2"></i></a> <a
						href="http://webenlance.com"><i class="fab fa-twitter ml-2"></i></a>
					<a href="http://webenlance.com"><i class="fab fa-linkedin ml-2"></i></a>
					<a href="http://webenlance.com"><i
						class="fab fa-instagram ml-2"></i></a>
				</div>
			</div>
			<br />
		</div>

	</div>
</div>




</body>
</html>