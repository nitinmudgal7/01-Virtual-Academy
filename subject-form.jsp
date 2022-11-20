

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
				<li><a href="<%=request.getContextPath()%>/list2"
					class="nav-link">Subjects Home</a></li>
			</ul>
		</nav>
	</header>
	<br>
	<div class="container col-md-5">
		<div class="card">
			<div class="card-body">
				<c:if test="${subject != null}">
					<form action="update2" method="post">
				</c:if>
				<c:if test="${subject == null}">
					<form action="insert2" method="post">
				</c:if>

				<caption>
					<h2>
						<c:if test="${subject != null}">
            			Edit Subject
            		</c:if>
						<c:if test="${subject == null}">
            			Add New Subject
            		</c:if>
					</h2>
				</caption>

				<c:if test="${subject != null}">
					<input type="hidden" name="id" value="<c:out value='${subject.id}' />" />
				</c:if>

				<fieldset class="form-group">
					<label>Subject Name:</label> <input type="text"
						value="<c:out value='${subject.name}' />" class="form-control"
						name="name" required="required">
				</fieldset>

				<fieldset class="form-group">
					<label>Class:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label> <input type="text"
						value="<c:out value='${subject.code}' />" class="form-control"
						name="code">
				</fieldset>
				<br />
				<button type="submit" class="btn btn-success">Save</button>
				</form>
			</div>
		</div>
	</div>
</body>
</html>