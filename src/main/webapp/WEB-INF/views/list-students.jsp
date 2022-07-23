<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Management System</title>
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
	integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
	crossorigin="anonymous">
</head>
<body>

	<div class="container">

		<h3>Student Management System</h3>
		<hr>
		
			<!-- Add a button -->
			<input 
				type="button"
				value="Add Student"
				class="btn btn-primary btn-sm mb-3"
				onclick="window.location.href='showFormForAdd'; return false;"
			> 

		<table class="table table-bordered table-striped">
			<thead class="thead-dark">
				<tr>
					<th>Student Id</th>
					<th>Name</th>
					<th>Department</th>
					<th>Country</th>
					<th>Action</th>
				</tr>
			</thead>

			<tbody>
				<c:forEach items="${students}" var="tempStudent">
					<c:url var="updateLink" value="/student/showFormForUpdate">
						<c:param name="studentId" value="${tempStudent.id}" />
					</c:url>
					
					<c:url var="deleteLink" value="/student/delete">
						<c:param name="studentId" value="${tempStudent.id}" />
					</c:url>
					
					<tr>
						<td><c:out value="${tempStudent.id}" /></td>
						<td><c:out value="${tempStudent.name}" /></td>
						<td><c:out value="${tempStudent.department}" /></td>
						<td><c:out value="${tempStudent.country}" /></td>
						<td>
							<a 
								href="${updateLink}" 
								class="btn btn-info btn-sm"
							> 
								Update 
							</a> 
							<a 
								href="${deleteLink}" 
								class="btn btn-danger btn-sm"
								onclick="if (!(confirm('Are you sure you want to delete this Student?'))) return false"
							>
								Delete 
							</a>

						</td>

					</tr>
				</c:forEach>

			</tbody>
		</table>

	</div>

</body>
</html>