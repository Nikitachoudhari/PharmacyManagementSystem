<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page
	import="com.javatpoint.dao.PharmacyDao,com.javatpoint.bean.*,java.util.*"%>

<%@ include file="common-css-js.jsp"%>
<jsp:include page="common-header1.jsp"></jsp:include>

<%
	List<Pharmacy> list = PharmacyDao.getAllRecords();
request.setAttribute("list", list);
%>

<br />
<div class="row" style="height: 200px">
	<img src="images/patient.jpg" style="height: 200px; object-fit: cover"
		class="card-img-top" />
</div>
<br />

<div class="container-fluid">
	<div class="row justify-content-center">
		<div class="col-9">
			<div class="container">
				<h3 class="text-center">Search Patients</h3>
				<hr>
				<div class="container-fluid">
					<form method="post" name="frm" action="Search2">
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
					<br>
					<table class="table table-bordered">
						<thead>
							<tr>
								<th>Sr. No.</th>
								<th>Patient Name</th>
								<th>Disease</th>
								<th>Doctor Name</th>
								<th>Gender</th>
								<th>Date</th>
								<th>Actions</th>
							</tr>
						</thead>
						<tbody>

							<c:forEach items="${list}" var="u">

								<tr>
									<td>${u.getId()}</td>
									<td>${u.getPatientname()}</td>
									<td>${u.getDisease()}</td>
									<td>${u.getDoctorName()}</td>
									<td>${u.getGender()}</td>
									<td>${u.getDate()}</td>
									<td><a href="editPatient.jsp?id=${u.getId()}"
										class="btn btn-primary mr-3">Edit</a> <a
										href="deleteuser.jsp?id=${u.getId()}" class="btn btn-danger">Delete</a></td>
								</tr>
							</c:forEach>
							<!-- } -->
						</tbody>

					</table>
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