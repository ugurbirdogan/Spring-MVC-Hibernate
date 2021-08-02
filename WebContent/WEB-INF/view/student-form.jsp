<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
<title>Student</title>
</head>
<body>

	<div class="cotainer">
		<div class="jumbotron">
			<h1>Add New Student</h1>
			
		</div> 
		
		<div>
			
			<form:form class="form-horizantal" modelAttribute="student" action="saveStudent" method="POST">
				<form:hidden path="id" />
			
				<div class="form-group">
					<label for="name" class="col-sm-10 control-label">Student Name :</label>
					<div>
						<form:input type="text" class="form-control" id="firstName" placeholder="firstName" path="firstName" required="required"></form:input>
					</div>
				</div>
				
				<div class="form-group">
					<label for="name" class="col-sm-10 control-label">Student Surname :</label>
					<div>
						<form:input type="text" class="form-control" id="lastName" placeholder="LastName" path="lastName" required="required"></form:input>
					</div>
				</div>
				
				<div class="form-group">
					<label for="name" class="col-sm-10 control-label">Student Email :</label>
					<div>
						<form:input type="text" class="form-control" id="email" placeholder="Email" path="email" required="required" ></form:input>
					</div>
				</div>
				
				<div class="form-group">
					<div class="col-sm-2">
						<button type="submit" class="btn btn-primary" >Save</button>
					</div>
				</div>
				
			
			
			</form:form>
		
		
		</div>
		<br>
		<p>
		<a href="${pageContext.request.contextPath}/student/list">Back to the student list</a>
		</p>
	
	</div>

</body>
</html>