<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Save Customer</title>
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
	integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
	crossorigin="anonymous">
</head>
<body>
	<div class="container">

		<h3>Student Managementr</h3>
		<hr>

		<p class="h4 mb-4">Save Student</p>

		<form:form action="saveStudent" modelAttribute="student" method="POST">
		
			<form:hidden path="id" />

			<div class="form-group">
				<label>Name:</label>
				<form:input class="form-control mb-4 col-4" path="name" />
			</div>

			<div class="form-group">
				<label>Department:</label>
				<form:input class="form-control mb-4 col-4" path="department" />
			</div>

			<div class="form-group">
				<label>Country:</label>
				<form:input class="form-control mb-4 col-4" path="country" />
			</div>

			<input type="submit" value="Save" class="btn btn-info col-2" />

		</form:form>

		<hr>
		<a href="/StudementManagementLab5/student/list">Back to List</a>

	</div>
</body>
</html>