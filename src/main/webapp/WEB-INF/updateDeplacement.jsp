<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
<title>Modifier un deplacement</title>
</head>
<body>
	<h1>Modifier deplacement </h1>
	
	<form method="POST" action="updateDeplacement">
	<div class= "mb-3 divLab">
	<input value="${deplacement.id}" name="id" type="hidden"/>
		<label> Infirmiere :
				<select class="form-select mySelect" aria-label="Default select example" name="infirmiere_id">
					<option value="${deplacement.infirmiere_id}" >--${deplacement.nomInfirmiere} ${deplacement.prenomInfirmiere}--</option>
					<c:forEach items="${ infirmieres }" var="infirmiere">
							<option value="${infirmiere.id}" >${infirmiere.nom} ${infirmiere.prenom}</option>
					</c:forEach>
				</select>
			</label>
	</div>
	
	<div class= "mb-3 divLab">
		<label> Patient :
				<select class="form-select mySelect" aria-label="Default select example" name="patient_id">
					<option value="${deplacement.patient_id}" >--${deplacement.nomPatient} ${deplacement.prenomPatient}--</option>
					<c:forEach items="${ patients }" var="patient">
							<option value="${patient.id}" >${patient.nom} ${patient.prenom}</option>
					</c:forEach>
				</select>
			</label>
	</div>
		<div class="mb-3 divLab">
		  <label class="form-label">
		  	Cout
		  	<input type="number" class="form-control" value="${deplacement.cout}"  name="cout">
		  </label>
		</div>
		<div class="mb-3 divLab">
		  <label class="form-label">
		  	Date
		  	<input type="date" class="form-control" value="${deplacement.date}"  name="date">
		  </label>
		</div>
		<div class="col-auto">
    		<button type="submit" class="btn btn-primary mb-3 btn-send">Envoyer</button>
  		</div>
	</form>
	
	
	
	
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-U1DAWAznBHeqEIlVSCgzq+c9gqGAJn5c/t99JyeKa9xxaYpSvHU5awsuZVVFIhvj" crossorigin="anonymous"></script>
	
</body>
</html>