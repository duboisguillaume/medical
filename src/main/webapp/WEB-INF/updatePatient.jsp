<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
 <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">
<title>Modifier un patient</title>
</head>
<body>
	<h1>Modifier le patient ${patient.nom} ${patient.prenom} </h1>
	
	<form method="POST" action="Update">
		<div class="mb-3">
		  <label class="form-label">
		  	Nom 
		  	<input type="text" class="form-control" placeholder="${patient.nom}" name="nom">
		  </label>
		</div>
		<div class="mb-3">
		  <label class="form-label">
		  	Prénom
		  	<input type="text" class="form-control" placeholder="${patient.prenom}" name="prenom">
		  </label>
		</div>
		<div class="mb-3">
		  <label class="form-label">
		  	Sexe
		  	<select name="sexe">
    			<option value="${patient.sexe }">--${patient.sexe }--</option>
		  		<option value="Femme">Femme</option>
		  		<option value="Homme">Homme</option>
		  	</select>
		  </label>
		</div>
		<div class="mb-3">
		  <label class="form-label">
		  	Date de naissance
		  	<input type="date" class="form-control" value="${patient.dateDeNaissance}" name="dateDeNaissance">
		  </label>
		</div>
		<div class="mb-3">
		  <label class="form-label">
		  	Numéro de Sécurité sociale
		  	<input type="number" class="form-control" placeholder="${patient.numeroSecuriteSocial}"  name="numeroSecuriteSocial">
		  </label>
		</div>
		<div class="mb-3">
		  <label class="form-label">
		  	Nom de l'infirmière
		  	<input type="number" class="form-control" placeholder="A mettre !!!!" name="nameInfirmiere">
		  </label>
		</div>
		<div class="mb-3">
		  <label class="form-label">
		  	Adresse de l'infirmière
		  	<input type="number" class="form-control" placeholder="A mettre !!!!" name="adresseInfirmiere">
		  </label>
		</div>
		<div class="col-auto">
    		<button type="submit" class="btn btn-primary mb-3">Envoyer</button>
  		</div>
	</form>
	
	
	
	
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-U1DAWAznBHeqEIlVSCgzq+c9gqGAJn5c/t99JyeKa9xxaYpSvHU5awsuZVVFIhvj" crossorigin="anonymous"></script>
	
</body>
</html>