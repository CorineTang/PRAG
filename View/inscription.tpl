<div> 
	<div  id="dialog-form"  title="Inscription">
		<fieldset>
			<form method="post" id="inscription" action= "index.php?control=user&action=inscription" enctype="multipart/form-data">
				<label for="Nom">Nom</label>
				<input type="text" name="Nom" value="Nom de l'interne"><br>
				<label for="Prenom">Prenom</label>
				<input type="text" name="Pr�nom" value="Pr�nom"><br>
				<label for ="mail">Adresse email </label> 
				<input type="mail" name="Mail" value="Adresse mail"><br>
				<label for="Sexe">Sexe</label>
				<select name="Sexe">
					<option>Femme</option>
					<option>Homme</option>
				</select><br>
				<label for="DateDeNaissance">Date de Naissance</label>
				<input type="date" name="dateNaissance" value="<?php echo $today?>">
				<br>	
				<label for="NiveauEtude">Niveau d'�tude</label>
				<select name="NiveauEtude">
					<option>1�re Ann�e</option>
					<option>2�me Ann�e</option>
				</select>
				<br>
				<label for="Adresse">Adresse</label>
				<input type="text" name="Adresse" value="Adresse">
				<br>
				<label for="CodePostale">Code Postale</label>
				<input type="text" name="CodePostale" value="CodePostale">
				<label for ="Ville">Ville</label> 
				<input type="text" name="Ville" value="Ville"><br>
				<label for="password">Mot de passe</label>
				<input type="password" name="password" placeholder="Tapez votre mot de passe">
				<br>
				<label for="password">V&eacuterificaton du mot de passe</label>
				<input type="password" name="password" placeholder="Tapez votre mot de passe">
				<br>
				<br>
				<input type="submit" value="Inscription" name="Inscription" />
			</form>
		</fieldset>
	</div>
</div>