<%@ include file="common-css-js.jsp"%>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.6.0/dist/umd/popper.min.js" integrity="sha384-KsvD1yqQ1/1+IA7gi3P0tyJcT3vR+NdBTt13hSJ2lnve8agRGXTTyNaBYmCR/Nwi" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.min.js" integrity="sha384-nsg8ua9HAw1y0W1btsyWgBklPnCUAFLuTMS2G72MMONqmOymq585AcH49TLBQObG" crossorigin="anonymous"></script>

<body>

	<div class="container-fluid">
		<div class="row bg-light text-light sticky-top" style="height: 80px;">

			<div class="col-4 d-flex align-items-center ">
				<a href="home.jsp" class="btn text-primary btn-link"
					style="font-weight: bold; font-size: 1.75rem; font-family: cursive;">Online
					Pharmacy System</a>
			</div>

			<div class="col-8  d-flex align-items-center justify-content-end">
				<div>
					<a href="home1.jsp" class="btn btn-secondary">HOME</a>
				</div>

				<div class="ml-3">
					<div class="dropdown">
						<button class="btn btn-secondary dropdown-toggle" type="button"
							id="dropdownMenuButton1" data-bs-toggle="dropdown"
							aria-expanded="false">DOCTOR APPOINTMENT</button>
						<ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
							<li><a class="dropdown-item" href="viewPatient.jsp">VIEW
									PATIENT</a></li>
							<li><a class="dropdown-item" href="addPatient.jsp">ADD
									PATIENT</a></li>
							<li><a class="dropdown-item" href="searchPatient.jsp">SEARCH PATIENT</a></li>
						</ul>
					</div>
				</div>

				<div class="ml-3">
					<div class="dropdown">
						<button class="btn btn-secondary dropdown-toggle" type="button"
							id="dropdownMenuButton1" data-bs-toggle="dropdown"
							aria-expanded="false">MEDICINE</button>
						<ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
							<li><a class="dropdown-item" href="addMedicine.jsp">NEW
									MEDICINE ORDER</a></li>
							<li><a class="dropdown-item" href="viewMedicine.jsp">VIEW
									MEDICINE ORDERS</a></li>
							<li><a class="dropdown-item" href="searchMedicine.jsp">SEARCH MEDICINE ORDER</a></li>
						</ul>
					</div>
				</div>
				<div class="ml-3">
					<button class="btn btn-secondary dropdown-toggle" type="button"
						id="dropdownMenuButton1" data-bs-toggle="dropdown"
						aria-expanded="false">MY PROFILE</button>
					<ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
						<li><a class="dropdown-item" href="profile.jsp">MY PROFILE</a></li>
						<li><a class="dropdown-item" href="changePassword.jsp">CHANGE PASSWORD</a></li>
						<li><a class="dropdown-item" href="login.jsp">lOG OUT</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>