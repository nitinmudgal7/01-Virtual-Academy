

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>User Management Application</title>
</head>
<body style="background-color:#AFE1AF;">

	<header>
		<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: #5F8575">
			
			<ul class="navbar-nav">
				<li><a href="<%=request.getContextPath()%>/list1"
					class="nav-link">Students Home</a></li>
			</ul>
		</nav>
	</header>
	<br>
	<div class="container col-md-5">
		<div class="card">
			<div class="card-body">
				<c:if test="${student != null}">
					<form action="update1" method="post">
				</c:if>
				<c:if test="${student == null}">
					<form action="insert1" method="post">
				</c:if>

				<caption>
					<h2>
						<c:if test="${student != null}">
            			Edit Student
            		</c:if>
						<c:if test="${student == null}">
            			Add New Student
            		</c:if>
					</h2>
				</caption>

				<c:if test="${student != null}">
					<input type="hidden" name="id" value="<c:out value='${student.id}' />" />
				</c:if>

				<fieldset class="form-group">
					<label>First Name:</label> <input type="text"
						value="<c:out value='${student.first_name}' />" class="form-control"
						name="first_name" required="required">
				</fieldset>

				<fieldset class="form-group">
					<label>Last Name:</label> <input type="text"
						value="<c:out value='${student.last_name}' />" class="form-control"
						name="last_name">
				</fieldset>

				<fieldset class="form-group">
					<label>Class:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label> <input type="text"
						value="<c:out value='${student.age}' />" class="form-control"
						name="age">
				</fieldset>
				<br />
				<button type="submit" class="btn btn-success">Save</button>
				</form>
			</div>
		</div>
	</div>
</body>
</html>