<%@page import="com.javatpoint.dao.MedicineDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="com.javatpoint.dao.PharmacyDao,com.javatpoint.bean.Pharmacy"%>
<%@page
	import="com.javatpoint.dao.PharmacyDao,com.javatpoint.bean.*,java.util.*"%>

<%@ include file="common-css-js.jsp"%>
<jsp:include page="common-header1.jsp"></jsp:include>



<body>


	<%
		String id = request.getParameter("id");
	Medicine u = MedicineDao.getRecordById(Integer.parseInt(id));
	%>

	<br />
		<div class="row" style="height: 200px">
		<img src="images/p4.jpg" style="height: 230px; object-fit: cover"
			class="card-img-top" />
	</div>


	<div class="container" style="height: 510px">
		<div class=" row justify-content-left">
			<div class="col-5">
				<div class="card">
					<div class="card-body">
						<form action="editMedicine1.jsp" method="post">
							<caption>
								<h2>Edit Medicine order</h2>
							</caption>
							<input type="hidden" name="id" value="<%=u.getId()%>" />
							<fieldset class="form-group">
								<label>Medicine Name</label> <select class="form-select"
									aria-label="Default select example" name="medicinename" value="<%=u.getMedicinename() %>>">
									<option value="Probiotics">Probiotics</option>
									<option value="Vitamin C(500mg)">Vitamin C(500mg)</option>
									<option value="Acid Free C(500mg)">Acid Free C(500mg)</option>
									<option value="Women'S Multivate">Women'S Multivate</option>
									<option value="Maxi Cal Tablet">Maxi Cal Tablet</option>
									<option value="Marino Tablet">Marino Tablet</option>
									<option value="Amino Zinc Tablet">Amino Zinc Tablet</option>
									<option value="Burnex">Burnex</option>
									<option value="Fabuloss 5">Fabuloss 5</option>
									<option value="Royal Propollen">Royal Propollen</option>
								</select>
							</fieldset>

							<fieldset class="form-group">
								<label>Drug Type</label> <select class="form-select"
									aria-label="Default select example" name="drugType" value="<%=u.getDrugType()%>">
									<option value="OTC">OTC</option>
									<option value="Inhalants">Inhalants</option>
									<option value="CNS">CNS</option>
									<option value="Cannabis">Cannabis.</option>
									<option value="Narcotic ">Narcotic </option>
								</select>
							</fieldset>

							<fieldset class="form-group">
								<label>Company</label> <select class="form-select"
									aria-label="Default select example" name="company" value="<%=u.getCompany()%>">
									<option value="Novartis">Novartis</option>
									<option value="serum">serum</option>
									<option value="Sipla">Sipla</option>
									<option value="Sanofi">Sanofi</option>
									<option value="Pfizer">Pfizer</option>
									<option value="Hallucinogens">Hallucinogens</option>
									
								</select>
							</fieldset>


							<fieldset class="form-group">
								<label>Price</label> <input type="text" value="<%=u.getPrice()%>"
									class="form-control" name="price" required="required">
							</fieldset>
							
							<fieldset class="form-group">
								<label>Quantity</label> <input type="text" value="<%=u.getQuantity()%>"
									class="form-control" name="quantity" required="required">
							</fieldset>

							<button type="submit" class="btn btn-success">Save</button>
						</form>
					</div>
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