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
<link rel="stylesheet" href="./css/updatePatient.css" type="text/css">

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"
/>

<title>Modifier un patient</title>
</head>
<body>
	<h1 class="animate__animated animate__fadeInRightBig">Modifier le patient ${patient.nom} ${patient.prenom} </h1>
	
	<form method="POST" action="updatePatient">
		<div class="mb-3 divLab">
			<input value="${patient.id}" name="id" hidden/>
		  <label class="form-label">
		  	Nom 
		  	<input type="text" class="form-control" value="${patient.nom}" name="nom">
		  </label>
		</div>
		<div class="mb-3 divLab">
		  <label class="form-label">
		  	Prénom
		  	<input type="text" class="form-control" value="${patient.prenom}" name="prenom">
		  </label>
		</div>
		<div class="mb-3 divLab">
		  <label class="form-label">
		  	Sexe
		  	<select name="sexe" class="form-select mySelect">
    			<option value="${patient.sexe }">--${patient.sexe }--</option>
		  		<option value="Femme">Femme</option>
		  		<option value="Homme">Homme</option>
		  	</select>
		  </label>
		</div>
		<div class="mb-3 divLab">
		  <label class="form-label">
		  	Date de naissance
		  	<input type="date" class="form-control" value="${patient.dateDeNaissance}" name="dateDeNaissance">
		  </label>
		</div>
		<div class="mb-3 divLab">
		  <label class="form-label">
		  	Numéro de Sécurité sociale
		  	<input type="number" class="form-control" value="${patient.numeroSecuriteSocial}"  name="numeroSecuriteSocial">
		  </label>
		</div>

		<div class= "mb-3 divLab">
			<label> Infirmiere :
				<select class="form-select mySelect" aria-label="Default select example" name="idInfirmiere">
    				<option selected value="${oneInf.nom} ${oneInf.prenom}">--${oneInf.nom} ${oneInf.prenom}--</option>
					<c:forEach items="${ infirmieres }" var="infirmiere">
							<option value="${infirmiere.id}" name="infirmiere.id" >${infirmiere.nom} ${infirmiere.prenom}</option>
					</c:forEach>
				</select>
			</label>

  		</div>
    		<button type="submit" class="btn btn-primary mb-3 btn-send">Envoyer</button>
	</form>
	
	
	
	
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-U1DAWAznBHeqEIlVSCgzq+c9gqGAJn5c/t99JyeKa9xxaYpSvHU5awsuZVVFIhvj" crossorigin="anonymous"></script>
	
</body>
</html>