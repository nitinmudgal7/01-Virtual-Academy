<%
	if(session.getAttribute("name")==null){
		response.sendRedirect("login.jsp");
	}
%>


<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Learner's Academy</title>
<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<!-- Font Awesome icons (free version)-->
<script src="https://use.fontawesome.com/releases/v5.15.4/js/all.js"
	crossorigin="anonymous"></script>
<!-- Google fonts-->
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
	rel="stylesheet" type="text/css" />
<link
	href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic"
	rel="stylesheet" type="text/css" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="css/index-styles.css" rel="stylesheet" />
</head>

<!-- Nitin -->
<header>
		<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: #5F8575">
			
			<ul class="navbar-nav">
			<li class="nav-item mx-0 mx-lg-1 bg-danger"><a
						class="nav-link py-3 px-0 px-lg-3 rounded">Hello <%=session.getAttribute("name")%></a></li>
						<li class="nav-item mx-0 mx-lg-1"><a
						class="nav-link py-3 px-0 px-lg-3 rounded" href="Logout">Logout</a></li>
			</ul>
		</nav>
	</header>

<!-- Nitin -->

<body id="page-top" style="background-color:#AFE1AF;">
	<!-- Masthead-->
	<header class="masthead bg-primary text-white text-center">
		<div class="container d-flex align-items-center flex-column">
			<!-- Masthead Heading-->
			<h1 class="masthead-heading text-uppercase mb-0">Welcome to the Learner's Academy Admin Portal</h1>
			<!-- Icon Divider-->
			<div class="divider-custom divider-light">
				<div class="divider-custom-line"></div>
				<div class="divider-custom-icon">
					<i class="fas fa-star"></i>
				</div>
				<div class="divider-custom-line"></div>
			</div>
			<!-- Masthead Subheading-->
			<p class="masthead-subheading font-weight-light mb-0">Here you can track and manage classes, subjects, students, and teachers.</p>
		</div>
	</header>
	<!-- Portfolio Section-->
	<section class="page-section portfolio" id="portfolio">
		<div class="container">
			<!-- Portfolio Section Heading-->
			<h2
				class="page-section-heading text-center text-uppercase text-secondary mb-0">Admin Actions</h2>
				<div class="container text-left">
				<a href= "student-list.jsp">Manage Students Details</a>
			</div>
			<div class="container text-left">
				<a href= "teacher-list.jsp">Manage Teachers Details</a>
			</div>
			<div class="container text-left">
				<a href= "subject-list.jsp">Manage Subjects </a>
			</div>
				
			<div class="container text-left">
				<a href= "studentinclass-list.jsp">Generate Detailed Reports</a>
			</div>	
				
				
				
				
			
	<!-- Footer-->
	<footer class="footer text-center">
	</br>
	</br></br></br>
	<h4 class="text-uppercase mb-4">Developed By</h4>
	Nitin Mudgal
	</footer>
	<!-- Copyright Section-->
	<div class="copyright py-4 text-center text-white">
		<div class="container">
			<small>Copyright &copy; Nitin Mudgal 2022</small>
		</div>
	</div>
</body>
</html>