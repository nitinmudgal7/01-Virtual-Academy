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
			<li><a href="index.jsp" class="btn btn-success">Home </a></li>
				<li>
					<a href="<%=request.getContextPath()%>/list"
					class="nav-link">Show List of Teachers</a></li>
			</ul>
		</nav>
	</header>
	<br>

	<div class="row">
		<!-- <div class="alert alert-success" *ngIf='message'>{{message}}</div> -->

		<div class="container">
			<h3 class="text-center">Manage Teacher Database</h3>
			<hr>
			<div class="container text-left">
				
				<a href="<%=request.getContextPath()%>/new" class="btn btn-success"> Add
					New Teacher</a>
			</div>
			<br>
<style>
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) {
  background-color: #dddddd;
}
</style>
			<table class="table table-bordered">
				<thead>
					<tr>
						<th>ID</th>
						<th>First_Name</th>
						<th>Last_Name</th>
						<th>Class</th>
						<th>Actions</th>
					</tr>
				</thead>
				<tbody>
				
					<c:forEach var="teacher" items="${listTeacher}">

						<tr>
							<td><c:out value="${teacher.id}" /></td>
							<td><c:out value="${teacher.first_name}" /></td>
							<td><c:out value="${teacher.last_name}" /></td>
							<td><c:out value="${teacher.age}" /></td>
							<td><a href="edit?id=<c:out value='${teacher.id}' />">Edit</a>
								&nbsp;&nbsp;&nbsp;&nbsp; <a
								href="delete?id=<c:out value='${teacher.id}' />">Delete</a></td>
						</tr>
					</c:forEach>
		
				</tbody>

			</table>
		</div>
	</div>
</body>
</html>