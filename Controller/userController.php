
<?php

/*
 * Affiche la page de connexion
 */
function showConnexion () {
	$presentation = "";
	$identifiant = isset($_POST['identifiant'])?$_POST['identifiant']:"";
	$pass = isset($_POST['pass'])?$_POST['pass']:"";

	require ('View/connexion.tpl');
}

/*
 * Affiche la page inscription
 */
function showInscription() {

	require ('Model/filiereModel.php');
	$listFiliere = getFiliere();

	/*var_dump($listFiliere);exit;*/

	require ('View/inscription.tpl');
}

function showProfil() {
	if (isset($_SESSION['utilisateur'])) {
		require ('View/formProfil.tpl');	
	}
}

function showAccueilConnect() {
	require ('View/pageAccueilConnect.tpl');	
}

/*
 * Affiche la page de recuperation de mot de passe
 */
function recuperation() {
	$identifiant = isset($_POST['identifiant'])?$_POST['identifiant']:"";
	require ('View/recuperation.tpl');
}

/*
 * Envoie les donnees de connexion au serveur
 */
function connexion () {
	//Récupération des variables saisies dans le formulaire-----------------------------
	$identifiant = isset($_POST['identifiant'])?$_POST['identifiant']:"";
	$pass = isset($_POST['pass'])?$_POST['pass']:"";

	require ('Model/userModel.php');

	//Controle des infos saisies--------------------------------------------------
	if (isset($_POST['Connexion'])){
		$hash_pass = bcrypt_hass_password($pass);
		if (authentification($identifiant,$hash_pass)) {
			header("Location: index.php");
		}
		else {
			header("Location: index.php");
		}
	}
}

/*
 * Envoie les donnees inscription au model
 */
function inscription() {
	$nom                   = isset($_POST['Nom'])?$_POST['Nom']:"";
	$Prenom                = isset($_POST['Prenom'])?$_POST['Prenom']:"";
	$NbSemestre            = isset($_POST['NbSemestre'])?$_POST['NbSemestre']:"";
	$Mail                  = isset($_POST['Mail'])?$_POST['Mail']:"";
	$Password              = isset($_POST['Password'])?$_POST['Password']:"";
	$ValidationPassword    = isset($_POST['ValidationPassword'])?$_POST['ValidationPassword']:"";
	$Telephone             = isset($_POST['Telephone'])?$_POST['Telephone']:"";
	//$Filiere               = isset($_POST['Filiere'])?$_POST['Filiere']:"";
 	$Filiere = 1;
	$dateDeNaissance_user  = isset($_POST['Ddn'])?$_POST['Ddn']:"";

    // Hashage du mots de passe
    $Password = bcrypt_hass_password($Password);
	
    require ('Model/userModel.php');

	if (ajout($nom, $Prenom, $Password, $NbSemestre, $dateDeNaissance_user, $Mail, $Telephone,$Filiere)) {
		echo "<div class=\"alert alert-success\" role=\"alert\">Votre inscription a bien été prise en compte</div>";
		header('Location: index.php');
	}
	else{
		echo "<div class=\"alert alert-danger\" role=\"alert\">Une erreur a empêché votre inscription</div>";
		header('Location: index.php');	
	}

}

   /*---------------------------------------------------------------
   *
  *     FONCTION DE HASHAGE
 *---------------------------------------------------------------
*/
// Fonction de hashage de mot de passe avec l'algo Blowfish
function bcrypt_hass_password($value, $options = array()){
    // $cost = isset($options['rounds']) ? $options['rounds'] : 10;
    // $hash = password_hash($value, PASSWORD_BCRYPT, array('cost' => $cost));
    // if ($hash === false) {
    //     throw new Exception("Bcrypt hashing n'est pas supporte.");
    // }
    // return $hash;

    return $value;
}

// Verifie le mot de pass
function bcrypt_verify_password($value, $hashedValue){
    return password_verify($value,$hashedValue);
}


function profil() {
	$nom                   = isset($_POST['Nom'])?$_POST['Nom']:"";
	$Prenom                = isset($_POST['Prenom'])?$_POST['Prenom']:"";
	$NbSemestre            = isset($_POST['NbSemestre'])?$_POST['NbSemestre']:"";
	$Mail                  = isset($_POST['Mail'])?$_POST['Mail']:"";
	$OldPassword		   = isset($_POST['OldPassword'])?$_POST['OldPassword']:"";
	$NewPassword           = isset($_POST['Password'])?$_POST['Password']:"";
	$ValidationPassword    = isset($_POST['ValidationPassword'])?$_POST['ValidationPassword']:"";
	$Telephone             = isset($_POST['Telephone'])?$_POST['Telephone']:"";
	$filiere 			   = isset($_POST['Filiere'])?$_POST['Filiere']:"";
	$dateDeNaissance_user  = isset($_POST['Ddn'])?$_POST['Ddn']:"";
	$groupe_user           = isset($_POST['Groupe'])?$_POST['Groupe']:"";

	require ('Model/userModel.php');
    
	if ($NewPassword != "" && $OldPassword != "") {
		change($OldPassword, $NewPassword, $ValidationPassword);
	}

	update_user($_SESSION["user"][0]["id_user"], $nom, $Prenom, $dateDeNaissance_user, $NbSemestre, $Mail, $Telephone, $filiere);

	

}

function showUsers() {
	require ('Model/userModel.php');
	$jsonUsers = getAllUsers();
	require ('View/gestionUsers.tpl');
} 

function deconnexion() {
   session_destroy();
   header("Location: index.php");
}

function showAnswers() {
    require ('View/gestionAnswers.tpl');
}
?>
