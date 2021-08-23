<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ajouter un patient</title>
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
<link rel="stylesheet" href="./css/formAddPatient.css"
	type="text/css">
</head>
<body>
	<h1>Ajouter un patient</h1>

	<form method="post" action="addPatient">
		<div class="mb-3 divLab">
			<label> Nom : <input type="text" class="form-control" name="nom" value="">
			</label>
		</div>
		<div class="mb-3 divLab">
			<label> Prenom : <input type="text" class="form-control" name="prenom">
			</label>
		</div>

		<div class="mb-3 divLab">
			<label> Date de naissance : <input type="date"
				class="form-control" name="dateDeNaissance">
			</label>
		</div>

		<div class="mb-3 divLab">
			<label> Sexe : <select class="form-select mySelect"
				aria-label="Default select example" name="sexe">
					<option selected>vous etes :</option>
					<option value="1">Un homme</option>
					<option value="2">Une femme</option>
			</select>
			</label>
		</div>

		<div class="mb-3 divLab">
			<label> Numero de Securite Sociale : <input type="number"
				class="form-control" name="numeroSecuriteSociale">
			</label>
		</div>


		<div class="mb-3 formAdresse divLab">
			<p class="adresse">Adresse</p>

			<label class="form-label"> Numero <input type="text"
				class="form-control" name="numero">
			</label> <label class="form-label"> Rue <input type="tel"
				class="form-control" name="rue">
			</label> <label class="form-label"> Code Postal <input type="tel"
				class="form-control" name="cp">
			</label> <label class="form-label"> Ville <input type="tel"
				class="form-control" name="ville">
			</label>
		</div>

		<div class="mb-3 divLab">
			<label> Nom de l'infirmiere : <select class="form-select mySelect"
				aria-label="Default select example" name="nameInfirmiere">
					<c:forEach items="${ infirmieres }" var="infirmiere">
						<option selected value="${infirmiere.id}" class="form-control" name="infirmiere_id">${infirmiere.nom}</option>
					</c:forEach>
			</select>
			</label>



		</div>

		<button type="submit" class="btn btn-primary mb-3 btn-send">Envoyer</button>

	</form>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-U1DAWAznBHeqEIlVSCgzq+c9gqGAJn5c/t99JyeKa9xxaYpSvHU5awsuZVVFIhvj"
		crossorigin="anonymous"></script>
</body>
</html>