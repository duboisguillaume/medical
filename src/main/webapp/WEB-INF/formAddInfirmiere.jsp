<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
 <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">
<title>Insert title here</title>
</head>
<body>
	<h1>Ajouter un(e) infirmier(e)</h1>
	
	<form method="POST" action="addInfirmiere">
		<div class="mb-3">
			<label class="form-label">
				Numéro professionnel
				<input type="number" class="form-control" name="numeroProfessionnel">
			</label>
		</div>
		<div class="mb-3">
			<label class="form-label">
				Nom
				<input type="text" class="form-control" name="nom">
			</label>
		</div>
		<div class="mb-3">
			<label class="form-label">
				Prénom
				<input type="text" class="form-control" name="prenom">
			</label>
		</div>
		<div class="mb-3">
			<label class="form-label">
				Téléphone professionnel
				<input type="tel" class="form-control" name="telPro">
			</label>
		</div>
		<div class="mb-3">
			<label class="form-label">
				Téléphone personnel
				<input type="tel" class="form-control" name="telPerso">
			</label>
		</div>
		<div class="mb-3">
			Adresse
			<label class="form-label">
				Numero
				<input type="text" class="form-control" name="numero">
			</label>
			<label class="form-label">
				Rue
				<input type="tel" class="form-control" name="rue">
			</label>
			<label class="form-label">
				Code Postal
				<input type="tel" class="form-control" name="cp">
			</label>
			<label class="form-label">
				Ville
				<input type="tel" class="form-control" name="ville">
			</label>
		</div>
		<div class="col-auto">
    		<button type="submit" class="btn btn-primary mb-3">Envoyer</button>
  		</div>
	</form>
	
	
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-U1DAWAznBHeqEIlVSCgzq+c9gqGAJn5c/t99JyeKa9xxaYpSvHU5awsuZVVFIhvj" crossorigin="anonymous"></script>
</body>
</html>