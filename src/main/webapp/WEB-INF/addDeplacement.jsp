<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width,initial-scale=1.0">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">
<link href="https://use.fontawesome.com/releases/v5.14.0/css/all.css"
	rel="stylesheet">
<link rel="stylesheet" href="./css/formAddDeplacement.css" type="text/css">
<title>Ajouter un d�placement</title>

</head>
<body>
	<h1>Ajouter un d�placement</h1>
	
	<form method="post" action="addDeplacement">		
		<div class= "mb-3 divLab">
			<label> Patient :
				<select class="form-select mySelect" aria-label="Default select example" name="idPatient">
					<c:forEach items="${ patients }" var="patient">
							<option selected value="${patient.id}" name="patient.id" >${patient.nom} ${patient.prenom}</option>
					</c:forEach>
				</select>
			</label>
		</div>
		
		<div class="mb-3 divLab">
			<label>
				Date 
		  		<input type="date" class="form-control" name="date">
			</label>
		</div>
		
		<div class="mb-3 divLab">
			<label>
				Prix 
		  		<input type="number" class="form-control" name="cout">
			</label>
		</div>
		
		<div class= "mb-3 divLab">
			<label> Infirmiere :
				<select class="form-select mySelect" aria-label="Default select example" name="idInfirmiere">
					<c:forEach items="${ infirmieres }" var="infirmiere">
							<option selected value="${infirmiere.id}" name="infirmiere.id" >${infirmiere.nom} ${infirmiere.prenom}</option>
					</c:forEach>
				</select>
			</label>
			
					
			
		</div>
		
		<button type="submit" class="btn btn-primary mb-3 btn-send">Envoyer</button>
		
	</form>
	
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-U1DAWAznBHeqEIlVSCgzq+c9gqGAJn5c/t99JyeKa9xxaYpSvHU5awsuZVVFIhvj" crossorigin="anonymous"></script>
</body>
</html>