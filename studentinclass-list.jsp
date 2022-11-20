<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<html>
<head>
<title>Detailed Reports</title>
</head>
<body style="background-color:#AFE1AF;">

	<header>
		<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: #5F8575">
			
			<ul class="navbar-nav">
			<li><a href="index.jsp" class="btn btn-success">Home </a></li>

			</ul>
		</nav>
	</header>
	<sql:setDataSource 
    var="database" 
    driver="com.mysql.cj.jdbc.Driver"
     url="jdbc:mysql://localhost:3306/signup?allowPublicKeyRetrieval=true&useSSL=false"
     user="root"
     password="root"
     />
	
	<div class="row">
		<!-- <div class="alert alert-success" *ngIf='message'>{{message}}</div> -->

		<div class="container">
			<h3 class="text-center">Generate Class-wise Detailed Reports</h3>
			<hr>
			<br>

<form action="thereport.jsp" method="get">
<table>
	 
    <sql:query var="rs" dataSource="${database}">
         SELECT * FROM class_info;
    </sql:query>    
    
    <tr>
        Pick a class from dropdown :    
        <select name = "class_sec">
             <c:forEach var="class_info" items="${rs.rows}">
                 <option> <c:out value="${class_info.class_sec}"/> </option>
             </c:forEach>
        </select>
    </tr>

</table>
<br>
<input type="submit" value="submit" />
<input type="hidden" name="class_section" value="${class_sec}" />  
</form>
			
		</div>
	</div>
</body>
</html>

