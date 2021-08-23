<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
 <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"
/>
 
<title>Modifier une infirmiere</title>
<link rel="stylesheet" href="./css/formUpdateInfirmiere.css" type="text/css">
</head>
<body>
	<h1 class="animate__animated animate__fadeInRightBig">Modifier l'infirmiere ${infirmiere.nom} ${infirmiere.prenom} </h1>
	
	<form method="POST" action="updateInfirmiere">
		<div class="mb-3 divLab">
			<input value="${infirmiere.id}" name="id" hidden/>
		  <label class="form-label">
		  	Nom 
		  	<input type="text" class="form-control" value="${infirmiere.nom}" name="nom">
		  </label>
		</div>
		<div class="mb-3 divLab">
		  <label class="form-label">
		  	Pr�nom
		  	<input type="text" class="form-control" value="${infirmiere.prenom}" name="prenom">
		  </label>
		</div>
		<div class="mb-3 divLab">
		  <label class="form-label">
		  	Num�ro Professionnel
		  	<input type="number" class="form-control" value="${infirmiere.numeroProfessionnel}" name="numeroProfessionnel">
		  </label>
		</div>
		<div class="mb-3 divLab">
		  <label class="form-label">
		  	T�l�phone Perso
		  	<input type="number" class="form-control" value="${infirmiere.telPerso}"  name="telPerso">
		  </label>
		</div>
		<div class="mb-3 divLab">
		  <label class="form-label">
		  	T�l�phone Pro
		  	<input type="number" class="form-control" value="${infirmiere.telPro}"  name="telPro">
		  </label>
		</div>
		
			<h4>Adresse</h4>
			<div class="mb-3 divLab"> 
				<label class="form-label">
			  	Numero
			  	</label>
			  	<input type="text" class="form-control" value="${infirmiere.numero }" name="numero">
			</div>
		  
		  <div class="mb-3 divLab">
			  <label class="form-label">
			  	Rue
			  	<input type="text" class="form-control" value="${infirmiere.rue }" name="rue">
			  </label>
		  </div>
		  
		  <div class="mb-3 divLab">
			  <label class="form-label">
			  	Code Postal
			  	<input type="number" class="form-control" value="${infirmiere.cp }" name="cp">
			  </label>
		  </div>
		  
		  <div class="mb-3 divLab">
			   <label class="form-label">
			  	Ville
			  	<input type="text" class="form-control" value="${infirmiere.ville }" name="ville">
			  </label>
		  </div>
		
		<div class="col-auto">
    		<button type="submit" class="btn btn-primary mb-3">Envoyer</button>
  		</div>
	</form>
	
	
	
	
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-U1DAWAznBHeqEIlVSCgzq+c9gqGAJn5c/t99JyeKa9xxaYpSvHU5awsuZVVFIhvj" crossorigin="anonymous"></script>
	
</body>
</html>