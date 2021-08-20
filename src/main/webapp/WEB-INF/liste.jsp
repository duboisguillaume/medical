<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
 <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">


<title>Insert title here</title>
</head>
<body>
	<h1>Listes</h1>
	
	<div class="container">
		<h2>Les patients</h2>	
		<table class="table">
			<tr>
				<th scope="row"> nom </th>
				<th scope="row"> prenom </th>
				<th scope="row"> </th>
				<th scope="row"> </th>
			</tr>
			<c:forEach items="${ patients }" var="patient">
			<tr>
				<td> ${ patient.nom } </td>
				<td> ${ patient.prenom } </td>
				<td> <a href="updatePatient?id=${patient.id}" class="btn btn-success btn-sm"><i class="bi bi-arrow-clockwise"></i></a>
				<td> <a href="deletePatient?id=${patient.id}" class="btn btn-danger btn-sm"> X </a> </td>
			
			</tr>
			</c:forEach>
		</table>
	</div>
	
	<div class="container">
		<h2>Les infirmières</h2>
		<table class="table">
			<tr>
				<th scope="row"> nom </th>
				<th scope="row"> prenom </th>
				<th scope="row"> </th>
				<th scope="row"> </th>
			</tr>
			<c:forEach items="${ infirmieres }" var="infirmiere">
			<tr>
				<td> ${ infirmiere.nom } </td>
				<td> ${ infirmiere.prenom } </td>
				<td> <a href="updateInfirmiere?id=${infirmiere.id}" class="btn btn-success btn-sm"><i class="bi bi-arrow-clockwise"></i></a>
				<td> <a href="deleteInfirmiere?id=${infirmiere.id}" class="btn btn-danger btn-sm"> X </a> </td>
			
			</tr>
			</c:forEach>
		</table>
	</div>
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-U1DAWAznBHeqEIlVSCgzq+c9gqGAJn5c/t99JyeKa9xxaYpSvHU5awsuZVVFIhvj" crossorigin="anonymous"></script>
</body>
</html>