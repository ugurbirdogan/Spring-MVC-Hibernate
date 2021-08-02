<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
<title>Student</title>
</head>
<body>

<div class="container">
<div class="jumbotron">
  <h1>Welcome to Student System!</h1>
  <p><a class="btn btn-primary btn-lg" onclick="window.location.href='showStudentForm'; return false;" type="button" role="button">Add Student</a></p>
</div>	
	<div>
		<table class="table table-striped">
			<tr>
				<th>First Name</th>
				<th>Last Name</th>
				<th>Email Address</th>
				<th>Update/Delete</th>
			</tr>
			
			<c:forEach var="tempStudent" items="${student}">
			
				<tr>
					<td>${tempStudent.firstName}</td>
					<td>${tempStudent.lastName}</td>
					<td>${tempStudent.email}</td>
					<td>
				   	 	<a class="btn btn-warning" href= "${pageContext.request.contextPath}/student/showFormForUpdate?studentId=${tempStudent.id}">Update</a> 
						<a class="btn btn-danger" href= "${pageContext.request.contextPath}/student/deleteStudent?studentId=${tempStudent.id}"
						 onclick="if(!(confirm('Are you sure you want to delete this student ?'))) return false;">Delete</a> 
					</td>
				</tr>
			</c:forEach>
		</table>
	</div>

</div>
	

</body>
</html>