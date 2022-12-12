<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ include file="common-css-js.jsp"%>
<jsp:include page="common-header1.jsp"></jsp:include>


<br />

<div class="row" style="height: 200px">
		<img src="images/patient.jpg" style="height: 200px; object-fit: cover"
			class="card-img-top" />
	</div>
<br />


<div class="row" style="background-color: #cccccc;">
	<div class="container-fluid">
		<div class="row justify-content-center">
			<div class="col-10">
				<caption>
					<h3 class="text-center">Patient List</h3>
					<hr />
				</caption>
				<div class="container-fluid">
					<div class="row ">
						<form method="post" name="frm" action="Search">
							<h3>Search result</h3>
						</form>
					</div>
				</div>
				<br />
				<table class="table table-bordered" style="background-color: #fff;">
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


					<%
						int count = 0;
					String color = "#F9EBB3";
					if (request.getAttribute("piList") != null) {
						ArrayList al = (ArrayList) request.getAttribute("piList");
						System.out.println(al);
						Iterator itr = al.iterator();
						while (itr.hasNext()) {

							if ((count % 2) == 0) {
						color = "#eeffee";
							}
							count++;
							ArrayList pList = (ArrayList) itr.next();
					%>
					<tbody>
						<tr style="background-color:<%=color%>;">
							<td><%=pList.get(0)%></td>
							<td><%=pList.get(1)%></td>
							<td><%=pList.get(2)%></td>
							<td><%=pList.get(3)%></td>
							<td><%=pList.get(4)%></td>
							<td><%=pList.get(5)%></td>
							<td><a href="editPatient.jsp?id=${u.getId()}"
									class="btn btn-primary mr-3">Edit</a> <a
									href="deleteuser.jsp?id=${u.getId()}" class="btn btn-danger">Delete</a></td>
							
						</tr>
					</tbody>
					<%
						}
					}
					if (count == 0) {
					%>
					<tbody>
						<tr>
							<td colspan=4 align="center" style="background-color: #eeffee"><b>No
									Record Found..</b></td>
						</tr>
					</tbody>
					<%
						}
					%>
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
			<div class="col">
				<img src="s1.jpg" class="mr-3" style="height: 30px; width: 30px" />
				<img src="s2.jpg" class="mr-3" style="height: 30px; width: 30px" />
				<img src="s3.pngp" class="mr-3" style="height: 30px; width: 30px" />
				<img src="s4.jpg" class="mr-2" style="height: 30px; width: 30px" />
			</div>
			<br />
		</div>

	</div>
</div>




</body>
</html>